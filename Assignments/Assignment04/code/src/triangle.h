//Triangle.h
#ifndef _TRIANGLE_H_
#define _TRIANGLE_H_

#include "object.h"
#include "ray.h"
#include "vector3D.h"
#include "color.h"
#include <glm/glm.hpp>

class Triangle : public Object
{
private:
	Vector3D a,b,c;

public:
	Triangle(const Vector3D& p1, const Vector3D& p2,const Vector3D& p3, Material* mat):
		Object(mat)
	{
    
		isSolid = true;
        a=p1;
        b=p2;
        c=p3;
		// initialize the triangle object constructor here with the given points and material
	}
	
	virtual bool intersect(Ray& r) const;
};
#endif