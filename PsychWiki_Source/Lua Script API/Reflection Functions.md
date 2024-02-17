# Property Setters
### setProperty(variable:String, value:Dynamic, ?allowMaps:Bool = false)
Sets one of <ins>PlayState's variable value</ins> to a new value.

- `variable` - The variable inside PlayState to be used.
- `value` - The new value for the `variable` parameter to be set.
- `allowMaps` - An optional parameter, Whether to allow to set the value of maps or not, which is basically a haxe dictionary just to let you know; Default value: `false`.

### setPropertyFromClass(classVar:String, variable:String, value:Dynamic, ?allowMaps:Bool = false)
Sets one of the specified <ins>classes variable value </ins> to a new value. 

> **Warning**: _In versions `0.7` or above, the `classVar` parameter should have the file name in which the class is located, followed by a dot <kbd>.</kbd> character. With the name of the class that you've chosen; Example: `backend.ClientPrefs`, `states.PlayState`, `flixel.FlxG`, etc. You can check where the class files are located, [just click here!!!!](https://github.com/ShadowMario/FNF-PsychEngine/tree/main/source)._

> **Note**: _If you are trying to set a static variable from PlayState, this is required since the normal setProperty only works on non-static variables._

- `classVar` - The name of the class; Example: `ClientPrefs`, `Conductor`, `CoolUtil`, etc.
- `variable` - The variable inside the class to be used.
- `value` - The new value for the `variable` parameter to be set.
- `allowMaps` - An optional parameter, Whether to allow to set the value of maps or not, which is basically a haxe dictionary just to let you know; Default value: `false`.

### setPropertyFromGroup(obj:String, index:Int, variable:Dynamic, value:Dynamic, ?allowMaps:Bool = false)
Sets one of PlayState's <ins>array/group variable member</ins> to a new value.

- `obj` - The name of the array/group; Example: `opponentStrums`, `playerStrums`, etc.
- `index` - The index number of the array/group member to be referenced.
- `variable` - The variable to be used for the array/group member.
- `value` - The new value for the `variable` parameter to be set.
- `allowMaps` - An optional parameter, Whether to allow to set the value of maps or not, which is basically a haxe dictionary just to let you know; Default value: `false`.

***

# Property Getters
### getProperty(variable:String, ?allowMaps:Bool = false)
Gets one of <ins>PlayState's variable value</ins>.

- `variable` - The variable inside PlayState to get.
- `allowMaps` - An optional parameter, Whether to allow to get the value of maps or not, which is basically a haxe dictionary just to let you know; Default value: `false`.

### getPropertyFromClass(classVar:String, variable:String, ?allowMaps:Bool = false)
Gets one of the specified <ins>classes variable value</ins>.

> **Warning**: _In versions `0.7` or above, the `classVar` parameter should have the file name in which the class is located, followed by a dot <kbd>.</kbd> character. With the name of the class that you've chosen; Example: `backend.ClientPrefs`, `states.Playstate`, `flixel.FlxG`, etc. You can check where the class files are located, [just click here!!!!](https://github.com/ShadowMario/FNF-PsychEngine/tree/main/source)._

> **Note**: _If you are trying to get a static variable from PlayState, this is required since the normal getProperty only works on non-static variables._

- `classVar` - The name of the class; Example: `ClientPrefs`, `Conductor`, `CoolUtil`, etc.
- `variable` - The variable inside the class to be used.
- `allowMaps` - An optional parameter, Whether to allow to get the value of maps or not, which is basically a haxe dictionary just to let you know; Default value: `false`.

### getPropertyFromGroup(obj:String, index:Int, variable:Dynamic, ?allowMaps:Bool = false)
Gets one of PlayState's <ins>array/group variable member's</ins> current value.

- `obj` - The name of the array/group; Example: `opponentStrums`, `playerStrums`, etc.
- `index` - The index number of the array/group member to be referenced.
- `variable` - The variable to be used for the array/group member.
- `allowMaps` - An optional parameter, Whether to allow to get the value of maps or not, which is basically a haxe dictionary just to let you know; Default value: `false`.

***

# Property Methods & Instances
### callMethod(funcToRun:String, ?args:Array\<Dynamic\> = null)
Calls a function from a PlayState.

- `funcToRun` - The function name from PlayState to be referenced.
- `args` - An optional parameter, The argument(s) to be passed to the function; Default value: `nil`.

### callMethodFromClass(className:String, funcToRun:String, ?args:Array\<Dynamic\> = null)
Calls a function from a specified class.

- `className` - The name of the class; Example: `LuaUtils`, `Conductor`, `CoolUtil`, etc.
- `funcToRun` - The function name from the class to be referenced.
- `args` - An optional parameter, The argument(s) to be passed to the function; Default value: `nil`.

### instanceArg(instanceName:String, ?className:String = null)
Used in combination with `callMethod()` or `callMethodFromClass()` functions; Allows you to use objects as arguments.

- `instanceName` - The object name to be used.
- `className` - An optional parameter, The class to get the object from.

Example:
```lua
function onCreatePost()
    callMethod('uiGroup.remove', {instanceArg('scoreTxt')})
end
```

### createInstance(variableToSave:String, className:String, ?args:Array\<Dynamic\> = null)
Creates an instance of an object from a class by calling the constructor method.

- `variableToSave` - The object's tag name.
- `className` - The name of the class to use.
- `args` - An optional parameter, The argument(s) to be passed to the class constructor; Default value: `nil`.

Example:
```lua
createInstance('characterTag', 'objects.Character', {0, 0, 'gf'}) -- Will create a character
```

Creating an instance from the Character class (Reference):
```haxe
new Character(x, y, json, isPlayer);
```

### addInstance(objectName:String, ?inFront:Bool = false)
Adds the object from the specified tag name.

- `objectName` - The object's tag name.
- `inFront` - An optional parameter, Whether the object will be in front of the characters or not; Default value: `false`.

***

# Miscellaneous Properties
### removeFromGroup(obj:String, index:Int, ?dontDestroy:Bool = false)
Removes an object from the group with its specified member ID

- `obj` - The name of the array/group member; Example: `opponentStrums`, `playerStrums`, etc.
- `index` - The index number of the array/group member to be referenced.
- `dontDestroy` - An optional parameter, Whether if the note type will be removed permanently making it unable to be re-added; Default value: `false`.

### updateHitboxFromGroup(group:String, index:Int)
Updates the object's hitboxes with its specified member ID.

- `obj` - The name of the array/group; Example: `opponentStrums`, `playerStrums`, etc.
- `index` - The index number of the array/group member to be referenced.

***

# Property Attributes
## Object Properties

> **Note**: _More object properties can be found on the [HaxeFlixel](https://api.haxeflixel.com/flixel/) website ([FlxBasic](https://api.haxeflixel.com/flixel/FlxBasic.html), [FlxObject](https://api.haxeflixel.com/flixel/FlxObject.html), [FlxSprite](https://api.haxeflixel.com/flixel/FlxSprite.html), etc)_.

- `.x` - The x position value of the object. **(Float)**
- `.y` - The y position value of the object. **(Float)**
- `.width` - The width size value of the object. **(Float)**
- `.height` - The height size value of the object. **(Float)**
- `.alpha` - The alpha/opacity value of the object; Goes from `0` to `1`. **(Float)**
- `.angle` - The angle value of the object. **(Float)**
- `.color` - The hex color of the object. **(Int)** _(Must be a hexadecimal value)_
- `.length` - The length value of an array. **(Array)**
- `.visible` - Whether the object is visible or not. **(Boolean)**
- `.stunned` - Will disable the idle animation and key pressing. **(Boolean)**
- `.antialiasing` - Whether the border of an object will be smooth or not, this will affect performance. **(Boolean)**
- `.flipX` - Flips the object on the x axis. **(Boolean)**
- `.flipY` - Flips the object on the y axis. **(Boolean)**
- `.scale.x` - The scale at the x axis value of an object, The hitbox is not automatically updated. **(Float)**
- `.scale.y` - The scale at the y axis value of an object, The hitbox is not automatically updated. **(Float)**
- `.offset.x` - The x offset value of the object. **(Float)**
- `.offset.y` - The y offset value of the object. **(Float)**
- `.origin.x` - The x origin value of the object. **(Float)**
- `.origin.y` - The y origin value of the object. **(Float)**
- `.scrollFactor.x` - The scroll factor at the x value of the object. **(Float)**
- `.scrollFactor.y` - The scroll factor at the y value of the object. **(Float)**

## Note Properties
- `noteData` - Which strum this note will go on; Goes from `0 ` to `3` **(Int)**
- `strumTime` - Where this note in the chart is, in milliseconds. **(Float)**
- `noAnimation` - Disables any singing animations when hitting this note. **(Boolean)**
- `noMissAnimation` - Disables any missing animations when missing this note. **(Boolean)**
- `hitCausesMiss` - Gives misses when hitting this note. **(Boolean)**
- `blockHit` - Blocks the player from being able to hit this note.**(Boolean)**
- `ignoreNote` - Whether this note should have a penalty for missing. **(Boolean)**
- `canBeHit` - Checks if this note is in range and can be hit by the player. **(Boolean)**
- `noteWasHit` - Checks if this note was hit, duh. **(Boolean)**
- `wasGoodHit` - Checks if this note was hit by the player. **(Boolean)**
- `hitByOpponent` - Checks if this note was hit by the opponent. **(Boolean)**
- `tooLate` - Checks if this note is no longer in range and cannot be hit. **(Boolean)**
- `hitsoundDisabled` - Whether the hitsound should be disabled on this note. **(Boolean)**
- `hitsound` - Which sound to play when hitting this note. **(String)**
- `hitHealth` - The specified amount of health gained when hitting this note; Default value: `0.023`. **(Float)**
- `missHealth` - The specified amount of health lost when missing this note; Default value: `0.0475`. **(Float)**
- `mustPress` - Checks if this note is on the player's side. **(Boolean)**
- `isSustainNote` - Checks if the note is a sustain note. **(Boolean)**
- `texture` - The texture of the note. **(String)**
- `noteType` - Checks the note type. **(String)**
- `gfNote` - Checks if GF is singing. **(Boolean)**
- `offsetX` - Offsets the note's `X` position; <ins>Does not</ins> require `copyX` to be turned off. **(Float)**
- `offsetY` - Offsets the note's `Y` position; <ins>Does not</ins> require `copyY` to be turned off. **(Float)**
- `offsetAngle` - Offsets the note's `angle` position; <ins>Does not</ins> require `copyAngle` to be turned off. **(Float)**
- `multAlpha` - The `alpha` multiplier value of the note; <ins>Does not</ins> require `copyAlpha` to be turned off. **(Float)**
- `multSpeed` - The scroll speed multiplier of the note. **(Float)**
- `copyX` - Variable determining if the note will follow the strum's `X` position; It's recommended to <ins>use the `offsetX` variable</ins> instead of turning this off. **(Boolean)**
- `copyY` - Variable determining if the note will follow the strum's `Y` position; It's recommended to <ins>use the `offsetY` variable</ins> instead of turning this off. **(Boolean)**
- `copyAngle` - Variable determining if the note will follow the strum's `angle` value; It's recommended to <ins>use the `offsetAngle` variable</ins> instead of turning this off. **(Boolean)**
- `copyAlpha` - Variable determining if the note will follow the strum's `alpha` value; It's recommended to <ins>use the `multAlpha` variable</ins> instead of turning this off. **(Boolean)**
- `rgbShader` - The RGB Shader that the strums and notes are using; [More info on how to disable it or change the colors here!!](https://github.com/Meme1079/PsychWiki/wiki/Psych-Engine-API:-Transitioning-to-0.7.0#rgb-note-colors) **(RGBShaderReference)**
- `noteSplashData.disabled` - Whether the note splashes will be disabled or not. **(Boolean)**
- `noteSplashData.texture` - The note splashes texture to use. **(String)**
- `noteSplashData.useGlobalShader` - If set to `true`, the custom note will use the note's default splash colors. **(Boolean)**
- `noteSplashData.useRGBShader` - If set to `false`, note splashes will no longer use the RGB Shader. **(Boolean)**
- `noteSplashData.r` - The note splashes red value; Default value: `-1`. **(Int)**
- `noteSplashData.g` - The note splashes green value; Default value: `-1`. **(Int)**
- `noteSplashData.b` - The note splashes blue value; Default value: `-1`. **(Int)**
- `noteSplashData.a` - The note splashes alpha/opacity value; Default value: `0.6`. **(Float)**

<details><summary><b>Deprecated Note Properties:</b></summary>
<p>

- `noteSplashDisabled` - Whether the note splashes will be disabled or not. **(Boolean)**
- `noteSplashTexture` - The note splashes texture to be used. **(String)**
- `noteSplashHue` - Changes the HUE value of the note; Goes from `-180` to `180`; Default value: `0`. **(Int)**
- `noteSplashBrt` - Changes the brightness value of the note; Goes from `-100` to `100`; Default value: `0`. **(Int)**
- `noteSplashSat` - Changes the saturation value of the note; Goes from `-100` to `100`; Default value: `0`. **(Int)**

</p>
</details>

## Note Group Objects
- `notes` - Notes that are currently spawned.
- `unspawnNotes` - Notes that are not currently spawned.
- `grpNoteSplashes` - The note splash group.
- `eventNotes` - Self explanatory.
- `playerStrums` - Notes from the Player strums; Goes from `0` to `3`.
- `opponentStrums` - Notes from the Opponent strums; Goes from `0` to `3`.
- `strumLineNotes` - Notes from both Player and Opponent strums; Goes from `0` to `7`; Opponent Strums: `0,1,2,3`; Player Strums: `4,5,6,7`.