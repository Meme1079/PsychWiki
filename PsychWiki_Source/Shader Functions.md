_Note: Am still researching on what shaders does am just putting the template, you can do pull request to finish this part of the wiki; help is appreciated_

# Creating/Removing Shader

### initLuaShader(name:String, glslVersion:Int = 120)
Sets the intensity of the shader

- `name` - The Shader name
- `glslVersion` - The intensity of the shader

### setSpriteShader(obj:String, shader:String)
Sets the shader of the object

- `object` - The Object variable name
- `shader` - The Shader name

### removeSpriteShader(obj:String)
Removes the shader from the game.

- `object` - The Object variable name

***

# Shader Setting
### setShaderBool(obj:String, prop:String, value:Bool)

### setShaderInt(obj:String, prop:String, value:Int)

### setShaderFloat(obj:String, prop:String, value:Float)

### setShaderBoolArray(obj:String, prop:String, value:Dynamic)

### setShaderIntArray(obj:String, prop:String, value:Dynamic)

### setShaderFloatArray(obj:String, prop:String, value:Dynamic)

### setShaderSampler2D(obj:String, prop:String, bitmapdataPath:String)

***

# Shader Getter
### getShaderBool(obj:String, prop:String)

### getShaderInt(obj:String, prop:String)

### getShaderFloat(obj:String, prop:String)

### getShaderBoolArray(obj:String, prop:String)

### getShaderIntArray(obj:String, prop:String)

### getShaderFloatArray(obj:String, prop:String)