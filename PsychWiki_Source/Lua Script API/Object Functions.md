# Graphic Functions
### makeGraphic(tag:String, width:Int, height:Int, color:String)
Initializes the <ins>creation of a colored fill texture</ins>; must be declared before the `makeLuaSprite()` function. 

- `tag` - The sprite object's tag name to be used.
- `width` - The width value in pixels of the object.
- `height` - The height value in pixels of the object.
- `color` - The hex color value of the object.

### loadGraphic(variable:String, image:String, ?gridX:Int = 0, ?gridY:Int = 0)
Changes the <ins>sprite texture</ins> with a new one. With an option to <ins>set the crop size</ins> of the sprite object.

- `variable` - The sprite object's tag name to be used.
- `image` - The new image sprite for the sprite object to be used.
- `gridX` - An optional parameter, The crop width of the sprite texture; Default value: `0`.
- `gridY` - An optional parameter, The crop height of the sprite texture; Default value: `0`.

### setBlendMode(obj:String, blend:String)
Changes the <ins>blend mode</ins> of the object. If you want to see more blend modes, [click here](https://api.haxe.org/flash/display/BlendMode.html). _(Works similar to how Photoshop does it)_

- `obj` - The sprite object's tag name to be used.
- `blend` - The blend mode to be used; Example: `add`, `darken`, `invert`, etc.

***

# Animation Functions
### playAnim(obj:String, name:String, forced:Bool = false, ?reverse:Bool = false, ?startFrame:Int = 0)
Plays an existing animation of the sprite object; it can <ins>override an animation</ins>. If there are two or similar names inside the `name` parameter; <ins>this rule is applied to all `name` parameters</ins>. 

- `obj` - The sprite object's tag name to be used.
- `name` - The specified name of the animation to use.
- `forced` - Whether the animation will restart if the animation name is the same one as the animation currently playing; Default value: `false`.
- `reverse` - An optional parameter, Whether the animation will be played backwards; Default value `false`.
- `startFrame` - An optional parameter, The animation frame in the animation to start from; Default value: `0`.

### addAnimation(obj:String, name:String, frames:Array\<Int\>, framerate:Int = 24, loop:Bool = true)
Adds a <ins>new animation</ins> of the sprite object.

- `obj` - The sprite object's tag name to be used.
- `name` - The specified name of the animation to use.
- `frames` - The indices indicating what animation frames to play in what order; Example: `{1, 2, 3}`.
- `framerate` - The speed in frames per second that the animation should play at; Default is: `24`.
- `loop` - Whether will the animation will loop or just plays once; Default is `true`.

### addAnimationByPrefix(obj:String, name:String, prefix:String, framerate:Int = 24, loop:Bool = true)
Adds a <ins>new animation from the `xml` file</ins> for the sprite object to use.

- `obj` - The sprite object's tag name to be used.
- `name` - The specified name of the animation to use.
- `prefix` - The prefix name inside the `xml` file to be played.
- `framerate` - The speed in frames per second that the animation should play at; Default is: `24`.
- `loop` - Whether will the animation will loop or just plays once; Default is `true`.

### addAnimationByIndices(obj:String, name:String, prefix:String, indices:String, framerate:Int = 24, loop:Bool = false)
> **Note** _In versions below 0.7, you must use `addAnimationByIndicesLoop` if you want to loop your animation, as the sixth parameter here does not exist; <ins>All the parameters will be the same excluding the loop parameter</ins>._

Adds a <ins>new animation with the specified indices</ins> for the animation frames to play for the sprite object to use.

- `obj` - The sprite object's tag name to be used.
- `name` - The specified name of the animation to use.
- `prefix` - The prefix name inside the `xml` file to be played.
- `frames` - The indices indicating what animation frames to play in what order; Example: `1, 2, 3`.
- `framerate` - The speed in frames per second that the animation should play at; Default is: `24`.

### addOffset(obj:String, anim:String, x:Float, y:Float)
Adds a new offset value on each animation.

- `obj` - The sprite object's tag name to be used.
- `anim` - The specified name of the animation to use.
- `x` - The new x offset value of the animation.
- `y` - the new y offset value of the animation.

### loadFrames(variable:String, image:String, spriteType:String = "sparrow")
Loads the Lua sprites <ins>animation frames</ins>.

- `variable` The sprite object's tag name to be used.
- `image` - The image sprite for the sprite to use.
- `spriteType` - An optional parameter, The specified sprite type of the Lua sprite could be either a sprite-sheet for `sparrow` or texture-atlas for `tex`; Default value: `sparrow`.

***

# Precaching Functions
> **Note**: _It's highly recommended that you use this `function onCreate()` callback. These functions are mainly used for avoiding a massive game freeze when an asset first gets used._

### addCharacterToList(name:String, type:String)
Pre-caches the <ins>sprite character</ins>, this used if you're switching characters.

- `name` - The `json` name of the character.
- `type` - The character type to be used; Can be either: `boyfriend`, `dad` or `gf`.

### precacheImage(name:String)
Pre-caches the <ins>image sprite</ins>; Must be relative to `mods/images`, `assets/images`, or `assets/shared/images` folders.

- `name` - The image sprite for the sprite to use.

### precacheSound(name:String)
Pre-caches the <ins>sound</ins>; Must be relative to `mods/sounds` or `assets/sounds` folders.

- `name` - The `ogg` sound file to be played.

### precacheMusic(name:String)
Pre-caches the <ins>music</ins>; Must be relative to `mods/music` or `assets/music` folders.

- `name` - The `ogg` music file to be played.

***

# Object Order Functions
### setObjectOrder(obj:String, position:Int)
Sets the current layer position of the object <ins>with a new value</ins>.

- `obj` - The object's tag name to be used.
- `position` - The new layer position to be set.

### getObjectOrder(obj:String)
Gets the current layer position of the object <ins>current value</ins>; Returns a `float` number.

- `obj` - The object's tag name to be used.

### objectsOverlap(obj1:String, obj2:String)
Checks if two objects are <ins>overlapping each-other</ins>; Returns a `boolean`.

- `obj1` - The first object tag name to be used.
- `obj2` - The second object tag name to be used.

***

# Scale Functions
### setGraphicSize(obj:String, x:Int, y:Int = 0, updateHitbox:Bool = true)
Sets the object <ins>graphic size by pixels</ins>; Not to be confused with `scaleObject()`.

- `obj` - The object's tag name to be used.
- `x` - The width value of the object to be set.
- `y` - The height value of the object to be set.
- `updateHitbox` - Whether it will update the object's dimension or hitbox; Default is `true`.

### scaleObject(obj:String, x:Float, y:Float, updateHitbox:Bool = true)
Sets the object <ins>size by scale properties</ins>.

- `obj` - The object's tag name to be used.
- `x` - The `scale.x` value of the object to be set.
- `y` - The `scale.y` value of the object to be set.
- `updateHitbox` - Whether it will update the object's dimension or hitbox; Default is `true`.

### updateHitbox(obj:String)
Updates the object's <ins>dimension or hitboxes</ins>. Used this if you're changing scale of the object. 

- `obj` - The object's tag name to be used.

***

# Midpoint/Position Functions
### getGraphicMidpointX(variable:String)
Gets the <ins>midpoint x value in graphics</ins>, of the object; Not to be confused with `getMidpointX()` function; Returns a `float` number.

- `variable` - The object's tag name to be used.

### getGraphicMidpointY(variable:String)
Gets the <ins>midpoint y value in graphics</ins>, of the object; Not to be confused with `getMidpointY()` function; Returns a `float` number.

- `variable` - The object's tag name to be used.

### getMidpointX(variable:String)
Gets the <ins>midpoint x value</ins> of the object; Returns a `float` number.

- `variable` - The object's tag name to be used.

### getMidpointY(variable:String)
Gets the <ins>midpoint y value</ins> of the object; Returns a `float` number.

- `variable` - The object's tag name to be used.

***

### getScreenPositionX(variable:String)
Gets the <ins>screen x position</ins> of the object; Returns a `float` number.

- `variable` - The object's tag name to be used.

### getScreenPositionY(variable:String)
Gets the <ins>screen y position</ins> of the object; Returns a `float` number.

- `variable` - The object's tag name to be used.

### screenCenter(obj:String, pos:String = 'xy')
Centers the object to either the `X` or `Y` position; Can also be both.

- `obj` - The object's tag name to be used.
- `pos` - The position you want to set in; Can be either: `X`, `Y`, `XY`; Default is `XY`.

***

# Other Functions
### setScrollFactor(obj:String, scrollX:Float, scrollY:Float)
Changes the object's <ins>scroll factor</ins> as in changing how much the object will move when the camera moves.

- `obj` - The object's tag name to be used.
- `scrollX` - The x value of the scroll to be set.
- `scrollY` - The y value of the scroll to be set.

### setObjectCamera(obj:String, camera:String)
Changes the object's <ins>camera state</ins>.

- `obj` - The object's tag name to be used.
- `camera` - The camera state to be set in; Can be either: `camGame`, `camHUD` or `camOther`.