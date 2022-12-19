# Graphics Functions
### makeGraphic(tag:String, width:Int, height:Int, color:String)
Will create an object with a solid color.

- `tag` - The sprite tag or object variable name.
- `width` - The width value in pixels of the object.
- `height` - The height value in pixels of the object.
- `color` - The hexadecimal color of the object.

Example: `makeGraphic('testBlackSquare', 1000, 1000, '000000')`

### setBlendMode(obj:String, blend:String)
Changes the blend mode of a lua sprite/object. _(Works similar to how Photoshop do it)_

[List of blend modes](https://api.haxe.org/flash/display/BlendMode.html)

- `obj` - The sprite tag or object variable name.
- `blend` - The blend mode to be used.

***

# Animations Functions
### playAnim(obj:String, name:String, forced:Bool = false, ?reverse:Bool = false, ?startFrame:Int = 0)
Plays animation name on a lua sprite/object with the tag or variable object.

- `obj` - The sprite tag or object variable name.
- `name` - The name of the animation to be used.
- `forced` - If set to `true`, then the current animation is the same as the one you're attempting to play, the animation will be reset, Default value is `false`.
- `reverse` - An optional parameter, Will reverse the animation when played.
- `startFrame` - An optional parameter, The starting frame of the animation to be played.

### addAnimation(obj:String, name:String, frames:Array\<Int\>, framerate:Int = 24, loop:Bool = true)
> **Note**: _This will only play the first prefix name on the `xml` file._

Adds an animation to the lua sprite/object with the specified indices on the `indices` parameter; it can override an animation. If there are using the same name on the `name` parameter.

- `obj` - The sprite tag or object variable name.
- `name` - The name of the animation to be used.
- `frames` - The frames for the animation that should be used, Example: `{1, 2, 3}`
- `framerate` - How many frames per second does the animation have, Default value is `24`.
- `loop` - This will loop the animation, Default value is `true`.

### addAnimationByPrefix(tag:String, name:String, prefix:String, framerate:Int = 24, loop:Bool = true)
Adds an animation to the lua sprite/object without the specified indices; it can override an animation. If there are using the same name on the `name` parameter.

- `tag` - The sprite tag or object variable name.
- `name` - The name of the animation to be used.
- `prefix` - The name of the animation inside of the `xml` file.
- `framerate` - How many frames per second does the animation have, Default value is `24`.
- `loop` - This will loop the animation, Default value is `true`.

### addAnimationByIndices(tag:String, name:String, prefix:String, indices:String, framerate:Int = 24)
Adds an animation to the lua sprite/object with the specified indices on `indices` parameter; it can override an animation. If there are using the same name on the `name` parameter.

If you want the looped version of this function use `addAnimationByIndicesLoop()`; all parameters and use are the same.

- `obj` - The sprite tag or object variable name.
- `name` - The name of the animation to be used.
- `prefix` - The name of the animation inside of the `xml` file.
- `indices` - The frames for the animation that should be used, must be separated each by a comma, Example: `1, 2, 3`
- `framerate` - How many frames per second does the animation have, Default value is `24`

### addOffset(obj:String, anim:String, x:Float, y:Float)
Adds an offset to the lua sprite/object.

- `obj` - The sprite tag or object variable name.
- `anim` - The name of the animation to be used.
- `x` - the new x value of the animation.
- `y` - the new y value of the animation.

***

# Object Order Functions
### setObjectOrder(obj:String, position:Int)
<ins>Sets the current lua sprite/object</ins> with a new layer value position. 

If you want the character group use `boyfriendGroup`, `gfGroup`, and `dadGroup`. They can be placed in the `obj` or the `position` parameters.

- `obj` - The sprite tag or object variable name.
- `position` - The new layer position order of the object.

### getObjectOrder(obj:String)
<ins>Gets the current lua sprite/object</ins> current layer value position.

- `obj` - The sprite tag or object variable name.

### objectsOverlap(obj1:String, obj2:String)
Checks if two lua sprite/object are overlaping eachother, Will return `false` if not.

- `obj1` - The first lua sprite/object tag.
- `obj2` - The second lua sprite/object tag.

***

# Scale Functions
### setGraphicSize(obj:String, multX:Float, multY:Float = 0)
Sets the lua sprite/object size <ins>by pixel width or height</ins>.

- `obj` - The sprite tag or object variable name.
- `multX` - The width of the object to be set, Default value is `1`.
- `multY` - The heigth of the object to be set, Default value is `1`.

### scaleObject(obj:String, multX:Float, multY:Float = 0)
Sets the lua sprite/object size <ins>by scale property</ins>.

- `obj` - The sprite tag or object variable name.
- `multX` - The width of the object to be set, Default value is `1`.
- `multY` - The heigth of the object to be set, Default value is `1`.

### updateHitbox(obj:String)
Updates the lua sprite/object hitboxes, use this if you're changing the scale of the lua sprite/object.

- `obj` - The sprite tag or object variable name.

***

# Position Functions
### getMidpointX(variable:String)
Gets the lua sprite/object current <ins>midpoint hitbox x value</ins>.

- `variable` - The sprite tag or object variable name.

### getMidpointY(variable:String)
Gets the lua sprite/object current <ins>midpoint hitbox y value</ins>.

### getGraphicMidpointX(variable:String)
Gets the lua sprite/object current <ins>midpoint graphic x value</ins>.

### getGraphicMidpointY(variable:String)
Gets the lua sprite/object current <ins>midpoint graphic y value</ins>.

### getScreenPositionX(variable:String)
Gets the lua sprite/object current <ins>x position value</ins>

### getScreenPositionY(variable:String)
Gets the lua sprite/object current <ins>y position value</ins>

### screenCenter(obj:String, pos:String = 'xy')
Sets the lua sprite/object to center with the `pos` parameter.

- `obj` - The sprite tag or object variable name.
- `pos` - The position you want to set in, it could be either: `X`, `Y`, `XY`.

***

# Other Functions
### setScrollFactor(obj:String, scrollX:Float, scrollY:Float)
> **Note**: _Boyfriend/Opponent have a scrollX/scrollY value of `1`, while Girlfriend have a scrollX/scrollY value of `0.95`, if you're gonna do background elements, it's highly suggested that you make the values something under `1`._

Changes the lua sprite/object that moves along the camera when switching to characters.

- `obj` - The sprite tag or object variable name.
- `scrollX` - The x value of the scroll factor to be set.
- `scrollY` - The y value of the scroll factor to be set.

### setObjectCamera(obj:String, camera:String)
Sets the lua sprite/object camera state.

- `obj` - The sprite tag or object variable name.
- `camera` - The camera state to be set in, Can be either `camGame`, `camHUD` or `camOther`.

### removeFromGroup(obj:String, index:Int, ?dontDestroy:Bool = false)
Removes all of a specific note type.

- `obj` - The current strum group type.
- `index` - The Member ID of the note to be removed, Opponent: `0,1,2,3` and Player: `4,5,6,7`.
- `dontDestroy` - An optional parameter. Won't clear the member from memory, you will probably never ever use this.

Example: To remove the first spawned note from the group you should use `removeFromGroup('notes', 0)`.

### updateHitboxFromGroup(group:String, index:Int)
Updates the note group hitboxes.

- `group` - The current strum group type.
- `index` - The Member ID of the note to be updated, Opponent: `0,1,2,3` and Player: `4,5,6,7`.