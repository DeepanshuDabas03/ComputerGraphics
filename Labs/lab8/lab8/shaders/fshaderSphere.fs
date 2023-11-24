#version 330 core

in vec3 fVertex;
in vec3 fNormal;

uniform mat4 model_inv;
uniform samplerCube cube_map;
out vec4 fragColor;
float refractive_index = 1.5;
// Refractive index of glass is 1.5
void main(void) { 
    //material color
    //fragColor = vec4(abs(normalize(fVertex)), 1.0);
    vec4 materialColor = 0.4 * vec4(abs((fNormal + 1) / 2), 1.0);

    //reflected color
    vec3 incident = normalize(-fVertex);
    vec4 reflected = model_inv * vec4(reflect(incident, fNormal), 0.0);
    vec4 reflectedColor = texture(cube_map, vec3(reflected));

	//refraction
    vec4 refracted = model_inv * vec4(refract(incident, fNormal, refractive_index), 0.0);
    vec4 refractedColor = texture(cube_map, vec3(refracted));

    float cos_i = dot(fNormal, -incident);
    // n1= 1.0, n2 = refractive_index
    // r0 = ((n1 - n2) / (n1 + n2))^2
    float r0 = (1.0 - refractive_index) / (1.0 + refractive_index);
    r0 = r0 * r0;
    // Schlicks approximation
    float schlick = r0 + (1.0 - r0) * pow((1.0 - cos_i), 5.0);

    //final color
    // fragColor=refractedColor;
    fragColor = schlick * reflectedColor + (1.0 - schlick) * refractedColor;
    
}
