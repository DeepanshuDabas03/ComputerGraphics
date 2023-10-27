// Assignment 03: Lighting and shading

/*References
  Trackball: http://en.wikibooks.org/wiki/OpenGL_Programming/Modern_OpenGL_Tutorial_Arcball
*/

#include "utils.h"

#define GLM_FORCE_RADIANS
#define GLM_ENABLE_EXPERIMENTAL

#include <glm/gtc/type_ptr.hpp>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtx/string_cast.hpp>
#include <bits/stdc++.h>
using namespace std;

// Globals
int screen_width = 640, screen_height = 640;
GLint vModel_uniform, vView_uniform, vProjection_uniform;
GLint vColor_uniform;
glm::mat4 modelT, viewT, projectionT; // The model, view and projection transformations
int numSegments = 30;
int nf = 1800;
// nf = 2 * numSegments * numSegments;

double oldX, oldY, currentX, currentY;
bool isDragging = false;

void createSphereObject(unsigned int &, unsigned int &);

void setupModelTransformation(unsigned int &);
void setupViewTransformation(unsigned int &);
void setupProjectionTransformation(unsigned int &);
glm::vec3 getTrackBallVector(double x, double y);

int main(int, char **)
{
    // Setup window
    GLFWwindow *window = setupWindow(screen_width, screen_height);
    ImGuiIO &io = ImGui::GetIO(); // Create IO object

    ImVec4 clearColor = ImVec4(1.0f, 1.0f, 1.0f, 1.00f);

    unsigned int shaderProgram = createProgram("./shaders/vshader.vs", "./shaders/fshader.fs");

    // Get handle to color variable in shader
    vColor_uniform = glGetUniformLocation(shaderProgram, "vColor");
    if (vColor_uniform == -1)
    {
        // fprintf(stderr, "Could not bind location: vColor\n");
        // exit(0);
    }

    glUseProgram(shaderProgram);
    // Get the uniform locations
    int lightPositionLocation = glGetUniformLocation(shaderProgram, "lightPosition");
    int lightColorLocation = glGetUniformLocation(shaderProgram, "lightColor");
    int lightDirection=glGetUniformLocation(shaderProgram,"lightDir");
    int cutoff=glGetUniformLocation(shaderProgram,"cutoffAngle");
    glm::vec3 direction=glm::vec3(-1.00f,-1.00f,0.00f);
    // Set the light position and color
    glm::vec3 lightPosition = glm::vec3(15.0f, 15.0f, 12.0f); // Set your desired light position
    glm::vec3 lightColor = glm::vec3(0.0f, 1.0f, 0.0f);    // set light color blue for part 1, green for part 2   
    float angle=glm::radians(15.0f); 
    if(lightDirection==-1 || cutoff==-1 || lightPositionLocation==-1)
    {
        cout<<"Could not bind location\point light sourcen";
    }
   
    // Pass the values to the shader
    glUniform3fv(lightDirection,1,glm::value_ptr(direction));
    glUniform1f(cutoff,angle);
    glUniform3fv(lightPositionLocation, 1, glm::value_ptr(lightPosition));
    glUniform3fv(lightColorLocation, 1, glm::value_ptr(lightColor));

    unsigned int VAO;
    glGenVertexArrays(1, &VAO);

    setupModelTransformation(shaderProgram);
    setupViewTransformation(shaderProgram);
    setupProjectionTransformation(shaderProgram);

    createSphereObject(shaderProgram, VAO);

    oldX = oldY = currentX = currentY = 0.0;
    int prevLeftButtonState = GLFW_RELEASE;

    while (!glfwWindowShouldClose(window))
    {
        glfwPollEvents();

        // Get current mouse position
        int leftButtonState = glfwGetMouseButton(window, GLFW_MOUSE_BUTTON_LEFT);
        double x, y;
        glfwGetCursorPos(window, &x, &y);
        if (leftButtonState == GLFW_PRESS && prevLeftButtonState == GLFW_RELEASE)
        {
            isDragging = true;
            currentX = oldX = x;
            currentY = oldY = y;
        }
        else if (leftButtonState == GLFW_PRESS && prevLeftButtonState == GLFW_PRESS)
        {
            currentX = x;
            currentY = y;
        }
        else if (leftButtonState == GLFW_RELEASE && prevLeftButtonState == GLFW_PRESS)
        {
            isDragging = false;
        }

        // Rotate based on mouse drag movement
        prevLeftButtonState = leftButtonState;
        if (isDragging && (currentX != oldX || currentY != oldY))
        {
            glm::vec3 va = getTrackBallVector(oldX, oldY);
            glm::vec3 vb = getTrackBallVector(currentX, currentY);

            float angle = acos(std::min(1.0f, glm::dot(va, vb)));
            glm::vec3 axis_in_camera_coord = glm::cross(va, vb);
            glm::mat3 camera2object = glm::inverse(glm::mat3(viewT * modelT));
            glm::vec3 axis_in_object_coord = camera2object * axis_in_camera_coord;
            modelT = glm::rotate(modelT, angle, axis_in_object_coord);
            glUniformMatrix4fv(vModel_uniform, 1, GL_FALSE, glm::value_ptr(modelT));

            oldX = currentX;
            oldY = currentY;
        }

        // Start the Dear ImGui frame
        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplGlfw_NewFrame();
        ImGui::NewFrame();

        glUseProgram(shaderProgram);

        {
            ImGui::Begin("Information");
            ImGui::Text("%.3f ms/frame (%.1f FPS)", 1000.0f / ImGui::GetIO().Framerate, ImGui::GetIO().Framerate);
            ImGui::End();
        }

        // Rendering
        ImGui::Render();
        int display_w, display_h;
        glfwGetFramebufferSize(window, &display_w, &display_h);
        glViewport(0, 0, display_w, display_h);
        glClearColor(clearColor.x, clearColor.y, clearColor.z, clearColor.w);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

        glBindVertexArray(VAO);

        glUniform3f(vColor_uniform, 0.5, 0.5, 0.5);
        glDrawElements(GL_TRIANGLES, nf * 3, GL_UNSIGNED_INT, nullptr);

        ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());

        glfwSwapBuffers(window);
    }

    // Cleanup
    cleanup(window);

    return 0;
}
void createSphereObject(unsigned int &program, unsigned int &sphere_VAO)
{

    glUseProgram(program);
    int vVertex_attrib = glGetAttribLocation(program, "vVertex");
    if (vVertex_attrib == -1)
    {
        fprintf(stderr, "Could not bind location: vVertex\n");
        exit(0);
    }
    int vNormal_attrib = glGetAttribLocation(program, "vNormal");
    if (vNormal_attrib == -1)
    {
        std::cout << "Could not bind location: vNormal\n";
    }
    glGenVertexArrays(1, &sphere_VAO);
    glBindVertexArray(sphere_VAO);
    float radius = 10.0f;

    int nv = (numSegments + 1) * (numSegments + 1) * 3;
    int idx = (numSegments * numSegments) * 6;
    // parametric resprentation of sphere already implemented in Lab 2, used same idea here
    std::vector<float> vertices;
    std::vector<float> normals;
    std::vector<unsigned int> indices;
    float lengthInv = 1.0f / radius;
    float u, v, x, y, z, nx, ny, nz;
    float theta, phi;
    for (int i = 0; i <= numSegments; i++)
    {
        theta = float(i) / numSegments * M_PI;
        for (int j = 0; j <= numSegments; j++)
        {
            phi = float(j) / numSegments * 2.0f * M_PI;
            u = theta;
            v = phi;
            x = radius * sin(phi) * cos(theta);
            y = radius * sin(phi) * sin(theta);
            z = radius * cos(phi);

            vertices.push_back(x), vertices.push_back(y), vertices.push_back(z);
            if(x!=0)
            normals.push_back(x * lengthInv);
            normals.push_back(y * lengthInv);
            normals.push_back(z * lengthInv);
        }
    }
    int a1, a2, a3, a4;
    for (int i = 0; i < numSegments; ++i)
    {
        for (int j = 0; j < numSegments; ++j)
        {
            a1 = i * (numSegments + 1) + j;
            a2 = a1 + 1;
            a3 = (i + 1) * (numSegments + 1) + j;
            a4 = a3 + 1;
            indices.push_back(a1), indices.push_back(a3), indices.push_back(a2), indices.push_back(a2), indices.push_back(a3), indices.push_back(a4);
        }
    }

    int nVertices = nv;
    // Reference from Lab 2 Mesh setup

    GLuint vertex_VBO;// vertex buffer
    glGenBuffers(1, &vertex_VBO);
    glBindBuffer(GL_ARRAY_BUFFER, vertex_VBO);
    glBufferData(GL_ARRAY_BUFFER, nVertices * sizeof(GLfloat), vertices.data(), GL_STATIC_DRAW);

    GLuint vertex_EBO; // index buffer
    glGenBuffers(1, &vertex_EBO);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, vertex_EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, nf * 3 * sizeof(GLuint), indices.data(), GL_STATIC_DRAW);
    glEnableVertexAttribArray(vVertex_attrib);
    glVertexAttribPointer(vVertex_attrib, 3, GL_FLOAT, GL_FALSE, 0, 0);

    GLuint normal_VBO; // Normal Buffer
    glGenBuffers(1, &normal_VBO);
    glBindBuffer(GL_ARRAY_BUFFER, normal_VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(GLfloat) * normals.size() * 3, normals.data(), GL_STATIC_DRAW);
    glEnableVertexAttribArray(vNormal_attrib);
    glVertexAttribPointer(vNormal_attrib, 3, GL_FLOAT, GL_FALSE, 0, 0);

    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindVertexArray(0);
}

void setupModelTransformation(unsigned int &program)
{
    // Modelling transformations (Model -> World coordinates)
    modelT = glm::translate(glm::mat4(1.0f), glm::vec3(0.0, 0.0, 0.0)); // Model coordinates are the world coordinates

    // Pass on the modelling matrix to the vertex shader
    glUseProgram(program);
    vModel_uniform = glGetUniformLocation(program, "vModel");
    if (vModel_uniform == -1)
    {
        fprintf(stderr, "Could not bind location: vModel\n");
        exit(0);
    }
    glUniformMatrix4fv(vModel_uniform, 1, GL_FALSE, glm::value_ptr(modelT));
}

void setupViewTransformation(unsigned int &program)
{
    // Viewing transformations (World -> Camera coordinates
    // Camera at (0, 0, 100) looking down the negative Z-axis in a right handed coordinate system
    viewT = glm::lookAt(glm::vec3(40.0, -40.0, 40.0), glm::vec3(0.0, 0.0, 0.0), glm::vec3(0.0, 1.0, 0.0));

    // Pass-on the viewing matrix to the vertex shader
    glUseProgram(program);
    vView_uniform = glGetUniformLocation(program, "vView");
    if (vView_uniform == -1)
    {
        fprintf(stderr, "Could not bind location: vView\n");
        exit(0);
    }
    glUniformMatrix4fv(vView_uniform, 1, GL_FALSE, glm::value_ptr(viewT));
}

void setupProjectionTransformation(unsigned int &program)
{
    // Projection transformation
    projectionT = glm::perspective(45.0f, (GLfloat)screen_width / (GLfloat)screen_height, 0.1f, 1000.0f);

    // Pass on the projection matrix to the vertex shader
    glUseProgram(program);
    vProjection_uniform = glGetUniformLocation(program, "vProjection");
    if (vProjection_uniform == -1)
    {
        fprintf(stderr, "Could not bind location: vProjection\n");
        exit(0);
    }
    glUniformMatrix4fv(vProjection_uniform, 1, GL_FALSE, glm::value_ptr(projectionT));
}

glm::vec3 getTrackBallVector(double x, double y)
{
    glm::vec3 p = glm::vec3(2.0 * x / screen_width - 1.0, 2.0 * y / screen_height - 1.0, 0.0); // Normalize to [-1, +1]
    p.y = -p.y;                                                                                // Invert Y since screen coordinate and OpenGL coordinates have different Y directions.

    float mag2 = p.x * p.x + p.y * p.y;
    if (mag2 <= 1.0f)
        p.z = sqrtf(1.0f - mag2);
    else
        p = glm::normalize(p); // Nearest point, close to the sides of the trackball
    return p;
}
