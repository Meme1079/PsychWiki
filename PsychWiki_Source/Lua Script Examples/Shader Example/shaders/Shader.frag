vec4 renderBitmap0() {
	return flixel_texture2D(bitmap, uv);
}

float pixelSize = 8.0;
vec4 renderBitmap0Mask() {
	vec2 uv1 = uv * fixedSize;
	
     vec2 modul = mod(uv1, pixelSize);
	vec2 normalizedCord = uv1 - modul;
	
	vec2 uv2 = normalizedCord / fixedSize;
	
	uv2.x += (noise((fragCoord.y / 24.) + (time * 5.)) - .5) * (45. / 1280.);
	uv2.y += (noise((fragCoord.x / 24.) + (time * 3.)) - .5) * (45. / 720.);
	
	return flixel_texture2D(bitmap, uv2);
}

void main() {
	vec4 col0 = renderBitmap0();
	vec4 col0mask = renderBitmap0Mask();
	vec4 col1 = renderBitmap1();
	
	col0mask *= col1.a;
	col0 *= -col0mask.a + 1.;
	
	col1 *= opacity * col0mask.a;
	
	gl_FragColor = (col0 + col0mask) + col1;
}