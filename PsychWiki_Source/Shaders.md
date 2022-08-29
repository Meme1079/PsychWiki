_Note: am still researching on what shaders does am just putting the template_

# Creating/Removing Shader

### initLuaShader(name:String, glslVersion:Int = 120)
Sets the intensity of the shader

- `name` - The Shader name
- `glslVersion` - The Intensity of the shader

### setSpriteShader(obj:String, shader:String)
Sets the shader of the object

- `object` - The Object variable name
- `shader` - The Shader name

### removeSpriteShader(obj:String)
Removes the shader of the object

- `object` - The Object variable name

# Shader Setting

### setShaderBool(obj:String, prop:String, value:Bool)

### setShaderBoolArray(obj:String, prop:String, value:Dynamic)

### setShaderInt(obj:String, prop:String, value:Int)

### setShaderIntArray(obj:String, prop:String, value:Dynamic)

### setShaderFloat(obj:String, prop:String, value:Float)

### setShaderFloatArray(obj:String, prop:String, value:Dynamic)

# Shader Getter

### getShaderBool(obj:String, prop:String)

### getShaderBoolArray(obj:String, prop:String)

### getShaderInt(obj:String, prop:String)

### getShaderIntArray(obj:String, prop:String)

### getShaderFloat(obj:String, prop:String)

### getShaderFloatArray(obj:String, prop:String)