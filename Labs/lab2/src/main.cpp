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
	float r = 0.5f;
	int numSlices = 15, numSegments = 30;
	int i, j, nxt_i, nxt_j, numvertices = numSegments + 1;
	float u, v;
	float x, y, z;
	float theta, phi;
	std::vector<float> vertex;
	std::vector<unsigned int> idx;
	for (int i = 0; i <= numSlices; i++)
	{
		for (int j = 0; j <= numSegments; j++)
		{
			u = j / (1.0f * numSegments);
			v = i / (1.0f * numSlices);
			theta = 2.0f * glm::pi<float>() * u;
			// 0 ≤ θ < 2π, θ = 2*pi*(j/numSegments)
			phi = glm::pi<float>() * v;
			// 0 ≤ φ ≤ π, φ = pi*(i/numSlices)
			x = r * std::sin(phi) * std::cos(theta);
			y = r * std::sin(phi) * std::sin(theta);
			z = r * std::cos(phi);

			vertex.push_back(x);
			vertex.push_back(y);
			vertex.push_back(z);
		}
	}
	for (i = 0; i < numSlices; i++)
	{
		for (j = 0; j < numSegments; j++)
		{
			nxt_i = i + 1;
			nxt_j = j + 1;

			idx.push_back((i * numvertices) + j);
			idx.push_back((nxt_i * numvertices) + j);
			idx.push_back((i * numvertices) + nxt_j);
			idx.push_back((nxt_i * numvertices) + j);
			idx.push_back((i * numvertices) + nxt_j);
			idx.push_back((nxt_i * numvertices) + nxt_j);
		}
	}

	return new Mesh(vertex.data(), idx.data(), vertex.size() / 3, idx.size());
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
