#version 330 core

in vec3 vVertex;
in vec3 vNormal;

uniform mat4 vModel;
uniform mat4 vView;
uniform mat4 vProjection;

// Uniforms for the light source
uniform vec3 lightPosition;  // The position of the light source
uniform vec3 lightColor;     // The color of the light source
uniform vec3 lightDir;
uniform float cutoffAngle;   // The cutoff angle of the spotlight

out vec3 viewNormal;
out vec3 fragmentDirection;
out vec3 viewDirection;
out vec3 reflectDirection;
out vec3 lColor;
out float cutoff;
out vec3 lightDirn;


void main() {
    vec4 viewPosition = vView * vModel * vec4(vVertex, 1.0);
    viewNormal = normalize(vNormal);
    // Calculate the direction from the vertex to the light source
    fragmentDirection = normalize(lightPosition - vVertex);
    viewDirection=normalize(-viewPosition.xyz);
    reflectDirection = normalize(reflect(-fragmentDirection, viewNormal));
	lColor=lightColor;
    lightDirn=lightDir;
	cutoff=cutoffAngle;
    gl_Position = vProjection * viewPosition;
}