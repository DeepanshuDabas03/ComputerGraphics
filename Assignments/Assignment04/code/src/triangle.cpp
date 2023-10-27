// triangle.cpp
#include "triangle.h"
bool Triangle::intersect(Ray &r) const
{
    // Utilize barycentric coordinates for ray-triangle test
    // e + td = f(u,v)
    Vector3D e = r.getOrigin();
    Vector3D d = r.getDirection();
    /*
        For a triangle with vertices a, b, and c intersection will occur when
        e + td= a+ beta(b-a) + gamma(c-a) , where beta and gamma are barycentric coordinates
    */
    glm::mat3 A(a[0] - b[0], a[0] - c[0], d[0],
                a[1] - b[1], a[1] - c[1], d[1],
                a[2] - b[2], a[2] - c[2], d[2]);
    /*      _                _
           | xa-xb, xa-xc, xd |
        A= | ya-yb, ya-yc, yd |
           |_za-zb, za-zc, zd_|

               _                _
              | xa-xe, xa-xc, xd |
        beta= | ya-ye, ya-yc, yd |
              |_za-ze, za-zc, zd_|
                -----------------
                       |A|
                _                _
               | xa-xb, xa-xe, xd |
        gamma= | ya-yb, ya-ye, yd |
               |_za-zb, za-ze, zd_|
                 -----------------
                        |A|
               _                   _
              | xa-xb, xa-xc, xa-xe |
          t=  | ya-yb, ya-yc, ya-ye |
              |_za-zb, za-zc, za-ze_|
                 -----------------
                        |A|
    */
    glm::mat3 B(a[0] - e[0], a[0] - c[0], d[0],
                a[1] - e[1], a[1] - c[1], d[1],
                a[2] - e[2], a[2] - c[2], d[2]);
    glm::mat3 C(a[0] - b[0], a[0] - e[0], d[0],
                a[1] - b[1], a[1] - e[1], d[1],
                a[2] - b[2], a[2] - e[2], d[2]);
    glm::mat3 D(a[0] - b[0], a[0] - c[0], a[0] - e[0],
                a[1] - b[1], a[1] - c[1], a[1] - e[1],
                a[2] - b[2], a[2] - c[2], a[2] - e[2]);

    double detA = glm::determinant(A);
    double beta = glm::determinant(B) / detA;
    double gamma = glm::determinant(C) / detA;
    double t = glm::determinant(D) / detA;
    if (beta <= 0 || gamma <= 0 || beta + gamma >= 1)
    {
        /*
            Intersection is inside the triangle iff
            beta> 0, gamma > 0 and beta + gamma < 1
            Otherwise the ray has hit the plane outside the triangle
        */
        return false;

    }
    else
    {
        r.setParameter(t, this);
        Vector3D normal=(crossProduct(a - b, a - c));
        normal.normalize();
        r.setNormal(normal);
        // Update the ray's intersection point and normal
        // calculate the normal of the triangle by taking the cross product of two sides of the triangle
        return true;
    }
}