> **Warning**: _Take all the shader functions a grain of salt due to my lack of knowledge on shaders, you can do pull request to correct the description of the function and parameter; help is always appreciated._

# About Shaders
Shaders in computer graphics, are a type of code that is executed on the Graphics Processing Unit (GPU). <ins>Which manipulates the rendered object</ins> with special effects like a `blur`, `distortion`, `higher/lower hue`, etc. _(Blah blah blah you get the point of it)_

There are two types of shader that Psych Engine uses <ins>Vertex shader and Fragment shader</ins>; Vertex shaders manipulate the <ins>attributes of an object's vertices</ins> with the file format `.vert`; Fragment shaders compute an <ins>object's color and other attributes</ins> with the file format `.frag`. These shaders must be relative to `shaders` folder.

I won't devote a full tutorial to discussing the syntax and other stuff. However if you want to learn more, I strongly suggest watching a video like this [one](https://www.youtube.com/watch?v=xZM8UJqN1eY). Or you can "borrow" a shader from [Shader Toy](https://www.shadertoy.com), just remember to link the <ins>original script and give proper credit to the author</ins>.

Example (Frag Shader):
```frag
// Creator: mrlem
// Modified: bbpanzu
// Link: https://www.shadertoy.com/view/lddXWS

// This frag script was modified for compatability

// Add these two (Very Important)
uniform vec2 iResolution;     // viewport resolution (in pixels)
uniform float iTime;          // shader playback time (in seconds)

const float RADIUS  = 200.0;
const float BLUR    = 500.0;
const float SPEED   = 2.0;

void main() { // The "mainImage(out vec4 fragColor, in vec2 fragCoord)" replaced by "void main()"
     vec2 fragCoord = openfl_TextureCoordv * iResolution; // Added this for some reason

     vec2 uv = fragCoord.xy / iResolution.xy;
     vec4 pic = texture2D(bitmap, vec2(uv.x, uv.y));
     // "texture2D" replaced by "texture" for the pixels to be not rendered as black.
     // "iChannel" sampler replaced by "bitmap" sampler
        
     vec2 center = iResolution.xy / 2.0;
     float d = distance(fragCoord.xy, center);
     float intensity = max((d - RADIUS) / (2.0 + BLUR * (1.0 + sin(iTime * SPEED))), 0.0);

     gl_FragColor = vec4(intensity + pic.r, intensity + pic.g, intensity + pic.b, 0.2);
     // "fragColor" replaced by "gl_FragColor"
}
```

***

# Creating/Removing Shader
### initLuaShader(name:String, glslVersion:Int = 120)
Initializes the shader for the object to use.

- `name` - The name of the shader.
- `glslVersion` - An optional parameter, The GLSL shader version; Defualt is `120`.

### setSpriteShader(obj:String, shader:String)
Sets the specified shader for the object to use.

- `obj` - The object tag name to be used.
- `name` - The name of the shader.

### removeSpriteShader(obj:String)
Removes the shader from the object.

- `obj` - The object tag name to be used.

***

# Shader Property Setting
### setShaderInt(obj:String, prop:String, value:Int)
Sets the current shader <ins>`int` number type variable</ins> with a new value.

- `obj` - The object tag name to be used.
- `prop` - The `int` variable to be used.
- `value` - The new value for the `int` variable.

### setShaderFloat(obj:String, prop:String, value:Float)
Sets the current shader <ins>`float` number type variable</ins> with a new value.

- `obj` - The object tag name to be used.
- `prop` - The `float` variable to be used.
- `value` - The new value for the `float` variable.

### setShaderBool(obj:String, prop:String, value:Bool)
Sets the current shader <ins>`boolean` type variable</ins> with a new value.

- `obj` - The object tag name to be used.
- `prop` - The `boolean` variable to be used.
- `value` - The new value for the `boolean` variable.

### setShaderSampler2D(obj:String, prop:String, bitmapdataPath:String)
Sets the current shader <ins>`sampler2D` type variable</ins> with a new value.

- `obj` - The object tag name to be used.
- `prop` - The `sampler2D` variable to be used.
- `value` - The new value for the `sampler2D` variable.

***

### setShaderIntArray(obj:String, prop:String, value:Dynamic)
Sets the current shader <ins>`int` number type array variable</ins> with a new value.

- `obj` - The object tag name to be used.
- `prop` - The `int` array variable to be used.
- `value` - The new value for the `int` array variable.

Reference (Shader Array Syntax):
```frag
// type name[max_length] = {values}; <-- Syntax
// the max_length value is optional, making the max_length value blank will determine the array length for you 
// the first value of an array is '0'
int myIntArray[2] = {1, 2, 3}; 
```

### setShaderFloatArray(obj:String, prop:String, value:Dynamic)
Sets the current shader <ins>`float` number type array variable</ins> with a new value.

- `obj` - The object tag name to be used.
- `prop` - The `float` array variable to be used.
- `value` - The new value for the `float` array variable.

### setShaderBoolArray(obj:String, prop:String, value:Dynamic)
Sets the current shader <ins>`boolean` type array variable</ins> with a new value.

- `obj` - The object tag name to be used.
- `prop` - The `boolean` array variable to be used.
- `value` - The new value for the `boolean` array variable.

***

# Shader Property Getter
### getShaderInt(obj:String, prop:String)
Gets the current shader <ins>`int` number type variable</ins> current value.

- `obj` - The object tag name to be used.
- `prop` - The `int` variable to be used.

### getShaderFloat(obj:String, prop:String)
Gets the current shader <ins>`float` number type variable</ins> current value.

- `obj` - The object tag name to be used.
- `prop` - The `float` variable to be used.

### getShaderBool(obj:String, prop:String)
Gets the current shader <ins>`boolean` type variable</ins> current value.

- `obj` - The object tag name to be used.
- `prop` - The `boolean` variable to be used.

***

### getShaderIntArray(obj:String, prop:String)
Gets the current shader <ins>`int` number type array variable</ins> current value.

- `obj` - The object tag name to be used.
- `prop` - The `int` array variable to be used.

### getShaderFloatArray(obj:String, prop:String)
Gets the current shader <ins>`float` number type array variable</ins> current value.

- `obj` - The object tag name to be used.
- `prop` - The `float` array variable to be used.

### getShaderBoolArray(obj:String, prop:String)
Gets the current shader <ins>`boolean` type array variable</ins> current value.

- `obj` - The object tag name to be used.
- `prop` - The `boolean` array variable to be used.