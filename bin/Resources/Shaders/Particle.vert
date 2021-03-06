#version 330

layout (location = 0) in vec3 Position;
layout (location = 1) in vec2 TexCoord;
layout (location = 2) in vec3 Normal; 

uniform mat4 ProjectionMatrix;
uniform mat4 ModelViewMatrix;

out vec2 TexCoord0;
out vec3 Normal0;
out vec4 WPos0;

void main(void)
{
	gl_Position = ProjectionMatrix * (vec4(Position.x, Position.y, Position.z, 1));
	TexCoord0 = TexCoord;
	Normal0 = (ModelViewMatrix * vec4(Normal, 0.0)).xyz;
	WPos0 = (ModelViewMatrix * vec4(Position, 1.0));
}