# Graphic Functions
### makeGraphic(tag:String, width:Int, height:Int, color:String)
Initializes the <ins>creation of a colored fill texture</ins>. 

- `tag` - The sprite object tag name to be used.
- `width` - The width value in pixels of the object.
- `height` - The height value in pixels of the object.
- `color` - The hex color value of the object.

### loadGraphic(variable:String, image:String, ?gridX:Int = 0, ?gridY:Int = 0)
Changes the <ins>sprite texture</ins> with a new one. With an option to <ins>set the crop size</ins> of the sprite object.

- `variable` - The sprite object tag name to be used.
- `image` - The new image sprite for the sprite object to be used.
- `gridX` - An optional parameter, The crop width of the sprite texture; Defualt value: `0`.
- `gridY` - An optional parameter, The crop height of the sprite texture; Defualt value: `0`.

### setBlendMode(obj:String, blend:String)
Changes the <ins>blend mode</ins> of the object. If you want to see more blend modes, [click here](https://api.haxe.org/flash/display/BlendMode.html). _(Works similar to how Photoshop does it)_

- `obj` - The sprite object tag name to be used.
- `blend` - The blend mode to be used; Example: `add`, `darken`, `invert`, etc.

***

# Animation Functions
### playAnim(obj:String, name:String, forced:Bool = false, ?reverse:Bool = false, ?startFrame:Int = 0)
Plays an existing animation of the sprite object; it can <ins>override an animation</ins>. If there are two or similair names inside the `name` parameter; <ins>this rule is applied to all `name` parameters</ins>. 

- `obj` - The sprite object tag name to be used.
- `name` - The specified name of the animation to use.
- `forced` - Whether will the animation will be force to restart; Defualt value: `false`.
- `reverse` - An optional parameter, Whether the animation will be played backwards; Defualt value `false`.
- `startFrame` - An optional parameter, The animation frame in the animation to start from; Defualt value: `0`.

### addAnimation(obj:String, name:String, frames:Array\<Int\>, framerate:Int = 24, loop:Bool = true)
Adds a <ins>new animation</ins> of the sprite object.

- `obj` - The sprite object tag name to be used.
- `name` - The specified name of the animation to use.
- `frames` - The indices indicating what animation frames to play in what order; Example: `{1, 2, 3}`.
- `framerate` - The speed in frames per second that the animation should play at; Defualt is: `24`.
- `loop` - Whether will the animation will loop or just plays once; Defualt is `true`.

### addAnimationByPrefix(obj:String, name:String, prefix:String, framerate:Int = 24, loop:Bool = true)
Adds a <ins>new animation from the `xml` file</ins> for the sprite object to use.

- `obj` - The sprite object tag name to be used.
- `name` - The specified name of the animation to use.
- `prefix` - The prefix name inside the `xml` file to be played.
- `framerate` - The speed in frames per second that the animation should play at; Defualt is: `24`.
- `loop` - Whether will the animation will loop or just plays once; Defualt is `true`.

### addAnimationByIndices(obj:String, name:String, prefix:String, indices:String, framerate:Int = 24)
Adds a <ins>new animation with the specified indices</ins> for the animation frames to play for the sprite object to use. If you want the looped version of this function use `addAnimationByIndicesLoop()`; <ins>all parameters and its use are the same</ins>.

- `obj` - The sprite object tag name to be used.
- `name` - The specified name of the animation to use.
- `prefix` - The prefix name inside the `xml` file to be played.
- `frames` - The indices indicating what animation frames to play in what order; Example: `1, 2, 3`.
- `framerate` - The speed in frames per second that the animation should play at; Defualt is: `24`.

### addOffset(obj:String, anim:String, x:Float, y:Float)
Adds a new offset value on each animation.

- `obj` - The sprite object tag name to be used.
- `anim` - The specified name of the animation to use.
- `x` - The new x offset value of the animation.
- `y` - the new y offset value of the animation.

***

# Object Order Functions
### setObjectOrder(obj:String, position:Int)
Sets the current layer position of the object <ins>with a new value</ins>.

- `obj` - The object tag name to be used.
- `position` - The new layer position to be set.

### getObjectOrder(obj:String)
Gets the current layer position of the object <ins>current value</ins>; Returns a `float` number.

- `obj` - The object tag name to be used.

### objectsOverlap(obj1:String, obj2:String)
Checks if two objects are <ins>overlaping each-other</ins>; Returns a `boolean`.

- `obj1` - The first object tag name to be used.
- `obj2` - The second object tag name to be used.

***

# Scale Functions
### setGraphicSize(obj:String, x:Int, y:Int = 0, updateHitbox:Bool = true)
Sets the object <ins>graphic size by pixels</ins>; Not to be confused with `scaleObject()`.

- `obj` - The object tag name to be used.
- `x` - The width value of the object to be set.
- `y` - The height value of the object to be set.
- `updateHitbox` - Whether it will update the object's dimension or hitbox; Defualt is `true`.

### scaleObject(obj:String, x:Float, y:Float, updateHitbox:Bool = true)
Sets the object <ins>size by scale properties</ins>.

- `obj` - The object tag name to be used.
- `x` - The `scale.x` value of the object to be set.
- `y` - The `scale.y` value of the object to be set.
- `updateHitbox` - Whether it will update the object's dimension or hitbox; Defualt is `true`.

### updateHitbox(obj:String)
Updates the object's <ins>dimension or hitboxes</ins>. Used this if you're changing scale of the object. 

- `obj` - The object tag name to be used.

***

# Midpoint/Position Functions
### getGraphicMidpointX(variable:String)
Gets the <ins>midpoint x value in graphics</ins>, of the object; Not to be confused with `getMidpointX()` function; Returns a `float` number.

- `variable` - The object tag name to be used.

### getGraphicMidpointY(variable:String)
Gets the <ins>midpoint y value in graphics</ins>, of the object; Not to be confused with `getMidpointY()` function; Returns a `float` number.

- `variable` - The object tag name to be used.

### getMidpointX(variable:String)
Gets the <ins>midpoint x value</ins> of the object; Returns a `float` number.

- `variable` - The object tag name to be used.

### getMidpointY(variable:String)
Gets the <ins>midpoint y value</ins> of the object; Returns a `float` number.

- `variable` - The object tag name to be used.

***

### getScreenPositionX(variable:String)
Gets the <ins>screen x position</ins> of the object; Returns a `float` number.

- `variable` - The object tag name to be used.

### getScreenPositionY(variable:String)
Gets the <ins>screen y position</ins> of the object; Returns a `float` number.

- `variable` - The object tag name to be used.

### screenCenter(obj:String, pos:String = 'xy')
Sets the object to screen `center` with the specified `x` or `y` position.

- `obj` - The object tag name to be used.
- `pos` - The position you want to set in; Can be either: `X`, `Y`, `XY`.

***

# Other Functions
### setScrollFactor(obj:String, scrollX:Float, scrollY:Float)
Changes the object that moves along the camera when switching to characters.

- `obj` - The object tag name to be used.
- `scrollX` - The x value of the scroll to be set.
- `scrollY` - The y value of the scroll to be set.

### setObjectCamera(obj:String, camera:String)
Changes the object <ins>camera state</ins>.

- `obj` - The object tag name to be used.
- `camera` - The camera state to be set in; Can be either: `camGame`, `camHUD` or `camOther`.

### removeFromGroup(obj:String, index:Int, ?dontDestroy:Bool = false)
Removes a specific note type inside the game.

- `obj` - The name of the array/group member, Example `opponentStrums`, `playerStrums`, etc.
- `index` - The index number of the array/group member.
- `dontDestroy` - An optional parameter, Whether if the note type will be removed permanently making it unable to be re-added; Default is `false`.

### updateHitboxFromGroup(group:String, index:Int)
Updates the specific <ins>note type hitboxes</ins>.

- `obj` - The name of the array/group member, Example `opponentStrums`, `playerStrums`, etc.
- `index` - The index number of the array/group member.