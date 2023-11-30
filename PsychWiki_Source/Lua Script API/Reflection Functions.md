# Property Setters
### setProperty(variable:String, value:Dynamic, ?allowMaps:Bool = false)
Sets one of <ins>PlayState's variable value</ins> to a new value.

- `variable` - The variable inside PlayState to be used.
- `value` - The new value for the `variable` parameter to be set.
- `allowMaps` - An optional parameter, Whether to allow the set the value of maps or not, which is basically a haxe dictionary just to let you know; Default value `false`.

### setPropertyFromClass(classVar:String, variable:String, value:Dynamic, ?allowMaps:Bool = false)
Sets the current <ins>property variable inside a class</ins> with a new value. 

> **Note**: _In version `0.7.0` or above the `classVar` parameter should have the file name in which the class is located, followed by a dot <kbd>.</kbd> character. With the name of the class that you've chosen; Example: `backend.ClientPrefs`, `states.PlayState`, `flixel.FlxG`, etc. You can check where the class files are located, [just click here!!!!](https://github.com/ShadowMario/FNF-PsychEngine/tree/main/source)._

> **Note 2**: _If you are trying to set/get a static variable from PlayState, this is required since the normal set/getProperty uses PlayState.instance._

- `classVar` - The name of the class; Example: `ClientPrefs`, `Conductor`, `CoolUtil`, etc.
- `variable` - The variable inside the class to be used.
- `value` - The new value for the `variable` parameter to be set.
- `allowMaps` - An optional parameter, Whether to allow the set the value of maps or not, which is basically a haxe dictionary just to let you know; Defualt value `false`.

### setPropertyFromGroup(obj:String, index:Int, variable:Dynamic, value:Dynamic, ?allowMaps:Bool = false)
Sets one of PlayState's current <ins>member property variable inside of an array/group</ins> with a new value.

- `obj` - The name of the array/group; Example: `opponentStrums`, `playerStrums`, etc.
- `index` - The index number of the array/group member to be referenced.
- `variable` - The variable to be used for the array/group member.
- `value` - The new value for the `variable` parameter to be set.
- `allowMaps` - An optional parameter, Whether to allow the set the value of maps or not, which is basically a haxe dictionary just to let you know; Defualt value `false`.

***

# Property Getters
### getProperty(variable:String, ?allowMaps:Bool = false)
Gets one of <ins>PlayState's variable value</ins>.

- `variable` - The variable inside PlayState to get.
- `allowMaps` - An optional parameter, Whether to allow to get the value of maps or not, which is basically a haxe dictionary just to let you know; Defualt value `false`.

### getPropertyFromClass(classVar:String, variable:String, ?allowMaps:Bool = false)
Gets one of the <ins>variable value from a class</ins>.

> **Note**: _In version `0.7.0` or above the `classVar` parameter should have the file name in which the class is located, followed by a dot <kbd>.</kbd> character. With the name of the class that you've chosen; Example: `backend.ClientPrefs`, `states.Playstate`, `flixel.FlxG`, etc. You can check where the class files are located, [just click here!!!!](https://github.com/ShadowMario/FNF-PsychEngine/tree/main/source)._

> **Note 2**: _If you are trying to set/get a static variable from PlayState, this is required since the normal set/getProperty uses PlayState.instance._

- `classVar` - The name of the class; Example: `ClientPrefs`, `Conductor`, `CoolUtil`, etc.
- `variable` - The variable inside the Playstate or object to be used.
- `allowMaps` - An optional parameter, Whether to allow the get the value of maps or not, which is basically a haxe dictionary just to let you know; Defualt value `false`.

### getPropertyFromGroup(obj:String, index:Int, variable:Dynamic, ?allowMaps:Bool = false)
Gets one of PlayState's current <ins>member property variable inside of an array/group</ins> current value.

- `obj` - The name of the array/group; Example: `opponentStrums`, `playerStrums`, etc.
- `index` - The index number of the array/group member to be referenced.
- `variable` - The variable to be used for the array/group member.
- `allowMaps` - An optional parameter, Whether to allow the get the value of maps or not, which is basically a haxe dictionary just to let you know; Defualt value `false`.

***

# Property Methods & Instances
### callMethod(funcToRun:String, ?args:Array\<Dynamic\> = null)
Calls a function from PlayState.

- `funcToRun` - The function name from PlayState to be referenced.
- `args` - An optional parameter, The argument(s) to be passed to the function.

### callMethodFromClass(className:String, funcToRun:String, ?args:Array\<Dynamic\> = null)
Calls a function from any class.

- `className` - The name of the class; Example: `ClientPrefs`, `Conductor`, `CoolUtil`, etc.
- `funcToRun` - The function name from the classes to be referenced.
- `args` - An optional parameter, The argument(s) to be passed to the function.

### createInstance(variableToSave:String, className:String, ?args:Array\<Dynamic\> = null)
Creates an instance of an object from the class constructor (which is basically the new() arguments that you see, example: `new Character(x, y, json, isPlayer)`).

- `variableToSave` - The object's tag name.
- `className` - The name of the class.
- `args` - An optional parameter, The argument(s) to be passed to the class constructor.

Example:
```lua
createInstance('tag', 'objects.Character', {0, 0, 'gf'})
```
Will create a character.

### addInstance(objectName:String, ?inFront:Bool = false)
Adds the object from the specified tag name.

- `objectName` - The object's tag name.
- `inFront` - An optional parameter, Whether the object will be in front of the characters or not.

Example: 
```lua
addInstance('tag', true)
```
Adds the object.

***

# Miscellaneous Properties
### removeFromGroup(obj:String, index:Int, ?dontDestroy:Bool = false)
Removes an object from the group with its specified member ID

- `obj` - The name of the array/group member; Example: `opponentStrums`, `playerStrums`, etc.
- `index` - The index number of the array/group member to be referenced.
- `dontDestroy` - An optional parameter, Whether if the note type will be removed permanently making it unable to be re-added; Default is `false`.

### updateHitboxFromGroup(group:String, index:Int)
Updates the object's hitboxes with its specified member ID.

- `obj` - The name of the array/group; Example: `opponentStrums`, `playerStrums`, etc.
- `index` - The index number of the array/group member to be referenced.

***

# Property Attributes
## Object Properties
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
- `.scrollFactor.x` - The scroll factor at the x value of the object. **(Float)**
- `.scrollFactor.y` - The scroll factor at the y value of the object. **(Float)**

## Note Properties
- `noAnimation` - Disables any singing animation when hitting this note. **(Boolean)**
- `noMissAnimation` - Disables any singing animation when missing/missinputting this note. **(Boolean)**
- `hitCausesMiss` - Causes misses when hitting this note. **(Boolean)**
- `blockHit` - Disables hits on this note; Only works on player; Refer to `ignoreNote` for the opponent.**(Boolean)**
- `hitByOpponent` - Whether the opponent can hit the note or not. **(Boolean)**
- `hitsoundDisabled` - Whether the hitsound is disabled or not. **(Boolean)**
- `hitsound` - The hitsound's sound to be used. **(String)**
- `hitHealth` - The specified amount of health gained when hitting this note; Default value: `0.023`. **(Float)**
- `missHealth` - The specified amount of health taken when missing/missinputting this note; Default value: `0.0475`. **(Float)**
- `mustPress` - Checks if the note is on the player's side. **(Boolean)**
- `ignoreNote` - Whether the note should be ignored, will not give misses or deal damage if missed. **(Boolean)**
- `isSustainNote` - Checks if the note is a sustain note. **(Boolean)**
- `texture` - The texture of the note type. **(String)**
- `noteType` - Returns the current note type. **(String)**
- `gfNote` - Returns if GF is singing. **(Boolean)**
- `noteWasHit` - Returns if the note was hit, duh. **(Boolean)**
- `offsetX` - Offsets the note's `X` position; Does not require `copyX` to be turned off. **(Float)**
- `offsetY` - Offsets the note's `Y` position; Does not require `copyY` to be turned off. **(Float)**
- `offsetAngle` - Offsets the note's `angle` position; Does not require `copyAngle` to be turned off. **(Float)**
- `multAlpha` - The `alpha` value of the note; Does not require `copyAlpha` to be turned off. **(Float)**
- `copyX` - Variable determining if the note will follow the strum's `X` position; It's recommended you use the offset variables instead of turning this off. **(Boolean)**
- `copyY` - Variable determining if the note will follow the strum's `Y` position; It's recommended you use the offset variables instead of turning this off. **(Boolean)**
- `copyAngle` - Variable determining if the note will follow the strum's `angle` value; It's recommended you use the offset variables instead of turning this off. **(Boolean)**
- `copyAlpha` - Variable determining if the note will follow the strum's `alpha` value; It's recommended you use the `multAlpha` variable instead of turning this off. **(Boolean)**
- `rgbShader` - The RGB Shader that the notes are using. **(Boolean)**
- `useRGBShader` - The RGB Shader that the strums are using. **(Boolean)**

Example on how to disable the shader:
```lua
setPropertyFromGroup('unspawnNotes', i, 'rgbShader.enabled', false)
setPropertyFromGroup('strumLineNotes', i, 'useRGBShader', false)
```
- `noteSplashData.disabled` - Whether the note splashes will be disabled or not. **(Boolean)**
- `noteSplashData.texture` - The note splashes texture to be used. **(String)**
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
- `eventNotes` - Self explanatory.
- `playerStrums` - Notes from the Player strums; Goes from `0` to `3`.
- `opponentStrums` - Notes from the Opponent strums; Goes from `0` to `3`.
- `strumLineNotes` - Notes from both Player and Opponent strums; Goes from `0` to `7`; Opponent Strums: `0,1,2,3`; Player Strums: `4,5,6,7`.