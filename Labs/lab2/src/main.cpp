#include "utils/utils.hpp"
#include "drawable.hpp"
#include "camera/camera.hpp"
#include "mesh/mesh.hpp"

#define GLM_FORCE_RADIANS
#define GLM_ENABLE_EXPERIMENTAL

#include <glm/gtc/type_ptr.hpp>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtx/string_cast.hpp>

Mesh *createSphereMesh()
{
	// references for functions like glm pi can be found at: https://github.com/g-truc/glm/blob/0.9.9.2/doc/manual.pdf , page 21

	/*
		c=(0,0,0)
		x(φ,θ) = h + r sin(φ) cos(θ)
		y(φ,θ) = k + r sin(φ) sin(θ)
		z(φ,θ) = l + r cos(φ)
		=>  x=rsin(φ)cos(θ)
			y=rsin(φ)sin(θ)
			z=rcos(φ)
	*/
	std::vector<float> vertices;
    std::vector<float> normals;
    std::vector<float> texCoords;
    float radius = 2.0f;
    int sectorCount = 30;
    int stackCount = 30;
    // Bind shader variables

    // Initialize lists to store vertices, normals, and texture coordinates
    

    float sectorStep = 2 * M_PI / sectorCount;
    float stackStep = M_PI / stackCount;
    float sectorAngle, stackAngle;
    float lengthInv = 1.0f / radius;

    for (int i = 0; i <= stackCount; ++i)
    {
        stackAngle = M_PI / 2 - i * stackStep;
        float xy = radius * cosf(stackAngle);
        float z = radius * sinf(stackAngle);

        for (int j = 0; j <= sectorCount; ++j)
        {
            sectorAngle = j * sectorStep;
            float x = xy * cosf(sectorAngle);
            float y = xy * sinf(sectorAngle);
            vertices.push_back(x);
            vertices.push_back(y);
            vertices.push_back(z);

            float nx = x * lengthInv;
            float ny = y * lengthInv;
            float nz = z * lengthInv;
            normals.push_back(nx);
            normals.push_back(ny);
            normals.push_back(nz);

            float s = static_cast<float>(j) / sectorCount;
            float t = static_cast<float>(i) / stackCount;
            texCoords.push_back(s);
            texCoords.push_back(t);
        }
    }

    // Initialize index lists
    std::vector<unsigned int> indices;
    std::vector<int> lineIndices;
    int k1, k2;

    for (int i = 0; i < stackCount; ++i)
    {
        k1 = i * (sectorCount + 1); // Beginning of the current stack
        k2 = k1 + sectorCount + 1;  // Beginning of the next stack

        for (int j = 0; j < sectorCount; ++j, ++k1, ++k2)
        {
            // Add triangles
            indices.push_back(k1);
            indices.push_back(k2);
            indices.push_back(k1 + 1);
            indices.push_back(k1 + 1);
            indices.push_back(k2);
            indices.push_back(k2 + 1);

            // Add line indices
            lineIndices.push_back(k1);
            lineIndices.push_back(k2);

            if (i != 0)
            {
                lineIndices.push_back(k1);
                lineIndices.push_back(k1 + 1);
            }
        }
    }

	return new Mesh(vertices.data(), indices.data(), vertices.size() / 3, indices.size());
}

int main(int, char **)
{
	// Setup window
	GLFWwindow *window = setupWindow(SCREEN_W, SCREEN_H, "Parametric Representations of Surfaces");
	ImGuiIO &io = ImGui::GetIO(); // Create IO

	double last_time = 0;
	double delta_time = 0;

	unsigned int shader_program = createProgram("shaders/vshader.vs", "shaders/fshader.fs");

	Camera *cam = new Camera(glm::vec3(-5.0f, 3.0f, 3.5f), glm::vec3(0.0f, 0.0f, 0.0f), glm::vec3(0.0f, 1.0f, 0.0f),
							 45.0f, 0.1f, 10000.0f, window);

	cam->setProjectionTransformation(shader_program);
	cam->setViewTransformation(shader_program);

	Mesh *mesh = createSphereMesh();
	// Render a sphere using parametric representation.
	//  ParametricMesh *mesh = new ParametricMesh(100);

	glEnable(GL_DEPTH_TEST);
	glEnable(GL_BLEND);
	while (!glfwWindowShouldClose(window))
	{
		// Start the Dear ImGui frame
		ImGui_ImplOpenGL3_NewFrame();
		ImGui_ImplGlfw_NewFrame();
		ImGui::NewFrame();

		double curr_time = static_cast<double>(glfwGetTime());
		delta_time = curr_time - last_time;
		last_time = curr_time;

		if (!io.WantCaptureMouse)
		{
			cam->process_input(window, delta_time);
			cam->setViewTransformation(shader_program);
		}

		// Rendering
		ImGui::Render();
		int display_w, display_h;
		glfwGetFramebufferSize(window, &display_w, &display_h);
		glViewport(0, 0, display_w, display_h);
		glClearColor(WHITE.x, WHITE.y, WHITE.z, WHITE.w);
		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

		mesh->draw(shader_program);

		ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
		glfwSwapBuffers(window);
		glfwPollEvents();
	}

	// Cleanup
	cleanup(window);

	return 0;
}
