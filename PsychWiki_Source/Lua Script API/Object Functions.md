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
- `gridX` - An optional parameter, The crop width of the sprite texture.
- `gridY` - An optional parameter, The crop height of the sprite texture.

### setBlendMode(obj:String, blend:String)
Changes the <ins>blend mode</ins> of the object. If you want to see more blend modes, [click here](https://api.haxe.org/flash/display/BlendMode.html). _(Works similar to how Photoshop does it)_

- `obj` - The sprite object tag name to be used.
- `blend` - The blend mode to be used; Example: `add`, `darken`, `invert`, etc.

***

# Animation Functions
### playAnim(obj:String, name:String, forced:Bool = false, ?reverse:Bool = false, ?startFrame:Int = 0)
Plays an animation of the sprite object.

- `obj` - The sprite object tag name to be used.
- `name` - The name of the animation to be played.
- `forced` - Will resets if the animation is played again; Defualt is `false`.
- `reverse` - An optional parameter, Will play the animation from the `last` to the `start` frame.
- `startFrame` - An optional parameter, The specified starting frame of the animation.

### addAnimation(obj:String, name:String, frames:Array\<Int\>, framerate:Int = 24, loop:Bool = true)
Adds an animation of the sprite object; it can <ins>override an animation</ins>. If there are two or similair names inside the `name` parameter; <ins>this rule is applied to all `name` parameters</ins>.

- `obj` - The sprite object tag name to be used.
- `name` - The name of the animation to be played.
- `frames` - The specified array of the `xml` animation frames; Example: `{1, 2, 3}`.
- `framerate` - How many frames per second does the animation has; Defualt is: `24`.
- `loop` - Whether will the animation will loop when the animation is finished; Defualt is `true`.

### addAnimationByPrefix(obj:String, name:String, prefix:String, framerate:Int = 24, loop:Bool = true)
Adds the <ins>specified animation</ins> of the sprite object.

- `obj` - The sprite object tag name to be used.
- `name` - The name of the animation to be played.
- `prefix` - The prefix name inside the `xml` file to be played.
- `framerate` - How many frames per second does the animation has; Defualt is: `24`.
- `loop` - Whether will the animation will loop when the animation is finished; Defualt is `true`.

### addAnimationByIndices(obj:String, name:String, prefix:String, indices:String, framerate:Int = 24)
Adds the <ins>specified animation with each indices/frames</ins> of the sprite object. If you want the looped version of this function use `addAnimationByIndicesLoop()`; <ins>all parameters and its use are the same</ins>.

- `obj` - The sprite object tag name to be used.
- `name` - The name of the animation to be played.
- `prefix` - The prefix name inside the `xml` file to be played.
- `indices` - The specified indices/frames of the animation; Example: `1, 2, 3`.
- `framerate` - How many frames per second does the animation has; Defualt is: `24`.

### addOffset(obj:String, anim:String, x:Float, y:Float)
Adds the <ins>offset of the specified animation</ins>.

- `obj` - The sprite object tag name to be used.
- `anim` - The name of the animation to be used.
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