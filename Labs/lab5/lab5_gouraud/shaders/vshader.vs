#version 330 core

in vec3 vVertex;
in vec3 vNormal;

uniform mat4 vModel;
uniform mat4 vView;
uniform mat4 vProjection;
uniform vec3 lpos_world;
uniform vec3 eye_normal;

out vec3 n;
out vec3 e;
out vec3 l;
out vec3 fColor;
void main() {
	gl_Position = vProjection * vView * vModel * vec4(vVertex, 1.0);
	n = normalize(vNormal);
    l = normalize(lpos_world - vVertex);
    e = eye_normal;

    vec3 Ls = vec3(1.0, 1.0, 1.0);
    vec3 Ld = vec3(0.7, 0.7, 0.7);
    vec3 La = vec3(0.6, 0.3, 0.4);

    vec3 ks = vec3(1.0, 1.0, 1.0);
    vec3 kd = vec3(0.5, 0.6, 0.4);
    vec3 ka = vec3(1.0, 1.0, 1.0);

    float spec_exp = 5;

    //ambient
    vec3 Ia = ka*La;
    // fColor = Ia;

    //diffuse
    vec3 Id = Ld * kd * max(dot(normalize(n), normalize(l)), 0.0);
    // fColor = Id;

    //specular 
    vec3 r = reflect(-l, n);

    vec3 Is = Ls * ks * max(pow(dot(normalize(r), normalize(e)), spec_exp),0.0);
    // fColor = Is;

    // Ambient + Diffuse
    // fColor = Ia+Id;

    // Ambient + Diffuse + Specular
    fColor = Ia+Id+Is;
}