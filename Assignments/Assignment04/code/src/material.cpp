#include "world.h"
#include "material.h"
#include <glm/glm.hpp>
#include <bits/stdc++.h>
Color Material::shade(const Ray &incident, const bool isSolid, int depth = 0) const
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

	if (depth <= 0)
	{
		return Color(0); // Return no color for rays that have reached the maximum recursion depth
	}

	Color reflectionColor(0);
	Color refractionColor(0);

	// Reflection
	if (kr > 0)
	{
		Vector3D reflectionDirection = incident.getDirection() - 2 * dotProduct(normal, incident.getDirection()) * normal;
		reflectionDirection.normalize();
		Ray reflectionRay(incident.getPosition() + normal * 0.01, reflectionDirection);
		reflectionColor = world->shade_ray(reflectionRay, depth - 1);
	}

	// Refraction
	if (kt > 0)
	{
		// Refraction calculations
		// ... (code for refraction calculations)

		Ray refractedRay(incident.getPosition(), refractedDirection);
	}

	// Combine colors: ambient, diffuse, specular, reflection, and refraction
	Color finalColor = ambient + diffuse + specular + reflectionColor + refractionColor;

	return finalColor;
	return ambient + diffuse + specular;
}
