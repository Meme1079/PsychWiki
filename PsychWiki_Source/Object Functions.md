# Graphics Functions

### makeGraphic(tag:String, width:Int, height:Int, color:String)
Spawns an colored screen

- `tag` - Lua Sprite tag or Object variable name
- `width` - The width of the sprite object
- `height` - The height of the sprite object
- `color` - The color of the sprite object **(Must be a Hexadecimal Color)**

Example: Use `makeGraphic('testBlackSquare', 1000, 1000, '000000')` to make the Lua Sprite with the tag "testBlackSquare" turn into a 1000x1000 black square.

### setBlendMode(obj:String, blend:String)
Changes the blend mode of a Sprite (Works similar to how Photoshop do it)

- `obj` - Lua Sprite tag or Object variable name
- `blend` - Blend mode to use. Example: `add`, `darken`, `normal`

[List of blend modes](https://api.haxe.org/flash/display/BlendMode.html)

### screenCenter(obj:String, pos:String = 'xy')
Sets the object to center of the screen

- `obj` - The Sprite/Text tag or Object variable name
- `pos` - The position you want to set in, it could be either: `X`, `Y`, `XY`

***

# Animations Functions

### addAnimationByPrefix(tag:String, name:String, prefix:String, framerate:Int = 24, loop:Bool = true)
Adds an animation name to the Lua Sprite/Object using the tag/variable tag, it will also overwrite another animation using the same name.

- `obj` - Lua Sprite tag or Object variable name
- `name` - Animation to be added's name
- `prefix` - Animation name on the .xml file
- `framerate` - Optional value, how many frames per second does the animation have, Default value is 24
- `loop` - Optional value, should the animation loop? Default value: true

### addAnimationByIndices(tag:String, name:String, prefix:String, indices:String, framerate:Int = 24)
Adds an animation name to the Lua Sprite/Object using the tag/variable tag with the specified indices on indices, it will also overwrite another animation using the same name.

- `obj` - Lua Sprite tag or Object variable name
- `name` - Animation to be added's name
- `prefix` - Animation name on the .xml file
- `indices` - What frames the animation should use, must be separated with a comma. Example: 1, 2, 3, 4, 5, 3, 4, 5
- `framerate` - Optional value, how many frames per second does the animation have, Default value is 24

### objectPlayAnimation(obj:String, name:String, forced:Bool = false)
Plays animation name on a Lua Sprite/Object with the tag/variable obj.

- `obj` - Lua Sprite tag or Object variable name
- `name` - Animation name to play
- `forced` - If true, the animation will reset if the current animation is the same as the one you're trying to play. Default value is false

***

# Object Order/Removing

### objectsOverlap(obj1:String, obj2:String)
Sets the object to overlap the layer position of the object

- `obj1` - The first object that will overlap the second object
- `obj2` - The second object 

### setObjectOrder(obj:String, position:Int)
Sets the object's layer position

- `obj` - Object variable/Lua Sprite tag
- `position` - New position the object will be in

### getObjectOrder(obj:String)
Gets the object's layer position

- `obj` - Object variable/Lua Sprite tag

(note: when referring to characters, you must refer to their group) `boyfriendGroup`, `gfGroup`, `dadGroup`

### removeFromGroup(obj:String, index:Int, dontDestroy:Bool = false)
Removes a note group I think?

- `obj` - Group/Array variable
- `index` - Member ID
- `dontDestroy` - Optional variable. Won't clear member from memory, you will probably never ever use this.

Example: To remove the first spawned note from the group you should use `removeFromGroup('notes', 0)`
***

# Scale Functions

### setGraphicSize(obj:String, multX:Float, multY:Float = 0)
Sets the Graphic size

- `obj` - Object from PlayState or Lua Sprite
- `multX` - Horizontal multiplier, default value is 1
- `multY` - Vertical multiplier, default value is 1

### scaleObject(obj:String, multX:Float, multY:Float = 0)
Works identically to setGraphicSize

### updateHitbox(obj:String)
Use this to update the hitbox in case you change the sprite's scale manually or via a tween.

- `obj` - Object from PlayState or Lua Sprite

***

# Reseting Tags

### resetSpriteTag(tag:String)
Resets the Sprite tag

- `tag` - The Lua Sprite you want to reset

### resetTextTag(tag:String)
Resets the Text tag

- `tag` - The Lua Text you want to reset

***

# Other Functions
### setScrollFactor(obj:String, scrollX:Float, scrollY:Float)
Changes how much a Sprite moves along with the camera.

- `obj` - Lua Sprite tag or Object variable name
- `scrollX` - Horizontal movement multiplier
- `scrollY` - Vertical movement multiplier

Note: Boyfriend/Opponent have a scrollX/scrollY value of 1, while Girlfriend have a scrollX/scrollY value of 0.95, if you're gonna do background elements, it's highly suggested that you make the values something under 1.

### setObjectCamera(obj:String, camera:String)
Changes on which camera should your object be drawn on

- `obj` - Lua Sprite tag or Object variable name
- `camera` - `camGame`, `camHUD` or `camOther`
