> **Warning**: _The functions featured here are deprecated meaning they are not recommended by use and outdated. Either because of name or parameter changes. This page of this wiki is to inform people to not use these functions and use the new ones._

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
- `framerate` - How many frames per second does the animation has; Defualt is: `24`.
- `loop` - Whether will the animation will loop when the animation is finished; Defualt is `true`.

### luaSpriteAddAnimationByIndices(tag:String, name:String, prefix:String, indices:String, framerate:Int = 24)
Deprecation of `addAnimationByIndices()`; Adds the <ins>specified animation with each indices/frames</ins> of the sprite object.

- `tag` - The sprite object tag name to be used.
- `name` - The name of the animation to be played.
- `prefix` - The prefix name inside the `xml` file to be played.
- `indices` - The specified indices/frames of the animation; Example: `1, 2, 3`.
- `framerate` - How many frames per second does the animation have; Defualt is: `24`.

### addAnimationByIndicesLoop(tag:String, name:String, prefix:String, indices:String, framerate:Int = 24)
> **Note**: _This function is only deprecated on versions above 0.6.3._

Deprecation of `addAnimationByIndices()`; Adds the <ins>specified animation with each indices/frames</ins> of the sprite object as a loop.

- `tag` - The sprite object tag name to be used.
- `name` - The name of the animation to be played.
- `prefix` - The prefix name inside the `xml` file to be played.
- `indices` - The specified indices/frames of the animation; Example: `1, 2, 3`.
- `framerate` - How many frames per second does the animation have; Defualt is: `24`.

### luaSpritePlayAnimation(tag:String, name:String, forced:Bool = false)
Deprecation of `playAnim()`; Plays an animation of the sprite object.

- `tag` - The sprite object tag name to be used.
- `name` - The name of the animation to be played.
- `forced` - Will resets if the animation is played again; Defualt is `false`.

### objectPlayAnimation(obj:String, name:String, forced:Bool = false, ?startFrame:Int = 0)
Deprecation of `playAnim()`; Plays an animation of the sprite object.

- `obj` - The sprite object tag name to be used.
- `name` - The name of the animation to be played.
- `forced` - Will resets if the animation is played again; Defualt is `false`.
- `reverse` - An optional parameter, Will play the animation from the `last` to the `start` frame.
- `startFrame` - An optional parameter, The specified starting frame of the animation.

### characterPlayAnim(character:String, anim:String, ?forced:Bool = false)
Deprecation of `playAnim()`; Plays an animation of the sprite object.

- `obj` - The sprite object tag name to be used.
- `anim` - The name of the animation to be played.
- `forced` - An optional parameter, Will resets if the animation is played again; Defualt is `false`.

### setLuaSpriteCamera(tag:String, camera:String = '')
Deprecation of `setObjectCamera()`; Changes the object <ins>camera state</ins>.

- `obj` - The object tag name to be used.
- `camera` - The camera state to be set in; Can be either: `camGame`, `camHUD` or `camOther`.

### setLuaSpriteScrollFactor(tag:String, scrollX:Float, scrollY:Float)
Deprecation of `setScrollFactor()`; Changes the object that moves along the camera when switching to characters.

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
### musicFadeIn(tag:String, duration:Float, fromValue:Float = 0, toValue:Float = 1)
Deprecation of `musicFadeIn()`; Makes the sound <ins>fade-in at the start</ins> when of the sound.

- `tag` - The sound object tag name to be used. If you want to fade the music leave the `tag` parameter blank, not a `nil` value. This will work on fade and volume/time functions.
- `duration` - The duration length of the sound to fade-in, from `fromValue` and `toValue`.
- `fromValue` - An optional parameter, The starting volume of the fade; Goes from `0` to `1`; Defualt value: `0`.
- `toValue` - An optional parameter, The ending volume of the fade; Goes from `0` to `1`; Defualt value: `1`.

### musicFadeOut(tag:String, duration:Float, toValue:Float = 0)
Deprecation of `musicFadeOut()`; Makes the sound <ins>fade-out at the end</ins> of the sound.

- `tag` - The sound object tag name to be used.
- `duration` - The duration length of the sound to fade-out, from `toValue`.
- `toValue` - An optional parameter, The ending volume of the fade; Goes from `0` to `1`; Defualt value: `0`.