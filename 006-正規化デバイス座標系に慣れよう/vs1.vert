attribute vec3  position;
attribute vec4  color;
attribute float size;
uniform   vec2  mouse;
uniform   vec2  resolution;
varying   vec4  vColor;
void main(){
    vColor = color;

    // このサンプルは実際に講義のなかで改造しながら使います @@@

    float aspect = 1.0 / (resolution.x / resolution.y);
    vec3 p = position * vec3(aspect, 1.0, 1.0);
    gl_Position = vec4(p + vec3(mouse, 0.0), 1.0);
    gl_PointSize = size;
}
