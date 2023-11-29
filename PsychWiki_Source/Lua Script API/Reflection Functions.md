> **Warning**: _WIP STILL RESEARCHING!!!!!!!_

# Property Setters
### setProperty(variable:String, value:Dynamic, ?allowMaps:Bool = false)
Sets the current <ins>property variable inside the Playstate</ins> with a new value.

- `variable` - The variable inside the Playstate or object to be used.
- `value` - The new value for the `variable` parameter to be set.
- `allowMaps` - An optional parameter, Whether to allow the set the value of maps or not, which is basically a haxe dictionary just to let you know; Defualt value `false`.

### setPropertyFromClass(classVar:String, variable:String, value:Dynamic, ?allowMaps:Bool = false)
Sets the current <ins>property variable inside a class other than Playstate</ins> with a new value. 

In version `0.7.0` or above the `classVar` parameter should have the file name in which the class is located, followed by a dot <kbd>.</kbd> character. With the name of the class that you've chosen; Example: `backend.ClientPrefs`, `states.Playstate`, `flixel.FlxG`, etc. You can check where the class files are located, [just click here!!!!](https://github.com/ShadowMario/FNF-PsychEngine/tree/main/source).

- `classVar` - The name of the class; Example: `ClientPrefs`, `Conductor`, `CoolUtil`, etc.
- `variable` - The variable inside the Playstate or object to be used.
- `value` - The new value for the `variable` parameter to be set.
- `allowMaps` - An optional parameter, Whether to allow the set the value of maps or not, which is basically a haxe dictionary just to let you know; Defualt value `false`.

### setPropertyFromGroup(obj:String, index:Int, variable:Dynamic, value:Dynamic, ?allowMaps:Bool = false)
Sets the current <ins>property variable inside an array/group member inside the PlayState</ins> with a new value.

- `obj` - The name of the array/group member; Example: `opponentStrums`, `playerStrums`, etc.
- `index` - The index number of the array/group member to be referenced.
- `variable` - The variable to be used for the array/group member.
- `value` - The new value for the `variable` parameter to be set.
- `allowMaps` - An optional parameter, Whether to allow the set the value of maps or not, which is basically a haxe dictionary just to let you know; Defualt value `false`.

***

# Property Getters
### getProperty(variable:String, ?allowMaps:Bool = false)
Gets the current <ins>property variable inside the Playstate</ins> current value.

- `variable` - The variable inside the Playstate or object to be used.
- `allowMaps` - An optional parameter, Whether to allow the get the value of maps or not, which is basically a haxe dictionary just to let you know; Defualt value `false`.

### getPropertyFromClass(classVar:String, variable:String, ?allowMaps:Bool = false)
Gets the current <ins>property variable inside a class other than Playstate</ins> current value.

In version `0.7.0` or above the `classVar` parameter should have the file name in which the class is located, followed by a dot <kbd>.</kbd> character. With the name of the class that you've chosen; Example: `backend.ClientPrefs`, `states.Playstate`, `flixel.FlxG`, etc. You can check where the class files are located, [just click here!!!!](https://github.com/ShadowMario/FNF-PsychEngine/tree/main/source).

- `classVar` - The name of the class; Example: `ClientPrefs`, `Conductor`, `CoolUtil`, etc.
- `variable` - The variable inside the Playstate or object to be used.
- `allowMaps` - An optional parameter, Whether to allow the get the value of maps or not, which is basically a haxe dictionary just to let you know; Defualt value `false`.

### getPropertyFromGroup(obj:String, index:Int, variable:Dynamic, ?allowMaps:Bool = false)
Gets the current <ins>property variable inside an array/group member inside the PlayState</ins> current value.

- `obj` - The name of the array/group member; Example: `opponentStrums`, `playerStrums`, etc.
- `index` - The index number of the array/group member to be referenced.
- `variable` - The variable to be used for the array/group member.
- `allowMaps` - An optional parameter, Whether to allow the get the value of maps or not, which is basically a haxe dictionary just to let you know; Defualt value `false`.

***

# Property Methods & Instances
### callMethod(funcToRun:String, ?args:Array\<Dynamic\> = null)
Calls a function from the Playstate class.

- `funcToRun` - An optional parameter, The function name from the Playstate to be referenced.
- `args` - An optional parameter, The arguement(s) to be passed to the function.

### callMethodFromClass(className:String, funcToRun:String, ?args:Array\<Dynamic\> = null)
Calls a function from other classes.

- `className` - The name of the class; Example: `ClientPrefs`, `Conductor`, `CoolUtil`, etc.
- `funcToRun` - An optional parameter, The function name from the classes to be referenced.
- `args` - An optional parameter, The arguement(s) to be passed to the function.

### createInstance(variableToSave:String, className:String, ?args:Array\<Dynamic\> = null)
### addInstance(objectName:String, ?inFront:Bool = false)

***

# Miscellaneous Properties
### removeFromGroup(obj:String, index:Int, ?dontDestroy:Bool = false)
Removes a specific note type inside the game.

- `obj` - The name of the array/group member, Example `opponentStrums`, `playerStrums`, etc.
- `index` - The index number of the array/group member to be referenced.
- `dontDestroy` - An optional parameter, Whether if the note type will be removed permanently making it unable to be re-added; Default is `false`.

### updateHitboxFromGroup(group:String, index:Int)
Updates the specific note type hitboxes.

- `obj` - The name of the array/group member, Example `opponentStrums`, `playerStrums`, etc.
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
- `.color` - The hex color of the object. **(String)**
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

## Group Properties
- `noAnimation` - Disable any singing animation when hitting a note. **(Boolean)**
- `noMissAnimation` - Disable any singing animation when missing/missinput a note. **(Boolean)**
- `hitCausesMiss` - Enables misses when hitting a note. **(Boolean)**
- `hitByOpponent` - Whether the opponent can hit the note or not. **(Boolean)**
- `hitsoundDisabled` - Whether the hitsound is disabled or not. **(Boolean)**
- `hitsound` - The hitsound's sound to be used. **(String)**
- `hitHealth` - The specified amount of health gained when hitting a note; Default value: `0.023`. **(Float)**
- `missHealth` - The specified amount of health taken when missing/missinput a note; Default value: `0.0475`. **(Float)**
- `mustPress` - Checks if the note is on the player's side. **(Boolean)**
- `ignoreNote` - Whether the note should be ignored, will not give misses or deal damage if missed. **(Boolean)**
- `isSustainNote` - Checks if the note is a sustain note. **(Boolean)**
- `texture` - The note's texture to be used. **(String)**
- `noteType` - Checks the current note type. **(String)**
- `noteWasHit` - Checks if the note was hit, duh. **(Boolean)**
- `copyX` - Variable determining if the note will follow the strum's `X` position. **(Boolean)**
- `copyY` - Variable determining if the note will follow the strum's `Y` position. **(Boolean)**
- `copyAngle` - Variable determining if the note will follow the strum's `angle` value. **(Boolean)**
- `copyAlpha` - Variable determining if the note will follow the strum's `alpha` value. **(Boolean)**
- `noteSplashData.disabled` - Whether the note splashes will be disabled or not. **(Boolean)**
- `noteSplashData.texture` - The note splashes texture to be used. **(String)**
- `noteSplashData.useGlobalShader` - If set to `true`, the custom note will use the note's default splash colors. **(Boolean)**
- `noteSplashData.useRGBShader` - If set to `false`, note splashes will no longer use the RGB Shader. **(Boolean)**
- `noteSplashData.r` - The note splashes red value; Default value: `-1`. **(Int)**
- `noteSplashData.g` - The note splashes green value; Default value: `-1`. **(Int)**
- `noteSplashData.b` - The note splashes blue value; Default value: `-1`. **(Int)**
- `noteSplashData.a` - The note splashes alpha/opacity value; Default value: `0.6`. **(Float)**

<details><summary><b>Deprecated Group Properties:</b></summary>
<p>

- `noteSplashDisabled` - Whether the note splashes will be disabled or not. **(Boolean)**
- `noteSplashTexture` - The note splashes texture to be used. **(String)**
- `noteSplashHue` - Changes the HUE value of the note; Goes from `-180` to `180`; Default value: `0`. **(Int)**
- `noteSplashBrt` - Changes the brightness value of the note; Goes from `-100` to `100`; Default value: `0`. **(Int)**
- `noteSplashSat` - Changes the saturation value of the note; Goes from `-100` to `100`; Default value: `0`. **(Int)**

</p>
</details>

## Group Objects
- `notes` - Notes that are currently spawned.
- `unspawnNotes` - Notes that are not currently spawned.
- `eventNotes` - Self explanatory.
- `playerStrums` - Notes from the Player strums; Goes from `0` to `3`.
- `opponentStrums` - Notes from the Opponent strums; Goes from `0` to `3`.
- `strumLineNotes` - Notes from both Player & Opponent strums; Goes from `0` to `7`.