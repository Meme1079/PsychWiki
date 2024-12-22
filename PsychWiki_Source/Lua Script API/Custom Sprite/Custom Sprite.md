<!-- 

TODO: Will be added in 17.1.0 & Knuckles

# Configuration
## Setting Up
## Creating Sprites
### Adding Animations

***

# FlxAnimate

*** 
-->

# Sprite Functions
### makeLuaSprite(tag:String, ?image:String = null, ?x:Float = 0, ?y:Float = 0):Void
Initializes the creation of a sprite object. This will not add the sprite object immediately into the game yet.

- `tag` - The unique tag name for the sprite object to inherit for later use.
- `image` - An optional parameter, the given image graphic for the sprite to render; starts within the `images` folder directory.
- `x` - An optional parameter, the specified x-position value of the sprite object to be set at; Default value: `0`.
- `y` - An optional parameter, the specified y-position value of the sprite object to be set at; Default value: `0`.

### makeAnimatedLuaSprite(tag:String, ?image:String = null, ?x:Float = 0, ?y:Float = 0, ?spriteType:String = "auto"):Void
Initializes the creation of a sprite object that supports animation. This will not add the sprite object immediately into the game yet.

- `tag` - The unique tag name for the sprite object to inherit for later use.
- `image` - An optional parameter, the given image graphic for the sprite to render; starts within the `images` folder directory.
- `x` - An optional parameter, the specified x-position value of the sprite object to be set at; Default value: `0`.
- `y` - An optional parameter, the specified y-position value of the sprite object to be set at; Default value: `0`.
- `spriteType` - An optional parameter, An optional parameter, the sprite's atlas format to use when playing animations. Atlas formats are a bunch of data for each of the sprites corresponding animation to play. The most common one is sparrow for xml files; Default value: `auto`.
     - `sparrow` - A group of animation images into one large sprite-sheet, with a provided XML file for each animation frames; Alternative values: `sparrowatlas`, or `sparrowv2`.
     - `packer` - A single animation images into a single sheet, with a provided TXT file for each animation frames; <br>Alternative values: `packeratlas`, or `pac`.
     - `aseprite` - A group of pixel-art images into one large sprite-sheet, with a provided JSON file for each animation frames; Alternative values: `ase`, `json`, or `jsoni8`.

### addLuaSprite(tag:String, ?front:Bool = false):Void
Adds the given sprite object into the game. Once a sprite object has been added it will overlap the previous added object. Causing the recently added object to be placed in front of every object in the game.

- `tag` - The given sprite object name tag to add within the game.
- `front` - An optional parameter, whether the given sprite object will be in-front of every object, regardless of any overlaps; Default value: `false`.

### removeLuaSprite(tag:String, ?destroy:Bool = true, ?group:String = null):Void
Removes the given sprite object from the game.

- `tag` - The given sprite object name tag to remove from the game.
- `destroy` - An optional parameter, whether the given sprite object will be permanently removed or not; Default value: `true`.
- `group` - An optional parameter, the specified group to remove sprite object within it.

***

# Sprite Graphic Functions
### makeGraphic(tag:String, width:Int = 256, height:Int = 256, color:String = 'FFFFFF'):Void
Makes a flat colored square graphic, an alternative to images.

- `tag` - The given sprite object name tag to make a colored square graphic.
- `width` - An optional parameter, the specified width value in pixels to inherit; Default value: `256`.
- `height` - An optional parameter, the specified height value in pixels to inherit; Default value: `256`.
- `color` - An optional parameter, the specified color value to render; Default value: `FFFFFF`.

### loadGraphic(tag:String, image:String, ?gridX:Int = 0, ?gridY:Int = 0):Void
<ins>Loads a new embedded image</ins> for the sprite object to render from.

- `tag` - The given sprite object name tag to load a new image.
- `image` - The given image graphic for the sprite to load and render.
- `gridX` - An optional parameter, the specified width grid for the animated sprite object to render; Default value: `0`.
- `gridY` - An optional parameter, the specified height grid for the animated sprite object to render; Default value: `0`.

***

# Sprite Animation Functions
### addAnimation(tag:String, name:String, frames:Array\<Int\>, framerate:Int = 24, loop:Bool = true):Void
<ins>Adds an animation</ins> to the given sprite object.

- `tag` - The given sprite object name tag to add an animation.
- `name` - The given animation name to inherit for later use.
- `frames` - The indices indicating what animation frames to play in what order.
- `framerate` - An optional parameter, the given FPS for the animation to play; Default value: `24`.
- `loop` - An optional parameter, whether the animation will loop after finishing; Default value: `false`.

### addAnimationByPrefix(tag:String, name:String, prefix:String, framerate:Int = 24, loop:Bool = true):Bool
<ins>Adds an animation by the prefix within its animation XML file</ins> to the given given sprite object. Returns `true`, if the addition works properly.

- `tag` - The given sprite object name tag to add an animation by its prefix.
- `name` - The given animation name to inherit for later use.
- `prefix` - The given prefix name within the animation XML file to play with.
- `framerate` - An optional parameter, the given FPS for the animation to play; Default value: `24`.
- `loop` - An optional parameter, whether the animation will loop after finishing; Default value: `true`.

### addAnimationByIndices(tag:String, name:String, prefix:String, indices:String, framerate:Int = 24, loop:Bool = false):Void
<ins>Adds an animation by indicating what frames to play an animation</ins> to the given given sprite object.

- `tag` - The given sprite object name tag to add an animation by each of its indices.
- `name` - The given animation name to inherit for later use.
- `prefix` - The given prefix name within the animation XML file to play with.
- `indices` - The indices indicating what animation frames to play in what order.
- `framerate` - An optional parameter, the given FPS for the animation to play; Default value: `24`.
- `loop` - An optional parameter, whether the animation will loop after finishing; Default value: `false`.

### playAnim(tag:String, name:String, forced:Bool = false, ?reverse:Bool = false, ?startFrame:Int = 0):Bool
<ins>Plays an animation</ins> to the given sprite object. Returns `true`, if the playing works properly.

- `tag` - The given sprite object name tag to play an animation.
- `name` - The given animation name to play an animation.
- `forced` - An optional parameter, whether the animation will restart while animation is currently playing; Default value: `false`.
- `reverse` - An optional parameter, whether it will play it in reverse or not; Default value: `false`.
- `startFrame` - An optional parameter, the specified starting frame for the animation to play at; Default value: `0`.

### addOffset(tag:String, name:String, offsetX:Float, offsetY:Float):Bool
Adds the given offset of the animation. Returns `true`, if the offseting works properly

- `tag` - The given sprite object name tag to add offset to an animation.
- `name` - The given animation name to add offset to.
- `offsetX` - The specified offset by x-position to add.
- `offsetY` - The specified offset by y-position to add.

### loadFrames(tag:String, image:String, spriteType:String = "sparrow"):Void
<ins>Loads an animation</ins> to the given sprite object, if said object doesn't have animation supported.

- `tag` - The given sprite object name tag to load an animation.
- `image` - The given image graphic for the sprite to render; starts within the `images` folder directory.
- `spriteType` - An optional parameter, An optional parameter, the sprite's atlas format to use when playing animations. Atlas formats are a bunch of data for each of the sprites corresponding animation to play. The most common one is sparrow for xml files; Default value: `auto`.
     - `sparrow` - A group of animation images into one large sprite-sheet, with a provided XML file for each animation frames; Alternative values: `sparrowatlas`, or `sparrowv2`.
     - `packer` - A single animation images into a single sheet, with a provided TXT file for each animation frames; <br>Alternative values: `packeratlas`, or `pac`.
     - `aseprite` - A group of pixel-art images into one large sprite-sheet, with a provided JSON file for each animation frames; Alternative values: `ase`, `json`, or `jsoni8`.