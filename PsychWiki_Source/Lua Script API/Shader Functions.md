# About
Shaders in computer graphics, is a computer program that is usually executed on the Graphics Processing Unit (GPU). It manipulates the "shade" of the rendered object, it calculates the properties of the image. Such as the amount of lighting, color and texture of the rendered object. This allows for complex visual effects to the rendered object, such as blur, disortion, bloom, and psychedelic effect just to name a few. Additionally it is coded in OpenGL Shading Language (GLSL) a C-style syntax language.

I wont devote a full detailed tutorial on shaders, discussing about GLSL syntaxes and stuff. Moreover shaders are really dependent on mathematical calculations like vectors, matrices, and trigonometry. Which I'am not going do that becuase it's obviously hard do to. But if you want to learn more about this, I strongly suggest either reading [this](https://shader-tutorial.dev/) or if you don't like reading then watch [this](https://www.youtube.com/watch?v=xZM8UJqN1eY) instead.

Additionally if you're not smart enough like me, you can "borrow" a shader at [Shader Toy](https://www.shadertoy.com). But please remember to link the original shader and actual give proper credit to the author. It's a real dick move if you did that.

Example:
```glsl
// This frag script was modified for compatability
// Creator: mrlem
// Modified: bbpanzu
// Link: https://www.shadertoy.com/view/lddXWS

// Add these two (Very Important)
uniform vec2 iResolution; // viewport resolution  (in pixels)
uniform float iTime;      // shader playback time (in seconds)

const float RADIUS  = 200.0;
const float BLUR    = 500.0;
const float SPEED   = 2.0;

void main() { // The "mainImage(out vec4 fragColor, in vec2 fragCoord)" replaced by "void main()"
     vec2 fragCoord = openfl_TextureCoordv * iResolution; // Added this for some reason

     // "texture2D" replaced by "texture" for the pixels to be not rendered as black.
     // "iChannel" sampler replaced by "bitmap" sampler
     vec2 uv  = fragCoord.xy / iResolution.xy;
     vec4 pic = texture2D(bitmap, vec2(uv.x, uv.y));

     vec2 center = iResolution.xy / 2.0;
     float d     = distance(fragCoord.xy, center);
     float intensity = max((d - RADIUS) / (2.0 + BLUR * (1.0 + sin(iTime * SPEED))), 0.0);

     // "fragColor" replaced by "gl_FragColor"
     gl_FragColor = vec4(intensity + pic.r, intensity + pic.g, intensity + pic.b, 0.2);
}
```

## Types
There many different types of shaders that can be utilizing. Each manipulating and calculating a certain property of the rendered object. In Psych Engine it supports only two types of shaders, fragment shader and vertex shaders 
respectively.

### Fragment
Fragment shader or pixel shaders, it computes the colors (RGBA), z-depth, and "fragments" of the rendered object. A fragment refers to a data necessary to generate a single pixel's worth of a drawing primitive in the frame buffer. It basically sets the color of the fragment of the rendered object. It uses the file extension `.frag` to define fragment shader files.

### Vertex
Vertext shaders computes and manipulates the attributes of the rendered object vertices. The attributes include the position, texture, coordinates, and color of the vertices. It uses the file extension `.vert` to define vertex fragment shader file.

## File Location
Shader files must be always located inside the `shaders` folder. Either inside of a local, inside a custom mod foler or a global mod folder. I'd recommend to be placed inside a local mod folder for your own mods, obviously.

Reference:
```txt
mods
├─shaders            // global mod shader folder
│ ├─spinning.frag
│ └─rotating.vert
└─your_very_own_mod
  └─shaders          // local mod shader folder
    ├─spinning.frag
    └─rotating.vert
```

***

# Shader Functions
### initLuaShader(name:String, ?glslVersion:Int = 120):Void
### setSpriteShader(obj:String, shader:String):Void
### removeSpriteShader(obj:String):Void

***

# Shader Property Setter Functions
### setShaderInt(obj:String, prop:String, value:Int):Void
### setShaderFloat(obj:String, prop:String, value:Float):Void
### setShaderBool(obj:String, prop:String, value:Bool):Void
### setShaderSampler2D(obj:String, prop:String, bitmapdataPath:String):Void

## Arrays
### setShaderIntArray(obj:String, prop:String, values:Dynamic):Void
### setShaderFloatArray(obj:String, prop:String, value:Dynamic):Void
### setShaderBoolArray(obj:String, prop:String, value:Dynamic):Void

***

# Shader Property Getter Functions
### getShaderInt(obj:String, prop:String):Int
### getShaderFloat(obj:String, prop:String):Float
### getShaderBool(obj:String, prop:String):Bool

## Arrays
### getShaderIntArray(obj:String, prop:String):Array\<Int\>
### getShaderFloatArray(obj:String, prop:String):Array\<Float\>
### getShaderBoolArray(obj:String, prop:String):Array\<Bool\>
