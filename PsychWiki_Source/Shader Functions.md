> **Warning**: _Take all the shader functions a grain of salt due to my lack of knowledge on shaders, you can do pull request to correct the description of the function and parameter; help is always appreciated._

> **Note**: _The shader functions will not work unless you have a `frag` or `vert` file in the `shaders` file._

# Creating/Removing Shader
### initLuaShader(name:String, glslVersion:Int = 120)
Sets the intensity of the shader.

- `name` - The `frag` or `vert` file name.
- `glslVersion` - An optional parameter, the glsl version to be used in the shader.

### setSpriteShader(obj:String, shader:String)
Sets the shader of the object

- `object` - The sprite tag or object variable name.
- `shader` - The shader name.

### removeSpriteShader(obj:String)
Removes the shader from the game.

- `object` - The sprite tag or object variable name.

***

# Shader Setting
### setShaderBool(obj:String, prop:String, value:Bool)
Sets the current <ins>**Boolean** variable shader</ins>.

- `object` - The sprite tag or object variable name.
- `prop` - The `uniform bool` keyword name.
- `value` - The **Boolen** to be set.

### setShaderInt(obj:String, prop:String, value:Int)
Sets the current <ins>**Int** variable shader.

- `object` - The sprite tag or object variable name.
- `prop` - The variable in `uniform int` keyword</ins>.
- `value` - The **Int** to be set.

### setShaderFloat(obj:String, prop:String, value:Float)
Sets the current <ins>**Float** variable shader.

- `object` - The sprite tag or object variable name.
- `prop` - The variable in `uniform float` keyword</ins>.
- `value` - The **Float** to be set.

### setShaderSampler2D(obj:String, prop:String, bitmapdataPath:String)
Sets the current <ins>**Sampler2D** variable shader</ins>.

- `object` - The sprite tag or object variable name.
- `prop` - The variable in `uniform sampler2D` keyword.
- `bitmapdataPath` - The image file to be set.

***

### setShaderBoolArray(obj:String, prop:String, value:Dynamic)
Sets the current <ins>**Boolean** array variable shader</ins>.

- `object` - The sprite tag or object variable name.
- `prop` - The variable in `uniform bool` keyword.
- `value` - The **Boolean** array to be set.

Example: `setShaderBoolArray('shader', exampleBool, {true, true, false})`

### setShaderIntArray(obj:String, prop:String, value:Dynamic)
Sets the current <ins>**Int** array variable shader</ins>.

- `object` - The sprite tag or object variable name.
- `prop` - The variable in `uniform int` keyword.
- `value` - The **Int** array to be set.

### setShaderFloatArray(obj:String, prop:String, value:Dynamic)
Sets the current <ins>**Float** array variable shader</ins>.

- `object` - The sprite tag or object variable name.
- `prop` - The variable in `uniform float` keyword.
- `value` - The **Float** array to be set.

***

# Shader Getter
### getShaderBool(obj:String, prop:String)
Gets the current <ins>**Boolean** variable shader</ins>.

- `object` - The sprite tag or object variable name.
- `prop` - The `uniform bool` keyword name.

### getShaderInt(obj:String, prop:String)
Gets the current <ins>**Int** variable shader</ins>.

- `object` - The sprite tag or object variable name.
- `prop` - The variable in `uniform int` keyword.

### getShaderFloat(obj:String, prop:String)
Gets the current <ins>**Float** variable shader</ins>.

- `object` - The sprite tag or object variable name.
- `prop` - The variable in `uniform float` keyword.

***

### getShaderBoolArray(obj:String, prop:String)
Gets the current <ins>**Boolean** array variable shader</ins>.

- `object` - The sprite tag or object variable name.
- `prop` - The variable in `uniform bool` keyword.

Example: `getShaderBoolArray('shader', exampleBool)[1]`

### getShaderIntArray(obj:String, prop:String)
Gets the current <ins>**Int** array variable shader</ins>.

- `object` - The sprite tag or object variable name.
- `prop` - The variable in `uniform int` keyword.

### getShaderFloatArray(obj:String, prop:String)
Gets the current <ins>**Float** array variable shader.</ins>

- `object` - The sprite tag or object variable name.
- `prop` - The variable in `uniform float` keyword.