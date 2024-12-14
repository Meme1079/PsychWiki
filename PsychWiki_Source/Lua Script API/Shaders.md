# About
Shaders in computer graphics, is a user-defined computer program that is designed to run on the Graphics Processing Unit (GPU). It calculates the shade of the rendered object such as, the amount of lighting, color and texture. This allows for a variety of complex visual special effects like, blur, disortion, bloom, and psychedelic effects

Psych Engine has added the support of shader since version since <kbd>0.6.3</kbd> version. It uses OpenGL Shading Language (GLSL), a high-level programming language to code shaders from. Its syntax is entirely similair to the C programming language.

Since shaders are really hard to learn, especially it requires math mostly vectors, matrices, and trigonometry. And I won't devote a full detailed explantaion about shaders, but I'll only do the more basic ones. You can learn more detailed explantaion about shaders. You can either read at [GPU Shader Tutorial](https://shader-tutorial.dev/) or if you're don't feel like reading at the moment. You can watch this detailed [video](https://www.youtube.com/watch?v=xZM8UJqN1eY) on youtube by Wael Yasmina.

But if you're feeling really lazy, cuz of math stuff. You can browse a bunch of shaders at [Shader Toy](https://www.shadertoy.com). And another thing to remember, please actually link the original shader and actual give proper credit to the orgianl author. You might cause some legal issues, but mostly it's a real dick move if you did that.

## Types
There are many different types of shaders that are commonly used for rendering. With each type manipulating and calculating certain properties of said rendered object. Psych Engine only supports two types of shaders, which are fragment shaders and vertex shaders respectively.

### Fragment
Fragment shaders (also called pixel shaders) computes the colors including the alpha channel (RGBA), z-depth, depth, distance, and fragments of the rendered object. A fragment refers to a data necessary to generate a single pixel's worth of a drawing primitive in the frame buffer. Uses the file format `frag` to define fragment shader files.

### Vertex
Vertext shaders computes and manipulates the attributes of the rendered object's individual vertices. The attributes include the position, texture, coordinates, and color of the vertices. Uses the file format `vert` to define vertex shader files.
***

# Configuration
## Setting Up
Every shader are always stored within its dedicated folder, inside the `shaders` folder. Either within locally in a custom mods folder directory, or globally in the `mods` folder directory. In any case it will still work as usual, but it's still recommended to store it locally in a custom mods for organization, obviously.

## Content
### Header
In every header section within the GLSL shader should contain this cunk of code below. This code will port the given shader from Shader Toy into Psych Engine. From changing pre-existing variable's value to its HaxeFlixel equivalent and defining macros by replacing existing characters with a new one. To not cause any issues or errors from happening when using shaders.

```glsl
#pragma header

vec2 uv = openfl_TextureCoordv.xy;
vec2 fragCoord   = openfl_TextureCoordv * openfl_TextureSize; // coordinates (in pixels)
vec2 iResolution = openfl_TextureSize;                        // viewport resolution (in pixels)
uniform float iTime;                                          // shader playback time (in seconds)

#define texture flixel_texture2D
#define fragColor gl_FragColor
#define mainImage main
#define iChannel0 bitmap
```

In practically every header section, on the first line of code, it must have a pragma directive. It is a language construct, a syntactically allowable part of a program. It allows the compiler to be modified by allowing additional information and changing its rules on compilation. There are many types of pragma directives, but it always employs the use of `#pragma header` (pragma header directive).

It basically just defines the shader; without the pragma header directive it invokes an error, that's my hypothesis on this. Because there's little or none information I can find on this.

```glsl
#pragma header
```

### Main
In every main section within the GLSL shader must have no paramaters within itself. This is becuase both parameters are only used in Shader Toy for the given images. In order to generate the procedural images by computing a color for each pixel. Both the `fragCoord` parameter contains the coordinates of the pixel for which the shader must calculate a color. And the `fragColor` is the resulting color is gathered as a four component vector.

Additionally the parameter `fragColor` is already declared at the header section. So it will be confilicted with the parameter within the main function. If both of them exist at the same time.

```glsl
void mainImage( out vec4 fragColor, in vec2 fragCoord ) {
     // awesome code
}
```

```glsl
void mainImage() {
     // even more awesome code
}
```

## Applying Shaders
Applying shaders to an object, usually a sprite within the game is the most simple part. Firstly, it must be always be initiated by utilizing the obviouse `initLuaShader()` function. Self-explanatory, initiates and loads the shader from inside the `shaders` folder directory. Checking if the said shader file even exist or not.

Now that the shader has been initiated within the game. You can now set the given object to the shader you want to render on. By utilizing the `setSpriteShader()` function.

Example:
```lua
initLuaShader('invert')                    -- initializes and loads the invert shader

makeLuaSprite('sample_object', nil, 0, 0)
makeGraphic('sample_object', 100, 100, 'ff0000')
setObjectSprite('sample_object', 'camHUD')
setSpriteShader('sample_object', 'invert') -- sets the invert shader to the 'sample_object' 
addLuaSprite('sample_object')
```

***

# GLSL Shader Language
## Uniform Variables
Uniform variables is the global variable equilevant to Lua, they are define with the `uniform` keyword. Right after the specified type given to that variable to inherit. They must be always declared at the global scope, outside the main function within the shader. And must no values assign to them, no matter what.

They main functionality is to act as "parameters" for other scripts. To pass a designated value to the given uniform variable. And can be change in any time through out the program. You set their values by utilizing one of the shader uniform functions corresponding types. For instance, if the uniform boolean variable obviously then use the `setShaderBool()` function.

Example:
> At top example are the uniform variable declared but without any values inherited. And at the bottom are shader uniform functions setting their valuesm, each corresponding type of uniform variables.
```glsl
uniform int   timer;
uniform float duration;
uniform bool  hasStarted;
```
```lua
setShaderInt('sample_object', 'timer', 32)
setShaderFloat('sample_object', 'duration', 15.0)
setShaderBool('sample_object', 'hasStarted', false)
```

Vector types are another variables from shader it can set values to. Vectors are used to specify the uniform motion for computer graphics and animation, and what not. Additionally they're also containers for types such as floating-point, integers, and boolean. And can have $2$, $3$, and $4$ dimensions to utilize for rendering stuff.

Example:
> Basically the same as last example but in vectors.
```glsl
uniform vec2 textureButIn2D;
uniform vec3 textureButIn3D;
uniform vec4 textureButIn4D;
```
```lua
setShaderIntArray('sample_object', 'textureButIn2D', {2, 1})                      -- 2-dimensions
setShaderFloatArray('sample_object', 'textureButIn3D', {3.0, 2.0, 1.0})           -- 3-dimensions
setShaderBoolArray('sample_object', 'textureButIn4D', {true, true, false, false}) -- 4-dimensions
```

***

# Shader Functions 
### initLuaShader(shader:String):Void
Initiates and loads the given shader to the game, for the objects to render with.

- `shader` - The given shader load within the game; starts within the `shaders` folder directory.

Example:
> Self-explanatory; initiates and loads the invert shader.
```lua
initLuaShader('invert')
```

### setSpriteShader(obj:String, shader:String):Void
Sets the specified object, mostly a sprite with the shader to be rendered with.

- `obj` - The object name tag to set the shader to.
- `shader` - The given loaded shader to use within the game.

Example:
> Sets the said object to the given shader.
```lua
setSpriteShader('sample_object', 'invert')
```

### removeSpriteShader(obj:String):Void
Removes the given shader to that object, mostly a sprite to stop rendering from.

- `obj` - The object tag name to remove the rendered shader.

Example:
> Removes the given shader from the object.
```lua
removeSpriteShader('sample_object')
```

***

# Shader Uniform Functions
## Setters
### setShaderInt(obj:String, uniform:String, value:Int):Void
Sets the <ins>specified uniform **integer type** variable</ins> within the shader, a new value.

- `obj` - The object tag name rendered from a shader to be used.
- `uniform` - The specified uniform integer type variable to set a new value to.
- `value` - The new integer value to set to.

Example:
> Sets the uniform integer variable `timer` to the value `32`.
```lua
setShaderInt('sample_object', 'timer', 32)
```

### setShaderFloat(obj:String, uniform:String, value:Float):Void
Sets the <ins>specified uniform **floating-point type** variable</ins> within the shader, a new value.

- `obj` - The object tag name rendered from a shader to be used.
- `uniform` - The specified uniform floating-point type variable to set a new value to.
- `value` - The new floating-point value to set to.

Example:
> Sets the uniform floating-point variable `duration` to the value `15.0`.
```lua
setShaderFloat('sample_object', 'duration', 15.0)
```

### setShaderBool(obj:String, uniform:String, value:Bool):Void
Sets the <ins>specified uniform **boolean type** variable</ins> within the shader, a new value.

- `obj` - The object tag name rendered from a shader to be used.
- `uniform` - The specified uniform boolean type variable to set a new value to.
- `value` - The new boolean value to set to.

Example:
> Sets the uniform boolean variable `hasStarted` to the value `false`.
```lua
setShaderBool('sample_object', 'hasStarted', false)
```

### setShaderSampler2D(obj:String, uniform:String, bitmapdataPath:String):Void
Sets the <ins>specified uniform **sampler 2-dimension type** variable</ins> within the shader, a new value.

- `obj` - The object tag name rendered from a shader to be used.
- `uniform` - The specified uniform sampler 2-dimension type variable to set a new value to.
- `bitmapdataPath` - The new texture sprite image to set to; starts inside the `images` folder directory.

Example:
> Sets the uniform sampler 2-dimension variable `texture` to the value `dead_bf`.
```lua
setShaderSampler2D('sample_object', 'texture', 'dead_bf')
```

## Getters
### getShaderInt(obj:String, uniform:String):Int
Gets the <ins>specified uniform **integer type** variable</ins> within the shader current value.

- `obj` - The object tag name rendered from a shader to be used.
- `uniform` - The specified uniform integer type variable to get the current value from.

Example:
> Gets the uniform integer variable `timer` current value and prints it.
```lua
debugPrint( setShaderInt('sample_object', 'timer') ) --> 32
```

### getShaderFloat(obj:String, uniform:String):Float
Gets the <ins>specified uniform **floating-point type** variable</ins> within the shader current value.

- `obj` - The object tag name rendered from a shader to be used.
- `uniform` - The specified uniform floating-point type variable to get the current value from.

Example:
> Gets the uniform floating-point variable `duration` current value and prints it.
```lua
debugPrint( setShaderFloat('sample_object', 'duration') ) --> 15.0
```

### getShaderBool(obj:String, uniform:String):Bool
Gets the <ins>specified uniform **boolean type** variable</ins> within the shader current value.

- `obj` - The object tag name rendered from a shader to be used.
- `uniform` - The specified uniform boolean type variable to get the current value from.

Example:
> Gets the uniform boolean variable `hasStarted` current value and prints it.
```lua
debugPrint( setShaderBool('sample_object', 'hasStarted') ) --> false
```

***

# Shader Uniform Vector Functions
## Setters
### setShaderIntArray(obj:String, uniform:String, values:Dynamic):Void
Sets the <ins>specified uniform vector type variable in **all intergers**</ins> within the shader, a new value.

- `obj` - The object tag name rendered from a shader to be used.
- `uniform` - The specified uniform vector type variable to set a new value to.
- `values` - The new integer values within the vector to set to.

Example:
> Sets the uniform vector 2-dimension variable `textureButIn2D` to a two integer array value.
```lua
setShaderIntArray('sample_object', 'textureButIn2D', {2, 1}) 
```

### setShaderFloatArray(obj:String, uniform:String, values:Dynamic):Void
Sets the <ins>specified uniform vector type variable in **all floating-points**</ins> within the shader, a new value.

- `obj` - The object tag name rendered from a shader to be used.
- `uniform` - The specified uniform vector type variable to set a new value to.
- `values` - The new floating-point values within the vector to set to.

Example:
> Sets the uniform vector 3-dimension variable `textureButIn3D` to a three floating-point array value.
```lua
setShaderFloatArray('sample_object', 'textureButIn3D', {3.0, 2.0, 1.0})
```

### setShaderBoolArray(obj:String, uniform:String, value:Dynamic):Void
Sets the <ins>specified uniform vector type variable in **all booleans**</ins> within the shader, a new value.

- `obj` - The object tag name rendered from a shader to be used.
- `uniform` - The specified uniform vector type variable to set a new value to.
- `values` - The new booleans values within the vector to set to.

Example:
> Sets the uniform vector 4-dimension variable `textureButIn4D` to a four boolean array value.
```lua
setShaderBoolArray('sample_object', 'textureButIn4D', {true, true, false, false})
```

## Getters
### getShaderIntArray(obj:String, uniform:String):Array\<Int\>
Gets the specified uniform vector type variable within the shader <ins>current all **integer values**</ins>.

- `obj` - The object tag name rendered from a shader to be used.
- `uniform` - The specified uniform vector type variable to get the current integer values from.

Example:
> Gets the uniform vector 2-dimension variable `textureButIn2D` current values and prints it.
```lua
debugPrint( setShaderIntArray('sample_object', 'textureButIn2D') ) --> [2, 1]
```

### getShaderFloatArray(obj:String, uniform:String):Array\<Float\>
Gets the specified uniform vector type variable within the shader <ins>current all **floating-point values**</ins>.

- `obj` - The object tag name rendered from a shader to be used.
- `uniform` - The specified uniform vector type variable to get the current floating-point values from.

Example:
> Gets the uniform vector 3-dimension variable `textureButIn3D` current values and prints it.
```lua
debugPrint( setShaderIntArray('sample_object', 'textureButIn3D') ) --> [3.0, 2.0, 1.0]
```

### getShaderBoolArray(obj:String, uniform:String):Array\<Bool\>
Gets the specified uniform vector type variable within the shader <ins>current all **booleans values**</ins>.

- `obj` - The object tag name rendered from a shader to be used.
- `uniform` - The specified uniform vector type variable to get the current boolean values from.

Example:
> Gets the uniform vector 4-dimension variable `textureButIn4D` current values and prints it.
```lua
debugPrint( setShaderIntArray('sample_object', 'textureButIn4D') ) --> [true, true, false, false]
```