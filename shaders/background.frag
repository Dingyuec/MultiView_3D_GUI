#version 150 core

in vec2 texCoord;

out vec4 fragColor;

uniform sampler2D backgroundTexture;

void main()
{
    vec4 textureColor = texture(backgroundTexture, texCoord);
    fragColor = vec4( textureColor.rgb, 1.0 );
}
