#version 120

attribute vec4 a_color;
attribute vec3 a_position;
attribute vec2 a_texCoord0;

varying vec4 v_color;
varying vec2 v_texCoord0;

void main() {
	v_color = a_color;
	v_texCoord0 = a_texCoord0;

	// apply the transformation to the vertices so they get displayed like other objects
	gl_Position =  gl_ModelViewProjectionMatrix * gl_Vertex;
}
