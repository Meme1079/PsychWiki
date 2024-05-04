> **Warning**: _The functions featured here are deprecated meaning they are not recommended by use and outdated. Either because of name or parameter changes. This page of this wiki is to inform people to not use these functions and instead to use the new ones._

# Object Functions
### luaSpriteMakeGraphic(tag:String, width:Int, height:Int, color:String)
Deprecation of `makeGraphic()`; Initializes the <ins>creation of a colored fill texture</ins>. 

- `tag` - The sprite object tag name to be used.
- `width` - The width value in pixels of the object.
- `height` - The height value in pixels of the object.
- `color` - The hex color value of the object.

### luaSpriteAddAnimationByPrefix(tag:String, name:String, prefix:String, framerate:Int = 24, loop:Bool = true)
Deprecation of `addAnimationByPrefix()`; Adds the <ins>specified animation</ins> of the sprite object.

- `tag` - The sprite object tag name to be used.
- `name` - The name of the animation to be played.
- `prefix` - The prefix name inside the `xml` file to be played.
- `framerate` - How many frames per second does the animation has; Default value: `24`.
- `loop` - Whether will the animation will loop when the animation is finished; Default value: `true`.

### luaSpriteAddAnimationByIndices(tag:String, name:String, prefix:String, indices:String, framerate:Int = 24)
Deprecation of `addAnimationByIndices()`; Adds the <ins>specified animation with each indices/frames</ins> of the sprite object.

- `tag` - The sprite object tag name to be used.
- `name` - The name of the animation to be played.
- `prefix` - The prefix name inside the `xml` file to be played.
- `indices` - The specified indices/frames of the animation; Example: `1, 2, 3`.
- `framerate` - How many frames per second does the animation have; Default value: `24`.

### addAnimationByIndicesLoop(tag:String, name:String, prefix:String, indices:String, framerate:Int = 24)
> **Note**: _This function is only deprecated on versions above `0.6.3`._

Deprecation of `addAnimationByIndices()`; Adds the <ins>specified animation with each indices/frames</ins> of the sprite object as a loop.

- `tag` - The sprite object tag name to be used.
- `name` - The name of the animation to be played.
- `prefix` - The prefix name inside the `xml` file to be played.
- `indices` - The specified indices/frames of the animation; Example: `1, 2, 3`.
- `framerate` - How many frames per second does the animation have; Default value: `24`.

### luaSpritePlayAnimation(tag:String, name:String, forced:Bool = false)
Deprecation of `playAnim()`; Plays an animation of the sprite object.

- `tag` - The sprite object tag name to be used.
- `name` - The name of the animation to be played.
- `forced` - Whether the animation will restart if the animation name is the same one as the animation currently playing; Default value: `false`.

### objectPlayAnimation(obj:String, name:String, forced:Bool = false, ?startFrame:Int = 0)
Deprecation of `playAnim()`; Plays an animation of the sprite object.

- `obj` - The sprite object tag name to be used.
- `name` - The name of the animation to be played.
- `forced` - Whether the animation will restart if the animation name is the same one as the animation currently playing; Default value: `false`.
- `reverse` - An optional parameter, Will play the animation from the `last` to the `first` frame.
- `startFrame` - An optional parameter, The specified starting frame of the animation.

### characterPlayAnim(character:String, anim:String, ?forced:Bool = false)
Deprecation of `playAnim()`; Plays an animation of the sprite object.

- `obj` - The sprite object tag name to be used.
- `anim` - The name of the animation to be played.
- `forced` - An optional parameter, Whether the animation will restart if the animation name is the same one as the animation currently playing; Default value: `false`.

### setLuaSpriteCamera(tag:String, camera:String = '')
Deprecation of `setObjectCamera()`; Changes the object <ins>camera state</ins>.

- `obj` - The object tag name to be used.
- `camera` - The camera state to be set in; Can be either: `camGame`, `camHUD` or `camOther`.

### setLuaSpriteScrollFactor(tag:String, scrollX:Float, scrollY:Float)
Deprecation of `setScrollFactor()`; Changes how much the object scrolls when the camera moves.

- `obj` - The object tag name to be used.
- `scrollX` - The x value of the scroll to be set.
- `scrollY` - The y value of the scroll to be set.

### scaleLuaSprite(tag:String, x:Float, y:Float)
Deprecation of `scaleObject()`; Sets the object <ins>size by scale properties</ins>.

- `obj` - The object tag name to be used.
- `x` - The `scale.x` value of the object to be set.
- `y` - The `scale.y` value of the object to be set.

***

# Value Setting & Getting Functions
### setPropertyLuaSprite(tag:String, variable:String, value:Dynamic)
Deprecation of `setProperty()`; Sets the current <ins>property variable inside the Playstate</ins> with a new value.

- `tag` - The variable inside the Playstate or object to be used.
- `variable` - The property attribute for the object; Example: `x`, `y`, `alpha`, etc.
- `value` - The new value to be set.

### getPropertyLuaSprite(tag:String, variable:String)
Deprecation of `getProperty()`; Gets the current <ins>property variable inside the Playstate</ins> current value.

- `tag` - The variable inside the Playstate or object to be used.
- `variable` - The property attribute for the object; Example: `x`, `y`, `alpha`, etc.

***

# Sound & Music Functions
### musicFadeIn(duration:Float, fromValue:Float = 0, toValue:Float = 1)
Deprecation of `soundFadeIn()`; Makes the music <ins>fade-in</ins>; Does not support Lua sounds unlike `soundFadeIn()`.

- `duration` - The duration length of the sound to fade-in, from `fromValue` to `toValue`.
- `fromValue` - An optional parameter, The starting volume of the fade; Goes from `0` to `1`; Defualt value: `0`.
- `toValue` - An optional parameter, The ending volume of the fade; Goes from `0` to `1`; Defualt value: `1`.

### musicFadeOut(duration:Float, toValue:Float = 0)
Deprecation of `soundFadeOut()`; Makes the music <ins>fade-out</ins>; Does not support Lua sounds unlike `soundFadeOut()`.

- `duration` - The duration length of the sound to fade-out, from the current volume to `toValue`.
- `toValue` - An optional parameter, The ending volume of the fade; Goes from `0` to `1`; Defualt value: `0`.
