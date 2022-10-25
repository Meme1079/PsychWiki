_Waring: Take all the shader functions a grain of salt due to my lack of knowledge on shaders, you can do pull request to correct the description of the function and parameter. And if you want ; help is appreciated_

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
Sets the current **Boolean** variable shader.

- `object` - The sprite tag or object variable name.
- `prop` - The `uniform bool` keyword name.
- `value` - The **Boolen** to be set.

### setShaderInt(obj:String, prop:String, value:Int)
Sets the current **Int** variable shader.

- `object` - The sprite tag or object variable name.
- `prop` - The variable in `uniform int` keyword.
- `value` - The **Int** to be set.

### setShaderFloat(obj:String, prop:String, value:Float)
Sets the current **Float** variable shader.

- `object` - The sprite tag or object variable name.
- `prop` - The variable in `uniform float` keyword.
- `value` - The **Float** to be set.

### setShaderSampler2D(obj:String, prop:String, bitmapdataPath:String)
Sets the current **Sampler2D** variable shader.

- `object` - The sprite tag or object variable name.
- `prop` - The variable in `uniform sampler2D` keyword.
- `value` - The **Sampler2D** to be set.

### setShaderBoolArray(obj:String, prop:String, value:Dynamic)
Sets the current **Boolean** array variable shader.

- `object` - The sprite tag or object variable name.
- `prop` - The variable in `uniform bool` keyword.
- `value` - The **Boolean** array to be set.

Example: `setShaderBoolArray('shader', exampleBool, {true, true, false})`

### setShaderIntArray(obj:String, prop:String, value:Dynamic)
Sets the current **Int** array variable shader.

- `object` - The sprite tag or object variable name.
- `prop` - The variable in `uniform int` keyword.
- `value` - The **Int** array to be set.

### setShaderFloatArray(obj:String, prop:String, value:Dynamic)
Sets the current **Float** array variable shader.

- `object` - The sprite tag or object variable name.
- `prop` - The variable in `uniform float` keyword.
- `value` - The **Float** array to be set.

***

# Shader Getter
### getShaderBool(obj:String, prop:String)
Gets the current **Boolean** variable shader.

- `object` - The sprite tag or object variable name.
- `prop` - The `uniform bool` keyword name.

### getShaderInt(obj:String, prop:String)
Gets the current **Int** variable shader.

- `object` - The sprite tag or object variable name.
- `prop` - The variable in `uniform int` keyword.

### getShaderFloat(obj:String, prop:String)
Gets the current **Float** variable shader.

- `object` - The sprite tag or object variable name.
- `prop` - The variable in `uniform float` keyword.

### getShaderBoolArray(obj:String, prop:String)
Gets the current **Boolean** array variable shader.

- `object` - The sprite tag or object variable name.
- `prop` - The variable in `uniform bool` keyword.

Example: `getShaderBoolArray('shader', exampleBool)[1]`

### getShaderIntArray(obj:String, prop:String)
Gets the current **Int** array variable shader.

- `object` - The sprite tag or object variable name.
- `prop` - The variable in `uniform int` keyword.

### getShaderFloatArray(obj:String, prop:String)
Gets the current **Float** array variable shader.

- `object` - The sprite tag or object variable name.
- `prop` - The variable in `uniform float` keyword.