# Graphics Functions
### makeGraphic(tag:String, width:Int, height:Int, color:String)
Creates a colored screen object.

- `tag` - The sprite tag or object variable name.
- `width` - The width value in pixels of the colored screen.
- `height` - The height value in pixels of the colored screen.
- `color` - The color of the screen. **(Must be a Hexadecimal Color Code)**

Example: Use `makeGraphic('testBlackSquare', 1000, 1000, '000000')` to make the lua Sprite with the tag "testBlackSquare" turn into a 1000x1000 black square.

### setBlendMode(obj:String, blend:String)
Changes the blend mode of a sprite object. _(Works similar to how Photoshop do it)_

[List of blend modes](https://api.haxe.org/flash/display/BlendMode.html)

- `obj` - The sprite tag or object variable name.
- `blend` - The blend mode to use.

Example: `add`, `darken`, `normal`

***

# Animations Functions
### addAnimationByPrefix(tag:String, name:String, prefix:String, framerate:Int = 24, loop:Bool = true)
Adds an animation name to the lua sprite/object using the tag/variable tag, it will also overwrite another animation using the same name.

- `tag` - The sprite tag or object variable name.
- `name` - The animation name to played.
- `prefix` - The animation name on the `xml` file.
- `framerate` - An optional value, how many frames per second does the animation have, Default value is `24`.
- `loop` - An optional value, This will loop the animation, Default value is `true`.

### addAnimationByIndices(tag:String, name:String, prefix:String, indices:String, framerate:Int = 24)
Adds an animation name to the lua sprite/object using the tag/variable tag <ins>with the specified indices on indices</ins>, it will also overwrite another animation using the same name.

- `obj` - The sprite tag or object variable name.
- `name` - The animation name to played.
- `prefix` - The animation name on the `xml` file.
- `indices` - The frames for the animation that should be used, must be separated each by a comma, Example: `1, 2, 3, 4, 5, 6`.
- `framerate` - An optional value, how many frames per second does the animation have, Default value is `24`

### objectPlayAnimation(obj:String, name:String, forced:Bool = false)
Plays animation name on a lua sprite/object with the tag or variable object.

- `obj` - The sprite tag or object variable name.
- `name` - The animation name to played.
- `forced` - If `true`, if the current animation is the same as the one you're attempting to play, the animation will be reset, Default value is `false`.

### playAnim(obj:String, name:String, forced:Bool = false, ?reverse:Bool = false, ?startFrame:Int = 0)
Works the same as `objectPlayAnimation()` but with different parameters.

- `obj` - The sprite tag or object variable name.
- `name` - The animation name to played.
- `forced` - If `true`, if the current animation is the same as the one you're attempting to play, the animation will be reset, Default value is `false`.
- `reverse` - Will reverse the animation when played.
- `startFrame` - The starting frame on the animation to played.

***

# Object Order Functions
### objectsOverlap(obj1:String, obj2:String)
If the object is overlaping on a another object it will return `true`, if not then `false`.

- `obj1` - The main object.
- `obj2` - The object that will overlap the main object. 

### setObjectOrder(obj:String, position:Int)
<ins>Sets the objects</ins> layer position.

- `obj` - The sprite tag or object variable name.
- `position` - The new position order of the object.

### getObjectOrder(obj:String)
> **Note**: _when referring to characters, you must refer to their group `boyfriendGroup`, `gfGroup`, `dadGroup`._

<ins>Gets the objects</ins> layer position.

- `obj` - The sprite tag or object variable name.

***

# Scale Functions
### setGraphicSize(obj:String, multX:Float, multY:Float = 0)
Sets the graphic size by pixel.

- `obj` - The sprite tag or object variable/playstate name.
- `multX` - The width of the object to be set, Default value is `1`.
- `multY` - The heigth of the object to be set, Default value is `1`.

### scaleObject(obj:String, multX:Float, multY:Float = 0)
Sets the object size by `.scale` property.

- `obj` - The sprite tag or object variable/playstate name.
- `multX` - The width of the object to be set, Default value is `1`.
- `multY` - The heigth of the object to be set, Default value is `1`.

### updateHitbox(obj:String)
Use this to update the hitbox in case you change the sprite's scale manually or via a tween.

- `obj` - The sprite tag or object variable/playstate name.

***

# Other Functions
### setScrollFactor(obj:String, scrollX:Float, scrollY:Float)
Changes how much a sprite moves along with the camera.

- `obj` - The sprite tag or object variable name.
- `scrollX` - The x value of the scroll factor.
- `scrollY` - The y value of the scroll factor.

> **Note**: _Boyfriend/Opponent have a scrollX/scrollY value of `1`, while Girlfriend have a scrollX/scrollY value of `0.95`, if you're gonna do background elements, it's highly suggested that you make the values something under `1`._

### setObjectCamera(obj:String, camera:String)
Changes on which camera should your object be drawn on.

- `obj` - The sprite tag or object variable name.
- `camera` - Can be either `camGame`, `camHUD` or `camOther`.

### addOffset(obj:String, anim:String, x:Float, y:Float)
Adds an offset of the animation.

- `obj` - The sprite tag or object variable name.
- `anim` - The animation name to played.
- `x` -  the new x value of the animation.
- `y` -  the new x value of the animation.

### getMidpointX(variable:String)
Gets the <ins>midpoint x value</ins> of the object.

- `variable` - The sprite tag or object variable name.

### getMidpointY(variable:String)
Gets the <ins>midpoint y value</ins> of the object.

- `variable` - The sprite tag or object variable name.

### getScreenPositionX(variable:String)
Gets the <ins>x value of the objects</ins> screen position.

- `variable` - The sprite tag or object variable name.

### getScreenPositionY(variable:String)
Gets the <ins>y value of the objects</ins> screen position.

- `variable` - The sprite tag or object variable name.

### screenCenter(obj:String, pos:String = 'xy')
Sets the object to the center of the game screen.

- `obj` - The sprite/text tag or object variable name.
- `pos` - The position you want to set in, it could be either: `X`, `Y`, `XY`.