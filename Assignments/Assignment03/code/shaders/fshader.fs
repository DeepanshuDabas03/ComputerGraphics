#version 330 core

out vec4 outColor;

in vec3 viewNormal;
in vec3 fragmentDirection;
in vec3 viewDirection;
in vec3 reflectDirection;
in vec3 lColor;
in vec3 lightDirn;
in float cutoff;
// Material properties
vec3 ks = vec3(1.0, 1.0, 1.0);
vec3 kd = vec3(0.5, 0.6, 0.4);
vec3 ka = vec3(1.0, 1.0, 1.0);
float spec_exp = 32.0;
float angle = acos(dot(-fragmentDirection, normalize(lightDirn)));
float outerCutOff = cutoff + radians(5.0);
vec3 Ia = ka * lColor;

    // Calculate diffuse component
float diff = max(dot(viewNormal, fragmentDirection), 0.0);
vec3 Id = kd * diff * lColor;
vec3 Ls = vec3(1.0, 1.0, 1.0);
    // Calculate specular component
float spec = pow(max(dot(viewDirection, reflectDirection), 0.0), spec_exp);
vec3 Is = ks * spec * Ls;
float f = (outerCutOff - angle) / (outerCutOff - cutoff);
    // Calculate the final color
vec3 fColor = (Ia + Id + Is);
void main(void) {
        if(abs(angle) <= abs(cutoff)) {
                fColor = (Ia + Id + Is);

        } else {
                if(abs(angle) <= abs(outerCutOff)) {
                        fColor = Ia + (Id + Is) * f;
                } else {
                        fColor = vec3(0.0, 0.0, 0.0);

                }
        }
        outColor = vec4(fColor, 1.0);

}
