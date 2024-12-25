# About
Deprecation is a feature that is still supported but it is no longer be recommended for use. The functions featured here are deprecated obviously, due to name changes. This page of this wiki is to inform people to not use these functions and instead to use the new ones. Additionally some functions here are removed for how useless they are.

If you called a deprecated function it will throw an error message. Telling you to use the new corresponding function of that function. You can disable the message by setting the `luaDeprecatedWarnings` variable to `true`, for some reason.

***

# Event Callbacks
## Note Callbacks
### goodNoteHitPost(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float)
> Added in version <kbd>0.7.2</kbd>, but later removed in version <kbd>0.7.3</kbd>, due to having the same behavior as the `goodNoteHit()` callback.

Triggered after the player hits a note.

- `membersIndex` - The current note member ID index.
- `noteData` - The current direction index of the note; Goes from: 0 to 3, basically left, down, up and right.
- `noteType` - The current notetype of the note.
- `isSustainNote` - Whether the notes are sustain (long notes) or not.

### opponentNoteHitPost(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float)
> Added in version <kbd>0.7.2</kbd>, but later removed in version <kbd>0.7.3</kbd>, due to having the same behavior as the `opponentNoteHit()` callback.

Triggered after the player opponent a note.

- `membersIndex` - The current note member ID index.
- `noteData` - The current direction index of the note; Goes from: 0 to 3, basically left, down, up and right.
- `noteType` - The current notetype of the note.
- `isSustainNote` - Whether the notes are sustain (long notes) or not.

***

# Custom Sprites
## Sprite Graphic Functions
### luaSpriteMakeGraphic(tag:String, width:Int, height:Int, color:String):Void
> Added in version <kbd>0.4</kbd>, but later deprecated in version <kbd>0.4.2</kbd>, due to being renamed to `makeGraphic`.

> Recommended to must use the `makeGraphic()` function.

Makes a flat colored square graphic, an alternative to images.

- `tag` - The given sprite object name tag to make a colored square graphic.
- `width` - An optional parameter, the specified width value in pixels to inherit; Default value: `256`.
- `height` - An optional parameter, the specified height value in pixels to inherit; Default value: `256`.
- `color` - An optional parameter, the specified color value to render; Default value: `FFFFFF`.

## Sprite Animation Functions
### luaSpriteAddAnimationByPrefix(tag:String, name:String, prefix:String, framerate:Int = 24, loop:Bool = true):Void
> Added in version <kbd>0.3.1</kbd>, but later deprecated in version <kbd>0.4.2</kbd>, due to being renamed to `addAnimationByPrefix`.

> Recommended to must use the `addAnimationByPrefix()` function.

<ins>Adds an animation by the prefix within its animation XML file</ins> to the given given sprite object. Returns `true`, if the addition works properly.

- `tag` - The given sprite object name tag to add an animation by its prefix.
- `name` - The given animation name to inherit for later use.
- `prefix` - The given prefix name within the animation XML file to play with.
- `framerate` - An optional parameter, the given FPS for the animation to play; Default value: `24`.
- `loop` - An optional parameter, whether the animation will loop after finishing; Default value: `true`.

### luaSpriteAddAnimationByIndices(tag:String, name:String, prefix:String, indices:String, framerate:Int = 24):Void
> Added in version <kbd>0.3.1</kbd>, but later deprecated in version <kbd>0.4.2</kbd>, due to being renamed to `addAnimationByIndices`.

> Recommended to must use the `addAnimationByIndices()` function.

<ins>Adds an animation by indicating what frames to play an animation</ins> to the given given sprite object.

- `tag` - The given sprite object name tag to add an animation by each of its indices.
- `name` - The given animation name to inherit for later use.
- `prefix` - The given prefix name within the animation XML file to play with.
- `indices` - The indices indicating what animation frames to play in what order.
- `framerate` - An optional parameter, the given FPS for the animation to play; Default value: `24`.

### addAnimationByIndicesLoop(tag:String, name:String, prefix:String, indices:String, framerate:Int = 24):Void
> Added in version <kbd>0.6.3</kbd>, but later deprecated in version <kbd>0.7</kbd>, due to the `addAnimationByIndices()` function supports looping animations.

<ins>Adds an animation by indicating what frames to play an animation</ins> to the given given sprite object. But it loops infinitely after finishing playing the animation.

- `tag` - The given sprite object name tag to add an animation by each of its indices.
- `name` - The given animation name to inherit for later use.
- `prefix` - The given prefix name within the animation XML file to play with.
- `indices` - The indices indicating what animation frames to play in what order.
- `framerate` - An optional parameter, the given FPS for the animation to play; Default value: `24`.

### luaSpritePlayAnimation(tag:String, name:String, forced:Bool = false):Void
> Added in version <kbd>0.3.1</kbd>, but later deprecated in version <kbd>0.4.2</kbd>, due to being renamed to `objectPlayAnimation`. Then later being renamed again to `playAnim` in version <kbd>0.6</kbd>.

> Recommended to must use the `playAnim()` function.

<ins>Plays an animation</ins> to the given sprite object.

- `tag` - The given sprite object name tag to play an animation.
- `name` - The given animation name to play an animation.
- `forced` - An optional parameter, whether the animation will restart while animation is currently playing; Default value: `false`.

### objectPlayAnimation(tag:String, name:String, forced:Bool = false, ?startFrame:Int = 0):Bool
> Added in version <kbd>0.4.2</kbd>, but later deprecated in version <kbd>0.6</kbd>, due to being renamed to `playAnim`.

> Recommended to must use the `playAnim()` function.

<ins>Plays an animation</ins> to the given sprite object. Returns `true`, if the playing works properly.

- `tag` - The given sprite object name tag to play an animation.
- `name` - The given animation name to play an animation.
- `forced` - An optional parameter, whether the animation will restart while animation is currently playing; Default value: `false`.
- `startFrame` - An optional parameter, the specified starting frame for the animation to play at; Default value: `0`.

### characterPlayAnim(characterType:String, name:String, ?forced:Bool = false):Void
> Added in version <kbd>0.3.1</kbd>, but later deprecated in version <kbd>0.7</kbd>, due character animations can be played by utilizing the `playAnim()` function.

> Recommended to must use the `playAnim()` function.

Plays an animation to the specified character type.

- `characterType` - The specified character type to play an animation; Can be either: `boyfriend`, `dad`, or `gf`.
- `name` - The specified name to play an animation.
- `forced` - An optional parameter, whether the animation will restart while animation is currently playing; Default value: `false`.

***

# HScript Interpreter Functions
### addHaxeLibrary(name:String, ?package:String = ''):Void
> Added in version <kbd>0.6.1</kbd>, but later removed in a later presumably version <kbd>0.1.1</kbd>.

> You can already import libraries within the interpreted Haxe code.

Imports the given library packages to the interpreted Haxe code.

- `name` - The given library name to be imported.
- `package` - An optional parameter, the package of the given library to add, if said package of that library exists. 

Example:
> Imports this Haxe library.
```lua
addHaxeLibrary('ShaderFilter', 'openfl.filters')
```

***

# Object Functions
## Scale Functions
### scaleLuaSprite(object:String, x:Float, y:Float):Bool
> Added in version <kbd>0.4</kbd>, but later deprecated in version <kbd>0.4.1</kbd>, due to being renamed to `scaleObject`.

> Recommended to must use the `scaleObject()` function.

Sets the given <ins>object's graphic by size property</ins>. If below `1`, zoom-out; if above `1`, zoom-in. Returns `true`, if the scaling works properly.

- `object` - The given object name tag to set its graphic size.
- `x` - The new width size value to set to.
- `y` - An optional parameter, The new height size value to set to; Default value: `0`.


## Miscellaneous Functions
### setLuaSpriteScrollFactor(object:String, scrollX:Float, scrollY:Float):Bool
> Added in version <kbd>0.3.1</kbd>, but later deprecated in version <kbd>0.4.2</kbd>, due to being renamed to `setScrollFactor`.

> Recommended to must use the `setScrollFactor()` function.

Sets the given object's scroll factor value.

- `object` - The given object name tag to set a new scroll factor value to.
- `scrollX` - The amount of scroll factor by x value to set to.
- `scrollY` - The amount of scroll factor by y value to set to.

### setLuaSpriteCamera(object:String, camera:String = ''):Bool
> Added in version <kbd>0.3.1</kbd>, but later deprecated in version <kbd>0.4.2</kbd>, due to being renamed to `setObjectCamera`.

> Recommended to must use the `setObjectCamera()` function.

Sets the given object's camera state to apply to.

- `object` - The given object name tag to set a new camera state to.
- `camera` - An optional parameter, the specified camera state to apply to; Can be either: `camGame`, `camHUD` or `camOther`.

***

# General Functions
## Rating Accuracy Functions
### Getters
### getScore():Int
> Added in version <kbd>0.6</kbd>, but later removed in version <kbd>1.0</kbd> Pre-release, due to being similar to the `score` variable.

Gets the current <ins>**song score total** value</ins>.

### getMisses():Int
> Added in version <kbd>0.6</kbd>, but later removed in version <kbd>1.0</kbd> Pre-release, due to being similar to the `misses` variable.

Gets the current <ins>**song miss total** value</ins>.

### getHits():Int
> Added in version <kbd>0.6</kbd>, but later removed in version <kbd>1.0</kbd> Pre-release, due to being similar to the `hits` variable.

Gets the current <ins>**song hit total** value</ins>.

***

# Reflection Functions
## Property Functions
### setPropertyLuaSprite(object:String, variable:String, value:Dynamic):Void
> Added in version <kbd>0.3</kbd>, but later deprecated in version <kbd>0.4.1</kbd>.

> Recommended to must use the `setProperty()` function.

Sets the specified object's properties with a new value.

- `object` - The object to set a new property value to.
- `variable` - The object's property or attributes to set to.
- `value` - The new value to set to.

### getPropertyLuaSprite(object:String, variable:String):Void
> Added in version <kbd>0.3</kbd>, but later deprecated in version <kbd>0.4.1</kbd>.

> Recommended to must use the `getProperty()` function.

Gets the specified object's properties current value.

- `object` - The object to get it current property value from.
- `variable` - The object's property or attributes to get its current value from.

## Group Properties
### updateHitboxFromGroup(group:String, index:Int):Void
> Added in version <kbd>0.5.1</kbd>, but later deprecated in version <kbd>1.0</kbd> Pre-release. 

Updates the object's hitboxes with its specified member ID.

# Scripting & File Functions
## Scripting Functions
### setGlobalFromScript(luaFile:String, varName:String, value:Dynamic):Void
> Added in version <kbd>0.6</kbd>, but later removed in version <kbd>1.0</kbd>.

> Recommended to must use these alternative functions: `setOnLuas()`, `setOnHScript()`, and `setOnScripts()` functions.

Sets a global variable from a different running Lua scripts with a new value.

- `luaFile` - The specified file path directory of the Lua script to utilize.
- `varName` - The global variable within the given Lua script to set variable.
- `value` - The new value to set the variable to.

### getGlobalFromScript(luaFile:String, varName:String):Any
> Added in version <kbd>0.6</kbd>, but later removed in version <kbd>1.0</kbd>.

> Recommended to must use these alternative functions: `setOnLuas()`, `setOnHScript()`, and `setOnScripts()` functions.

Gets a global variable from a different running Lua scripts current value.

- `luaFile` - The specified file path directory of the Lua script to utilize.
- `varName` - The global variable within the given Lua script to get variable's current value.

# Sound & Music Functions
## Sound Fading Functions
### musicFadeIn(duration:Float, fromValue:Float = 0, toValue:Float = 1):Void
> Added in version <kbd>0.4</kbd>, but later deprecated in version <kbd>0.4.1</kbd>. 

> You can still fade-in the music by utilizing the `soundFadeIn()`, without giving the sound tag name while said music is currently playing.

Makes the <ins>music fade-in</ins>, increasing the volume to its current volume at the start of the music.

- `duration` - The amount of duration length of the fade-in from the start and to the end.
- `fromValue` - An optional parameter, the starting volume value to start the fade-in; Default value: `0`.
- `toValue` - An optional parameter, the ending volume value to end the fade-in; Default value: `1`.

### musicFadeOut(duration:Float, toValue:Float = 0):Void
> Added in version <kbd>0.4</kbd>, but later deprecated in version <kbd>0.4.1</kbd>.

> You can still fade-in the music by utilizing the `soundFadeIn()`, without giving the sound tag name while said music is currently playing.

Makes the <ins>music fade-out</ins>, decreasing the volume until its mute at the near-end of the music.

- `duration` - The amount of duration length of the fade-out to end.
- `toValue` - An optional parameter, the target volume value of the fade-out; Default value: `1`.