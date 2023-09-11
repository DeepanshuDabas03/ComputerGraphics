/******************************************************************************
**
*  Copyright (c) 2023 Ojaswa Sharma. All rights reserved.                    *
 *                                                                            *
 *  Author: Ojaswa Sharma                                                     *
 *  E-mail: ojaswa@iiitd.ac.in                                                *
 *                                                                            *
 *  This code is provided solely for the purpose of the CSE 333/533 course    *
 *  at IIIT Delhi. Unauthorized reproduction, distribution, or disclosure     *
 *  of this code, in whole or in part, without the prior written consent of   *
 *  the author is strictly prohibited.                                        *
 *                                                                            *
 *  This code is provided "as is", without warranty of any kind, express      *
 *  or implied, including but not limited to the warranties of                *
 *  merchantability, fitness for a particular purpose, and noninfringement.   *
 *                                                                            *
 ******************************************************************************/

/*
*******************************************************************************
    Student: Deepanshu Dabas
    Roll No: 2021249
    Email: deepanshu21249@iiitd.ac.in
    Date: 31/08/2023
    Course: CSE 333 - Computer Graphics
*******************************************************************************
*/
#include "utils.h"

#define DRAW_CUBIC_BEZIER 1     // Use to switch Linear and Cubic bezier curves
#define SAMPLES_PER_BEZIER 100
// GLobal variables
std::vector<float> controlPoints;
std::vector<float> linearBezier;
std::vector<float> cubicBezier;
int width = 640, height = 640;
bool controlPointsUpdated = false;
bool controlPointsFinished = false;
int selectedControlPoint = -1;

void calculatePiecewiseLinearBezier()
{
    // Since linearBezier is just a polyline, we can just copy the control points and plot.
    // However to show how a piecewise parametric curve needs to be plotted, we sample t and
    // evaluate all linear bezier curves.
    // linearBezier.assign(controlPoints.begin(), controlPoints.end());

    linearBezier.clear();
    int sz = controlPoints.size(); // Contains 3 points/vertex. Ignore Z
    float x[2], y[2];
    float delta_t = 1.0 / (SAMPLES_PER_BEZIER - 1.0);
    float t;
    for (int i = 0; i < (sz - 3); i += 3)
    {
        x[0] = controlPoints[i];
        y[0] = controlPoints[i + 1];
        x[1] = controlPoints[i + 3];
        y[1] = controlPoints[i + 4];
        linearBezier.push_back(x[0]);
        linearBezier.push_back(y[0]);
        linearBezier.push_back(0.0);
        t = 0.0;
        for (float j = 1; j < (SAMPLES_PER_BEZIER - 1); j++)
        {
            t += delta_t;
            linearBezier.push_back(x[0] + t * (x[1] - x[0]));
            linearBezier.push_back(y[0] + t * (y[1] - y[0]));
            linearBezier.push_back(0.0);
        }
        // No need to add the last point for this segment, since it will be added as first point in next.
    }
    // However, add last point of entire piecewise curve here (i.e, the last control point)
    linearBezier.push_back(x[1]);
    linearBezier.push_back(y[1]);
    linearBezier.push_back(0.0);
}
void calculatePiecewiseCubicBezier()
{
    cubicBezier.clear();
    int sz = controlPoints.size();
    float x[4], y[4];
    float delta_t = 1.0 / (1.0 * (SAMPLES_PER_BEZIER - 1));
    float t;
    float px, py;
    for (int i = 0; i < (sz - 3); i += 3)
    {
        x[0] = controlPoints[i];
        y[0] = controlPoints[i + 1];
        x[3] = controlPoints[i + 3];
        y[3] = controlPoints[i + 4];
        cubicBezier.push_back(x[0]);
        cubicBezier.push_back(y[0]);
        cubicBezier.push_back(0.0);
        if (i == 0) // first segment
        { 
            x[1] = (2 * x[0] + x[3]) / 3.0;
            y[1] = (2 * y[0] + y[3]) / 3.0;
            // x0+1/3(x3-x0) is x1 and y0+1/3(y3-y0) is y1
        }
        else
        {
            x[1] = 2 * x[0] - px;
            y[1] = 2 * y[0] - py;
            /* 
             To get C1 continuity, we need the two tangent vectors to be the same magnitude and opposite direction. That is, if p0,p1 ,p2 ,p3 and q0,q1 ,q2 ,q3 are the control points of two cubic Bézier curves, then p3 − p2 = q1 − q0.
             Since q0 is the same as p3, we can write q1 = p3 + p3 − p2. i.e x1 = 2 * x0 - px and y1 = 2 * y0 - py
            */
        }
        x[2] = (x[1] + x[3]) / 2.0;
        y[2] = (y[1] + y[3]) / 2.0;
        // midpoint of x1 and x3 is x2 and y1 and y3 is y2
        px = x[2];
        py = y[2];
        t = 0.0;
        for (float j = 1; j < SAMPLES_PER_BEZIER; j++)
        {
            t += delta_t;
            // Cubic Bezier curve equation => B(t) = (1-t)^3 * P0 + 3t(1-t)^2 * P1 + 3t^2(1-t) * P2 + t^3 * P3
            float bx = x[0] * (1 - t) * (1 - t) * (1 - t) +
                       x[1] * 3 * t * (1 - t) * (1 - t) +
                       x[2] * 3 * t * t * (1 - t) +
                       x[3] * t * t * t;
            float by = y[0] * (1 - t) * (1 - t) * (1 - t) +
                       y[1] * 3 * t * (1 - t) * (1 - t) +
                       y[2] * 3 * t * t * (1 - t) +
                       y[3] * t * t * t;

            cubicBezier.push_back(bx);
            cubicBezier.push_back(by);
            cubicBezier.push_back(0.0);
        }
    }
    cubicBezier.push_back(x[3]);
    cubicBezier.push_back(y[3]);
    cubicBezier.push_back(0.0);
}

int main(int, char *argv[])
{
    GLFWwindow *window = setupWindow(width, height);
    ImGuiIO &io = ImGui::GetIO(); // Create IO object

    ImVec4 clear_color = ImVec4(1.0f, 1.0f, 1.0f, 1.0f);

    unsigned int shaderProgram = createProgram("./shaders/vshader.vs", "./shaders/fshader.fs");
    glUseProgram(shaderProgram);

    // Create VBOs, VAOs
    unsigned int VBO_controlPoints, VBO_linearBezier, VBO_cubicBezier;
    unsigned int VAO_controlPoints, VAO_linearBezier, VAO_cubicBezier;
    glGenBuffers(1, &VBO_controlPoints);
    glGenVertexArrays(1, &VAO_controlPoints);
    glGenBuffers(1, &VBO_linearBezier);
    glGenVertexArrays(1, &VAO_linearBezier);
    glGenBuffers(1, &VBO_cubicBezier);
    glGenVertexArrays(1, &VAO_cubicBezier);

    int button_status = 0;

    // Display loop
    while (!glfwWindowShouldClose(window))
    {
        glfwPollEvents();

        // Start the Dear ImGui frame
        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplGlfw_NewFrame();
        ImGui::NewFrame();

        // Rendering
        showOptionsDialog(controlPoints, io);
        ImGui::Render();

        // Add a new point on mouse click
        float x, y;
        int display_w, display_h;
        glfwGetFramebufferSize(window, &display_w, &display_h);
        glViewport(0, 0, display_w, display_h);
        glClearColor(clear_color.x, clear_color.y, clear_color.z, clear_color.w);
        glClear(GL_COLOR_BUFFER_BIT);

        if (!ImGui::IsAnyItemActive())
        {
            if (ImGui::IsMouseClicked(ImGuiMouseButton_Left))
            {
                x = io.MousePos.x;
                y = io.MousePos.y;
                if (!controlPointsFinished)
                { // Add points
                    addControlPoint(controlPoints, x, y, width, height);
                    controlPointsUpdated = true;
                }
                else
                { // Select point
                    searchNearestControlPoint(x, y);
                }
            }

            if (ImGui::IsMouseDragging(ImGuiMouseButton_Left) && controlPointsFinished)
            { // Edit points
                if (selectedControlPoint >= 0)
                {
                    x = io.MousePos.x;
                    y = io.MousePos.y;
                    editControlPoint(controlPoints, x, y, width, height);
                    controlPointsUpdated = true;
                }
            }

            if (ImGui::IsMouseClicked(ImGuiMouseButton_Right))
            { // Stop adding points
                controlPointsFinished = true;
            }
        }

        if (controlPointsUpdated)
        {
            // Update VAO/VBO for control points (since we added a new point)
            glBindVertexArray(VAO_controlPoints);
            glBindBuffer(GL_ARRAY_BUFFER, VBO_controlPoints);
            glBufferData(GL_ARRAY_BUFFER, controlPoints.size() * sizeof(GLfloat), &controlPoints[0], GL_DYNAMIC_DRAW);
            glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void *)0);
            glEnableVertexAttribArray(0); // Enable first attribute buffer (vertices)

            // Update VAO/VBO for piecewise linear Bezier curve (since we added a new point)
            calculatePiecewiseLinearBezier();
            glBindVertexArray(VAO_linearBezier);
            glBindBuffer(GL_ARRAY_BUFFER, VBO_linearBezier);
            glBufferData(GL_ARRAY_BUFFER, linearBezier.size() * sizeof(GLfloat), &linearBezier[0], GL_DYNAMIC_DRAW);
            glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void *)0);
            glEnableVertexAttribArray(0); // Enable first attribute buffer (vertices)

            // Update VAO/VBO for piecewise cubic Bezier curve
            // Implemented piecewise cubic Bezier curve
            calculatePiecewiseCubicBezier();
            glBindVertexArray(VAO_cubicBezier);
            glBindBuffer(GL_ARRAY_BUFFER, VBO_cubicBezier);
            glBufferData(GL_ARRAY_BUFFER, cubicBezier.size() * sizeof(GLfloat), &cubicBezier[0], GL_DYNAMIC_DRAW);
            glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void *)0);
            glEnableVertexAttribArray(0);
            glBindVertexArray(VAO_controlPoints);
            glBindBuffer(GL_ARRAY_BUFFER, VBO_controlPoints);
            glBufferData(GL_ARRAY_BUFFER, controlPoints.size() * sizeof(GLfloat), &controlPoints[0], GL_DYNAMIC_DRAW);
            glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void *)0);
            glEnableVertexAttribArray(0);

            controlPointsUpdated = false; // Finish all VAO/VBO updates before setting this to false.
        }
        glUseProgram(shaderProgram);
        // Draw control points
        glBindVertexArray(VAO_controlPoints);
        glDrawArrays(GL_POINTS, 0, controlPoints.size() / 3); // Draw points

#if DRAW_CUBIC_BEZIER
        glBindVertexArray(VAO_cubicBezier);// Draw Cubic Bezier
        glDrawArrays(GL_LINE_STRIP, 0, cubicBezier.size() / 3); // Draw lines
#else
        // Draw linear Bezier
        glBindVertexArray(VAO_linearBezier);
        glDrawArrays(GL_LINE_STRIP, 0, linearBezier.size() / 3); // Draw lines
#endif

        glUseProgram(0);
        ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
        glfwSwapBuffers(window);
    }

    // Delete VBO buffers
    glDeleteBuffers(1, &VBO_controlPoints);
    glDeleteBuffers(1, &VBO_linearBezier);
    glDeleteBuffers(1, &VBO_cubicBezier); // added cleanup for cubic bezier
    // Cleanup
    cleanup(window);
    return 0;
}