# About
Deprecation is a feature that is still supported but it is no longer be recommended for use. The functions featured here are deprecated obviously, due to name changes. This page of this wiki is to inform people to not use these functions and instead to use the new ones. Additionally some functions here are removed for how useless they are.

If you called a deprecated function it will throw an error message. Telling you to use the new corresponding function of that function. You can disable the message by setting the `luaDeprecatedWarnings` variable to `true`, for some reason.

***

# Event Callbacks
## Note Callbacks
### goodNoteHitPost(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float)


- `membersIndex`
- `noteData`
- `noteType`
- `isSustainNote`

### opponentNoteHitPost(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float)

- `membersIndex`
- `noteData`
- `noteType`
- `isSustainNote`

***

# Custom Sprites
## Sprite Graphic Functions
### luaSpriteMakeGraphic(tag:String, width:Int, height:Int, color:String):Void

## Sprite Animation Functions
### luaSpriteAddAnimationByPrefix(tag:String, name:String, prefix:String, framerate:Int = 24, loop:Bool = true):Void
### luaSpriteAddAnimationByIndices(tag:String, name:String, prefix:String, indices:String, framerate:Int = 24):Void
### addAnimationByIndicesLoop(obj:String, name:String, prefix:String, indices:String, framerate:Int = 24):Void
### luaSpritePlayAnimation(tag:String, name:String, forced:Bool = false):Void
### characterPlayAnim(character:String, animation:String, ?forced:Bool = false)
### objectPlayAnimation(obj:String, name:String, forced:Bool = false, ?startFrame:Int = 0):Bool

***

# Object Functions
## Scale Functions
### scaleLuaSprite(tag:String, x:Float, y:Float):Bool

***

# General Functions
## Miscellaneous Functions
### setLuaSpriteScrollFactor(tag:String, scrollX:Float, scrollY:Float):Bool
### setLuaSpriteCamera(tag:String, camera:String = ''):Bool

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

# Reflection Functions
## Property Functions
### setPropertyLuaSprite(object:String, variable:String, value:Dynamic):Void
> Added in version <kbd>0.4</kbd>, but later deprecated in version <kbd>0.7</kbd>.

> Recommended to use the `setProperty()` function, which is way more better than this.

Sets the specified object's properties with a new value.

- `object` - The object to set a new property value to.
- `variable` - The object's property or attributes to set to.
- `value` - The new value to set to.

### getPropertyLuaSprite(object:String, variable:String):Void
> Added in version <kbd>0.4</kbd>, but later deprecated in version <kbd>0.7</kbd>.

> Recommended to use the `getProperty()` function, which is way more better than this.

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

> Recommended to use these alternative functions: `setOnLuas()`, `setOnHScript()`, and `setOnScripts()` functions.

Sets a global variable from a different running Lua scripts with a new value.

- `luaFile` - The specified file path directory of the Lua script to utilize.
- `varName` - The global variable within the given Lua script to set variable.
- `value` - The new value to set the variable to.

### getGlobalFromScript(luaFile:String, varName:String):Any
> Added in version <kbd>0.6</kbd>, but later removed in version <kbd>1.0</kbd>.

> Recommended to use these alternative functions: `setOnLuas()`, `setOnHScript()`, and `setOnScripts()` functions.

Gets a global variable from a different running Lua scripts current value.

- `luaFile` - The specified file path directory of the Lua script to utilize.
- `varName` - The global variable within the given Lua script to get variable's current value.

# Sound & Music Functions
## Sound Fading Functions
### musicFadeIn(duration:Float, fromValue:Float = 0, toValue:Float = 1):Void
> Added in version <kbd>0.4</kbd>, but later deprecated in version <kbd>0.7</kbd>. 

> You can still fade-in the music by utilizing the `soundFadeIn()`, without giving the sound tag name while said music is currently playing.

Makes the <ins>music fade-in</ins>, increasing the volume to its current volume at the start of the music.

- `duration` - The amount of duration length of the fade-in from the start and to the end.
- `fromValue` - An optional parameter, the starting volume value to start the fade-in; Default value: `0`.
- `toValue` - An optional parameter, the ending volume value to end the fade-in; Default value: `1`.

### musicFadeOut(duration:Float, toValue:Float = 0):Void
> Added in version <kbd>0.4</kbd>, but later deprecated in version <kbd>0.7</kbd>.

> You can still fade-in the music by utilizing the `soundFadeIn()`, without giving the sound tag name while said music is currently playing.

Makes the <ins>music fade-out</ins>, decreasing the volume until its mute at the near-end of the music.

- `duration` - The amount of duration length of the fade-out to end.
- `toValue` - An optional parameter, the target volume value of the fade-out; Default value: `1`.