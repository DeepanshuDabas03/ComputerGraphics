#include "world.h"
#include "material.h"
#include <glm/glm.hpp>
#include <bits/stdc++.h>
Color Material::shade(const Ray &incident, const bool isSolid) const
{
	Vector3D normal = unitVector(incident.getNormal());
	// get the normal of the surface
	Vector3D l = incident.getDirection();
	// get the direction of the incident ray
	Vector3D v = l * (-1);
	// get the direction of the view ray
	LightSource *light = world->getLightSourceList()[0];
	Vector3D lightPosition = light->getPosition();
	// get the position of the light source
	Vector3D lightDirection = lightPosition - incident.getPosition();
	lightDirection.normalize();
	// get the direction of the light source from the intersection point
	Color intensity = light->getIntensity();
	// get the intensity of the light source
	Vector3D halfWayVector = (lightDirection + v);
	halfWayVector.normalize();
	// get the half way vector by normalizing the sum of the light direction and the view direction
	Color ambient(0), diffuse(0), specular(0);
	ambient = color * ka * intensity;
	diffuse = color * kd * intensity * glm::max(0.0, dotProduct(normal, lightDirection));
	specular = color * ks * intensity * pow(glm::max(0.0, dotProduct(normal, halfWayVector)), n);
	// initialize the ambient, diffuse and specular color
	Ray shadowRay(incident.getPosition() + lightDirection * 0.01, lightDirection);
	// initialize the shadow ray
	world->firstIntersection(shadowRay);
	if (isSolid)
	{
		if (shadowRay.didHit())
		{
			return ambient;
		}
	}
	return ambient + diffuse + specular;
}

