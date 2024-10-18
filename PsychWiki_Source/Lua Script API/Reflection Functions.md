# Property Functions
## Property Setters
### setProperty(variable:String, value:Dynamic, ?allowMaps:Bool = false)
Sets the <ins>Playstates' instance variables</ins> to a new value. It can also sets the Lua object's properties such as `x`, `y`, `alpha`, and so on. You can check for more properties it can set to, just [click here](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Reflection-Functions#object-attributes).

- `variable` - The Playstates' instance variable to set the value to.
- `value` - The said new value to set to.
- `allowMaps` - An optional parameter, allows you to use haxe maps or dictionaries to set the key-value pairs' value. If the instance variable holds a map type; Default value: `false`.

Examples:
```lua
function onCreate()
     setProperty('health', 2) -- sets it to full health
end
```
```lua
function onCreate()
     makeLuaText('luaMessage', 'ERROR: nothing', 0, 0, 0)
     setObjectCamera('luaMessage', 'camHUD')
     setTextColor('luaMessage', 'ff0000')
     setProperty('luaMessage.alpha', 0.5) -- changes the opacity of the text
     addLuaText('luaMessage')
end
```

### setPropertyFromClass(classVar:String, variable:String, value:Dynamic, ?allowMaps:Bool = false, ?allowInstances:Bool = false)
Sets one of the <ins>classes' instance variables</ins> to a new value.

It can also uses haxe libraries to set its own instance variables to set a new value to; Examples: `FlxG`, `FlxMath`, `FlxBasic`. Keep in mind that it should contain the library package; Example: `flixel.FlxG`. You can check each haxe libraries package by [clicking here](https://api.haxeflixel.com/flixel/FlxBasic.html).

> [!WARNING]
> _If you're using Psych Engine version `0.7` and below. The `classVar` parameter should have the file name in which the class is located, followed by a dot <kbd>.</kbd> character for separation. Followed by the the said class you'd want to use; Example: `backend.ClientPrefs`, `states.PlayState`, etc. You can check where the class files are located, [just click here!!!!](https://github.com/ShadowMario/FNF-PsychEngine/tree/main/source)<br><br>Another thing is that when trying to the `ClientPrefs` instance variables it should have the prefix `data` in the `variables` parameter. For you to get the instance variables; Example: `data.comboStacking`, `data.lowQuality`, etc_

- `classVar` - The specified name of the class; Examples: `ClientPrefs`, `Conductor`, `CoolUtil`, etc.
- `variable` - The classes' instance variable value to set a new value to.
- `value` - The new value for the classes' instance variable to have.
- `allowMaps` - An optional parameter, allows the ability to use haxe maps or dictionaries to set key-value pair values; Default value: `false`.
- `allowInstances` - An optional parameter, allows the ability to use object instances to set a value; Default value: `false`.

Examples:
```lua
function onCreate()
     setPropertyFromClass('backend.ClientPrefs', 'data.ghostTapping', false) -- disables ghost tapping
end
```
```lua
function onCreate()
     setPropertyFromClass('flixel.FlxG', 'fullscreen', true) -- enables fullscreen
end
```

### setPropertyFromGroup(obj:String, index:Int, variable:Dynamic, value:Dynamic, ?allowMaps:Bool = false)
Sets one of the <ins>special group instance variables</ins> to a new value. These group instance variables should contain another instance variable taken from another class to set the `variable` parameter's values to set to. You can check for more of them by [clicking here](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Reflection-Functions#group-instances).

Group Instance Variables (Reference):
```haxe
// Both of these instance variables contains another class
public var unspawnNotes:Array<Note> = [];
public var strumLineNotes:FlxTypedGroup<StrumNote>;
```

- `obj` - The specified name of the grouped instance variables; Examples: `opponentStrums`, `playerStrums`, etc.
- `index` - The index position of the grouped instance variables to use.
- `variable` - The classes' instance variable from the group to set the value to.
- `value` - The said new value to set to.
- `allowMaps` - An optional parameter, allows you to use haxe maps or dictionaries to set the key-value pairs' value. If the instance variable holds a map type; Default value: `false`.

Example:
```lua
function onCreatePost()
     for i = 0, getProperty('unspawnNotes.length') - 1 do
          setPropertyFromGroup('unspawnNotes', i, 'hitHealth',  0.1) --> changes the hit health value
          setPropertyFromGroup('unspawnNotes', i, 'missHealth', 0.1) --> changes the miss health value
     end
end
```

## Property Getters
### getProperty(variable:String, ?allowMaps:Bool = false)
Gets the <ins>Playstates' instance variables</ins> current value. It can also get the Lua object's properties such as `x`, `y`, `alpha`, and so on. You can check for more properties it can get, just [click here](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Reflection-Functions#object-attributes).

- `variable` - The Playstates' instance variable to get the current value.
- `allowMaps` - An optional parameter, allows you to use haxe maps or dictionaries to set the key-value pairs' value. If the instance variable holds a map type; Default value: `false`.

Example:
```lua
function onCreatePost()
     if getProperty('cpuControlled') == true then -- checks if botplay is enabled
          debugPrint('Skill Issue')
     end
end
```

### getPropertyFromClass(classVar:String, variable:String, ?allowMaps:Bool = false, ?allowInstances:Bool = false)
Gets one of the <ins>classes' instance variables</ins> current value.

It can also uses haxe libraries to set its own instance variables to get the current value; Examples: `FlxG`, `FlxMath`, `FlxBasic`. Keep in mind that it should contain the library package; Example: `flixel.FlxG`. You can check each haxe libraries package by [clicking here](https://api.haxeflixel.com/flixel/FlxBasic.html).

> [!WARNING]
> _If you're using Psych Engine version `0.7` and below. The `classVar` parameter should have the file name in which the class is located, followed by a dot <kbd>.</kbd> character for separation. Followed by the the said class you'd want to use; Example: `backend.ClientPrefs`, `states.PlayState`, etc. You can check where the class files are located, [just click here!!!!](https://github.com/ShadowMario/FNF-PsychEngine/tree/main/source)<br><br>Another thing is that when trying to the `ClientPrefs` instance variables it should have the prefix `data` in the `variables` parameter. For you to get the instance variables; Example: `data.comboStacking`, `data.lowQuality`, etc_

- `classVar` - The specified name of the class; Examples: `ClientPrefs`, `Conductor`, `CoolUtil`, etc.
- `variable` - The classes' instance variable value to get the current value.
- `allowMaps` - An optional parameter, allows the ability to use haxe maps or dictionaries to get key-value pair values; Default value: `false`.
- `allowInstances` - An optional parameter, allows the ability to use object instances to get a value; Default value: `false`.

Example:
```lua
function onCreate()
     local gameplaySettings = getPropertyFromClass('backend.ClientPrefs', 'data.gameplaySettings', true)
     -- gets the current gameplay settings
     
     if gameplaySettings.instakill == true then -- checks if instakill mode is enabled
          debugPrint('Skill Peak')
     end
end
```

### getPropertyFromGroup(obj:String, index:Int, variable:Dynamic, ?allowMaps:Bool = false)
Gets one of the <ins>special group instance variables</ins> to a new value. These group instance variables should contain another instance variable taken from another class to get the `variable` parameter's current values. You can check for more of them by [clicking here](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Reflection-Functions#group-instances).

Group Instance Variables (Reference):
```haxe
// Both of these instance variables contains another class
public var unspawnNotes:Array<Note> = [];
public var strumLineNotes:FlxTypedGroup<StrumNote>;
```

- `obj` - The specified name of the grouped instance variables; Examples: `opponentStrums`, `playerStrums`, etc.
- `index` - The index position of the grouped instance variables to use.
- `variable` - The classes' instance variable from the group to get the current value.
- `allowMaps` - An optional parameter, allows you to use haxe maps or dictionaries to set the key-value pairs' value. If the instance variable holds a map type; Default value: `false`.

***

# Property Methods & Instances
### callMethod(funcToRun:String, ?args:Array\<Dynamic\> = null)
Calls the <ins>Playstates' instance methods</ins>.

- `funcToRun` - The Playstates' instance method to call to.
- `args` - An optional parameter, the instance method arguments to place, if it has any arguments.

Example:
```lua
function onCreate()
     callMethod('set_playbackRate', {1.5}) -- sets the playback rate
end
```

### callMethodFromClass(className:String, funcToRun:String, ?args:Array\<Dynamic\> = null)
Calls one of the <ins>classes' instance methods</ins>.

It can also uses haxe libraries to call its own instance methods; Examples: `FlxG`, `FlxMath`, `FlxBasic`. Keep in mind that it should contain the library package; Example: `flixel.FlxG`. You can check each haxe libraries package by [clicking here](https://api.haxeflixel.com/flixel/FlxBasic.html).

- `className` - The specified name of the class; Examples: `ClientPrefs`, `Conductor`, `CoolUtil`, etc.
- `funcToRun` - The classes' instance method to call to.
- `args` - An optional parameter, the instance method arguments to place, if it has any arguments.

Examples:
```lua
function onUpdatePost(elapsed)
     local ratingPercent = getProperty('ratingPercent') * 100
     local floorDecimal  = callMethodFromClass('backend.CoolUtil', 'floorDecimal', {gratingPercent, 2})
     debugPrint(floorDecimal)
end
```

```lua
local explodeData = [[ {"explode": true, "destroy": false } ]]
function onCreate()
     local parseExplode = callMethodFromClass('tjson.TJSON', 'parse', {explodeData})
     debugPrint(parseExplode) --> [explode => true, destroy => false]
end
```

### createInstance(variableToSave:String, className:String, ?args:Array\<Dynamic\> = null)
Creates one of the classes' object instance and calls the class constructor method.

- `variableToSave` - The variable for the object instance to inherit.
- `className` - The specified name of the class; Examples: `Characters`, `CheckboxThingie`, `Alphabet`, etc.
- `args` - An optional parameter, the instance method arguments to place, if it has any arguments.

Object instance: (Reference)
```haxe
new Character(x, y, json, isPlayer);
```

Example:
```lua
createInstance('characterTag', 'objects.Character', {0, 0, 'gf', false})
```

### addInstance(objectName:String, ?inFront:Bool = false)
Adds the said object instance from the class to the game.

- `objectName` - The variable of the object instance to add.
- `inFront` - An optional parameter, If set to `true`, it will always be in front of every object in the game, regardless of any overlaps; Default value: `false`.

Example:
```lua
addInstance('characterTag', true)
```

### instanceArg(instanceName:String, ?className:String = null)
Gets the variable from the object instance or the instance variable from a class.

- `objectName` - The variable of the object instance to get.
- `className` - An optional parameter, The specified name of the class to get its instance variables.

Examples:
```lua
function onCreatePost()
     createInstance('characterTag', 'objects.Character', {0, 0, 'gf', false})
     addInstance('characterTag', true)

     callMethod('remove', {instanceArg('characterTag')}) -- removes the 'characterTag' object
end
```
```lua
function onCreate()
     callMethod('remove', {instanceArg('iconP1')}) -- removes iconP1 from the HUD
     callMethod('remove', {instanceArg('iconP2')}) -- removes iconP2 from the HUD
end
```

***

# Group Properties
### addToGroup(group:String, tag:String, ?index:Int = -1)
<ins>Adds and inserts an object</ins> from the group instance variables.

- `group` - The specified name of the grouped instance variables; Examples: `opponentStrums`, `playerStrums`, etc.
- `tag` - The specified object tag to be inserted to the grouped instance variables.
- `index` - The index position of the grouped instance variables to be inserted to; Default value: `-1`.

### removeFromGroup(group:String, ?index:Int = -1, ?tag:String = null, ?destroy:Bool = true)
<ins>Removes an object</ins> from the group instance variables.

- `group` - The specified name of the grouped instance variables; Examples: `opponentStrums`, `playerStrums`, etc.
- `index` - The index position of the grouped instance variables to be removed from; Default value: `-1`.
- `tag` - The specified object tag to be removed from the grouped instance variables.
- `destroy` - Whether the object will be permanently removed from the game, making it unable to be re-added; Default value: `true`.

***

# Property Attributes & Instances
## Object Attributes
| Suffix Attributes 	| Description 	| Type 	|
|---	|---	|---	|
| `.x` 	| The x position value of the object. 	| `Float` 	|
| `.y` 	| The y position value of the object. 	| `Float` 	|
| `.width` 	| The width value of the object. 	| `Float` 	|
| `.height` 	| The height value of the object. 	| `Float` 	|
| `.flipX` 	| Whether the object will flip its x-axis. 	| `Boolean` 	|
| `.flipY` 	| Whether the object will flip its y-axis. 	| `Boolean` 	|
| `.scale.x` 	| The scale by x value of the object. 	| `Float` 	|
| `.scale.y` 	| The scale by y value of the object. 	| `Float` 	|
| `.offset.x` 	| The offset by x position value of the object. 	| `Float` 	|
| `.offset.y` 	| The offset by y position value of the object. 	| `Float` 	|
| `.scrollFactor.x` 	| The scroll factor by x value of the object. 	| `Float` 	|
| `.scrollFactor.y` 	| The scroll factor by y value of the object. 	| `Float` 	|
| `.angle` 	| The angle position value of the object. 	| `Float` 	|
| `.alpha` 	| The alpha/opacity value of the object; Goes from `0` to `1`. 	| `Float` 	|
| `.color` 	| The hex color value of the object. 	| `Int` 	|
| `.visible` 	| Whether the object will be visible or not. 	| `Boolean` 	|
| `.antialiasing` 	| Whether the object will use anti-aliasing. 	| `Boolean` 	|

## Group Instances
| Instances 	| Description 	| Class 	|
|---	|---	|---	|
| `notes` 	| The notes that are currently spawning. 	| `Note` 	|
| `unspawnNotes` 	| The notes that aren't spawning yet. 	| `Note` 	|
| `eventNotes` 	| The event notes. 	| `EventNote` 	|
| `grpNoteSplashes` 	| The note splash group. 	| `NoteSplash` 	|
| `playerStrums` 	| The player strum group; Goes from `0` to `3`. 	| `StrumNote` 	|
| `opponentStrums` 	| The opponent strum group; Goes from `0` to `3`. 	| `StrumNote` 	|
| `strumLineNotes` 	| Both the player and opponent strum group; Goes from `0` to `7`; <br>opponent strums: `0,1,2,3`; player strums: `4,5,6,7`. 	| `StrumNote` 	|

## Note Instances
| Variables 	| Description 	| Type 	| Default Value 	|
|---	|---	|---	|---	|
| `noteData` 	| The corresponding note strum data; Goes from: `0` to `3`,<br>basically left, down, up and right. 	| `Int` 	| `0` 	|
| `strumTime` 	| The current strum time for the note to appear in milliseconds. 	| `Int` 	| `0` 	|
| `sustainLength` 	| The sustain length of the note's tail. 	| `Int` 	| `0` 	|
| `spawned` 	| Whether the notes are spawned or not. 	| `Boolean` 	| `false` 	|
| `gfNote` 	| Whether the notes are using girlfriends note or not. 	| `Boolean` 	| `false` 	|
| `isSustainNote` 	| Whether the notes are sustain (long notes) or not. 	| `Boolean` 	| `false` 	|
| `noteType` 	| The current type of the note. 	| `String` 	| `null` 	|
| `texture` 	| The current texture of the note. 	| `String` 	| `null` 	|

### Hits
| Variables 	| Description 	| Type 	| Default Value 	|
|---	|---	|---	|---	|
| `hitCausesMiss` 	| Whether hitting a note will cause a miss or not. 	| `Boolean` 	| `false` 	|
| `missed` 	| Whether the note was missed or not. 	| `Boolean` 	| `false` 	|
| `mustPress` 	| Whether the section is must press for notes or not. 	| `Boolean` 	| `false` 	|
| `canBeHit` 	| Whether the note can be hit by the player or not. 	| `Boolean` 	| `false` 	|
| `hitByOpponent` 	| Whether the note can be hit by the opponent or not. 	| `Boolean` 	| `false` 	|
| `ignoreNote` 	| Whether the note should have a penalty for missing or not. 	| `Boolean` 	| `false` 	|
| `wasGoodHit` 	| Checks if this note was hit by the player. 	| `Boolean` 	| `false` 	|
| `tooLate` 	| Checks if this note is no longer in range and cannot be hit. 	| `Boolean` 	| `false` 	|
| `blockHit` 	| Blocks the player from hitting any notes. 	| `Boolean` 	| `false` 	|
| `noAnimation` 	| Whether the note should play an animation when hit. 	| `Boolean` 	| `false` 	|
| `noMissAnimation` 	| Whether the note should play an animation when missed. 	| `Boolean` 	| `false` 	|
| `hitsoundForce` 	| Whether the hitsounds will be force to play, even if it's disabled. 	| `Boolean` 	| `false` 	|
| `hitsoundDisabled` 	| Whether the hitsounds will be disabled, even if it's enabled. 	| `Boolean` 	| `false` 	|
| `hitsoundVolume` 	| The current hitsound volume; Goes from `0` to `3`. 	| `Float` 	| `1.0` 	|
| `earlyHitMult` 	| The early hit multiplier value of the note. 	| `Float` 	| `1` 	|
| `lateHitMult` 	| The late hit multiplier value of the note. 	| `Float` 	| `1` 	|
| `distance` 	| The notes distance position between it and the strums. 	| `Float` 	| `2000` 	|

### Offsets
| Variables 	| Description 	| Type 	| Default Value 	|
|---	|---	|---	|---	|
| `offsetX` 	| The note's offset x position. 	| `Float` 	| `0` 	|
| `offsetY` 	| The note's offset y position. 	| `Float` 	| `0` 	|
| `offsetAngle` 	| The note's offset angle position. 	| `Float` 	| `0` 	|
| `multAlpha` 	| The note's alpha/opacity multiplier value. 	| `Float` 	| `1` 	|
| `multSpeed` 	| The note's speed multiplier value. 	| `Float` 	| `1` 	|
| `copyX` 	| Whether the notes will follow the strums x position value. 	| `Boolean` 	| `true` 	|
| `copyY` 	| Whether the notes will follow the strums y position value. 	| `Boolean` 	| `true` 	|
| `copyAngle` 	| Whether the notes will follow the strums angle position value. 	| `Boolean` 	| `true` 	|
| `copyAlpha` 	| Whether the notes will follow the strums alpha/opacity value. 	| `Boolean` 	| `true` 	|

### Ratings
| Variables 	| Description 	| Type 	| Default Value 	|
|---	|---	|---	|---	|
| `hitHealth` 	| The amount of health gained when hitting a note. 	| `Float` 	| `0.023` 	|
| `missHealth` 	| The amount of health lost when missing a note. 	| `Float` 	| `0.0475` 	|
| `rating` 	| The current rating score name when hitting a note. 	| `String` 	| `unknown` 	|
| `ratingMod` 	| The current rating score value when hitting a note; Goes from: <br>`0` = unknown or shit, `0.34` = bad, `0.67` = good, and `1` = sick. 	| `Float` 	| `0` 	|
| `ratingDisabled` 	| Whether the rating score will be disabled or not. 	| `Boolean` 	| `false` 	|

### Events
> [!NOTE]
> _This only applies to the `eventNotes` group instance, meaning it only work for that group instance only._

| Variables 	| Description 	| Type 	| Default Value 	|
|---	|---	|---	|---	|
| `strumTime` 	| The current strum time for the event note to appear in milliseconds. 	| `Float` 	| `0` 	|
| `event` 	| The event note's current name. 	| `String` 	| `''` 	|
| `value1` 	| The event note's primary value. 	| `String` 	| `''` 	|
| `value2` 	| the event note's secondary value. 	| `String` 	| `''` 	|

### Splash Data
> [!WARNING]
> _All three of the `noteSplashData` elements: `r`, `g`, and `b` do not currently exist in version `1.0` (Pre-Release), for some reason. I don't if they'll come back or not._

| Variables 	| Description 	| Type 	| Default Value 	|
|---	|---	|---	|---	|
| `noteSplashData.texture` 	| The note splashes' current texture. 	| `String` 	| `null` 	|
| `noteSplashData.disabled` 	| Whether the note splashes is disabled or not. 	| `Boolean` 	| `false` 	|
| `noteSplashData.antialiasing` 	| Whether the note splashes will use anti-aliasing or not. 	| `Boolean` 	| Depends[^1] 	|
| `noteSplashData.useGlobalShader` 	| Whether the note splashes will use the note's default RGB colors or not. 	| `Boolean` 	| `false` 	|
| `noteSplashData.useRGBShader` 	| Whether the note splashes uses the RGB Shader or not. 	| `Boolean` 	| Depends[^2] 	|
| `noteSplashData.r` 	| The note splashes' amount of redness value. 	| `Float` 	| `-1` 	|
| `noteSplashData.g` 	| The note splashes' amount of greeness value. 	| `Float` 	| `-1` 	|
| `noteSplashData.b` 	| The note splashes' amount of blueness value. 	| `Float` 	| `-1` 	|
| `noteSplashData.a` 	| The note splashes current alpha/opacity value. 	| `Float` 	| Depends[^3] 	|

<details><summary><b>Deprecated Splash Data:</b></summary>
<p>

| Variables 	| Description 	| Type 	| Default Value 	|
|---	|---	|---	|---	|
| `noteSplashTexture` 	| The note splashes' current texture. 	| `String` 	| `null` 	|
| `noteSplashDisabled` 	| Whether the note splashes is disabled or not. 	| `Boolean` 	| `false` 	|
| `noteSplashHue` 	| The note splashes' amount of hue value; Goes from `-180` to `180`. 	| `Int` 	| `0` 	|
| `noteSplashBrt` 	| The note splashes' amount of brightness value; Goes from `-100` to `100`. 	| `Int` 	| `0` 	|
| `noteSplashSat` 	| The note splashes' amount of saturation value; Goes from `-100` to `100`. 	| `Int` 	| `0` 	|

</p>
</details>

[^1]: [Depends if the stage is in pixel or not.](https://github.com/ShadowMario/FNF-PsychEngine/blob/0.7.3/source/objects/Note.hx#L98)
[^2]: [Depends if the song disables the RGB Shader.](https://github.com/ShadowMario/FNF-PsychEngine/blob/0.7.3/source/objects/Note.hx#L94)
[^3]: [Depends from the selected value from the settings.](https://github.com/ShadowMario/FNF-PsychEngine/blob/0.7.3/source/objects/Note.hx#L98)