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
Applying shaders to an object, usually a sprite within the game is the most simple part. Firstly it must be always be initiated by utilizing the `initLuaShader()` function. It obviously initiates and loads the shader from inside the `shaders` folder directory. Checking if the said shader file even exist or not.

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
setShaderIntArray('sample_object', 'textureButIn2D', {2, 1})
setShaderFloatArray('sample_object', 'textureButIn3D', {3.0, 2.0, 1.0})
setShaderBoolArray('sample_object', 'textureButIn4D', {true, true, false, false})
```

***

# Shader Functions 
### initLuaShader(shader:String):Void
### setSpriteShader(obj:String, shader:String):Void
### removeSpriteShader(obj:String):Void

***

# Shader Uniform Functions
## Setters
### setShaderInt(obj:String, uniform:String, value:Int):Void
### setShaderFloat(obj:String, uniform:String, value:Float):Void
### setShaderBool(obj:String, uniform:String, value:Bool):Void
### setShaderSampler2D(obj:String, uniform:String, bitmapdataPath:String):Void

## Getters
### getShaderInt(obj:String, uniform:String):Int
### getShaderFloat(obj:String, uniform:String):Float
### getShaderBool(obj:String, uniform:String):Bool

***

# Shader Uniform Vector Functions
## Setters
### setShaderIntArray(obj:String, uniform:String, values:Dynamic):Void
### setShaderFloatArray(obj:String, uniform:String, values:Dynamic):Void
### setShaderBoolArray(obj:String, uniform:String, value:Dynamic):Void

## Getters
### getShaderIntArray(obj:String, uniform:String):Array\<Int\>
### getShaderFloatArray(obj:String, uniform:String):Array\<Float\>
### getShaderBoolArray(obj:String, uniform:String):Array\<Bool\>