> **Warning**: _The functions featured here are depracated meaning they are not reccomended by use and outdated. This section of this wiki is to inform people to not use these functions ans use the new ones._

# Object Functions
### luaSpriteMakeGraphic(tag:String, width:Int, height:Int, color:String)
Deprecation of `makeGraphic()`, Will create an object with a solid color.

- `tag` - The sprite tag or object variable name.
- `width` - The width value in pixels of the object.
- `height` - The height value in pixels of the object.
- `color` - The color of the object. **(Must be a Hexadecimal Color Code)**

### luaSpriteAddAnimationByPrefix(tag:String, name:String, prefix:String, framerate:Int = 24, loop:Bool = true)
Deprecation of `addAnimationByPrefix()`, Adds an animation to the lua sprite/object without the specified indices; it can override an animation. If there are using the same name on the `name` parameter.

- `tag` - The sprite tag or object variable name.
- `name` - The name of the animation to be used.
- `prefix` - The name of the animation inside of the `xml` file.
- `framerate` - An optional value, how many frames per second does the animation have, Default value is `24`.
- `loop` - An optional value, This will loop the animation, Default value is `true`.

### luaSpriteAddAnimationByIndices(tag:String, name:String, prefix:String, indices:String, framerate:Int = 24)
Deprecation of `addAnimationByIndices()`, Adds an animation to the lua sprite/object with the specified indices on `indices` parameter; it can override an animation. If there are using the same name on the `name` parameter.

- `obj` - The sprite tag or object variable name.
- `name` - The name of the animation to be used.
- `prefix` - The name of the animation inside of the `xml` file.
- `indices` - The frames for the animation that should be used, must be separated each by a comma, Example: `1, 2, 3`
- `framerate` - An optional value, how many frames per second does the animation have, Default value is `24`

### setLuaSpriteCamera(tag:String, camera:String = '')
Deprecation of `setObjectCamera()`, Sets the lua sprite/object camera state.

- `obj` - The sprite tag or object variable name.
- `camera` - The camera state to be set in, Can be either `camGame`, `camHUD` or `camOther`.

### setLuaSpriteScrollFactor(tag:String, scrollX:Float, scrollY:Float)
Deprecation of `setScrollFactor()`, Changes the lua sprite/object that moves along the camera when switching to characters.

- `obj` - The sprite tag or object variable name.
- `scrollX` - The x value of the scroll factor to be set.
- `scrollY` - The y value of the scroll factor to be set.

### scaleLuaSprite(tag:String, x:Float, y:Float)
Deprecation of `scaleObject()`, Sets the lua sprite/object camera state.

- `obj` - The sprite tag or object variable name.
- `x` - The width of the object to be set, Default value is `1`.
- `y` - The heigth of the object to be set, Default value is `1`.

***
> **Note**: _All of these functions are a depracation of `playAnim()`_

### objectPlayAnimation(obj:String, name:String, forced:Bool = false, ?startFrame:Int = 0)
Plays animation name on a lua sprite/object with the tag or variable object.

- `obj` - The sprite tag or object variable name.
- `name` - The name of the animation to be used.
- `forced` - If set to `true`, then the current animation is the same as the one you're attempting to play, the animation will be reset, Default value is `false`.
- `startFrame` - The starting frame of the animation to be played.

### characterPlayAnim(character:String, anim:String, ?forced:Bool = false)
Plays animation name on a lua sprite/object with the tag or variable object.

- `obj` - The sprite tag or object variable name.
- `name` - The name of the animation to be used.
- `forced` - If set to `true`, then the current animation is the same as the one you're attempting to play, the animation will be reset, Default value is `false`.

### luaSpritePlayAnimation(tag:String, name:String, forced:Bool = false)
Plays animation name on a lua sprite/object with the tag or variable object.

- `obj` - The sprite tag or object variable name.
- `name` - The name of the animation to be used.
- `forced` - If set to `true`, then the current animation is the same as the one you're attempting to play, the animation will be reset, Default value is `false`.

***

# Value Setting & Getting Functions
### setPropertyLuaSprite(tag:String, variable:String, value:Dynamic)
Deprecation of `setProperty()`, Sets the current variable PlayStates name with a new value. 

- `tag` - The sprite tag or object variable name.
- `variable` - The current variable property to be used.
- `value` - The value to be set.

### getPropertyLuaSprite(tag:String, variable:String)
Deprecation of `getProperty()`, Gets the current variable PlayStates name current value.

- `tag` - The sprite tag or object variable name.
- `variable` - The current variable property to be used.

***

# Sound & Music Functions
### musicFadeIn(tag:String, duration:Float, fromValue:Float = 0, toValue:Float = 1)
Depracation of `soundFadeIn()`, This will cause the sound to <ins>fade at the start</ins> of playing the sound.

- `tag` - The sound tag name, if you wish to do a fade in on the background sound instead, leave this option blank.
- `duration` - How long the fade will last on the song from `fromValue` and `toValue`.
- `fromValue` - The starting value of the sound volume, Default value is `0`.
- `toValue` - The end value of the sound volume, Defualt value is `1`.

### musicFadeOut(tag:String, duration:Float, toValue:Float = 0)
Depracation of `soundFadeOut()`,This will cause the sound to <ins>fade at the end</ins> of playing the sound.

- `tag` - The sound tag name, if you wish to do a fade in on the background sound instead, leave this option blank.
- `duration` - How long the fade will last on the song from `toValue`.
- `toValue` - The end value of the sound volume, Defualt value is `0`.