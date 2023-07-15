# Property Setters
### setProperty(variable:String, value:Dynamic, allowMaps:Bool = false)
Sets the current <ins>property variable inside the Playstate</ins> with a new value.

- `variable` - The variable inside the Playstate or object to be used.
- `value` - The new value for the `variable` parameter to be set.
- `allowMaps` - WHAT THE HELL DOES IT SUPPOSED TO DO?????

### setPropertyFromClass(classVar:String, variable:String, value:Dynamic, ?allowMaps:Bool = false)
Sets the current <ins>property variable inside a class other than Playstate</ins> with a new value.

- `classVar` - The name of the class; Example: `ClientPrefs`, `Conductor`, `CoolUtil`, etc.
- `variable` - The variable inside the Playstate or object to be used.
- `value` - The new value for the `variable` parameter to be set.
- `allowMaps` - 

### setPropertyFromGroup(obj:String, index:Int, variable:Dynamic, value:Dynamic)
Sets the current <ins>property variable inside an array/group member inside the PlayState</ins> with a new value.

- `obj` - The name of the array/group member; Example: `opponentStrums`, `playerStrums`, etc.
- `index` - The index number of the array/group member to be referenced.
- `variable` - The variable to be used for the array/group member.
- `value` - The new value for the `variable` parameter to be set.

***

# Property Getters
### getProperty(variable:String, ?allowMaps:Bool = false)
Gets the current <ins>property variable inside the Playstate</ins> current value.

- `variable` - The variable inside the Playstate or object to be used.
- `allowMaps` -

### getPropertyFromClass(classVar:String, variable:String, ?allowMaps:Bool = false)
Gets the current <ins>property variable inside a class other than Playstate</ins> current value.

- `classVar` - The name of the class; Example: `ClientPrefs`, `Conductor`, `CoolUtil`, etc.
- `variable` - The variable inside the Playstate or object to be used.
- `allowMaps` -

### getPropertyFromGroup(obj:String, index:Int, variable:Dynamic, ?allowMaps:Bool = false)
Gets the current <ins>property variable inside an array/group member inside the PlayState</ins> current value.

- `obj` - The name of the array/group member; Example: `opponentStrums`, `playerStrums`, etc.
- `index` - The index number of the array/group member to be referenced.
- `variable` - The variable to be used for the array/group member.
- `allowMaps` -

***

# Property Methods & Instances
### callMethod(funcToRun:String, ?args:Array\<Dynamic\> = null)
### callMethodFromClass(className:String, funcToRun:String, ?args:Array\<Dynamic\> = null)
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
Updates the specific <ins>note type hitboxes</ins>.

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
- `.scale.x` - The scale at the x axis value of an object, The hitbox is not automatically update. **(Float)**
- `.scale.y` - The scale at the y axis value of an object, The hitbox is not automatically update. **(Float)**
- `.offset.x` - The x offset value of the object. **(Float)**
- `.offset.y` - The y offset value of the object. **(Float)**
- `.scrollFactor.x` - The scroll factor at the x value of the object. **(Float)**
- `.scrollFactor.y` - The scroll factor at the y value of the object. **(Float)**

## Group Properties
- `noAnimation` - Disable any singing animation when hitting a note. **(Boolean)**
- `noMissAnimation` - Disable any singing animation when missing/missinput a note. **(Boolean)**
- `hitCausesMiss` - Enables misses when hitting a note. **(Boolean)**
- `hitByOpponent` - Whether the opponent can hit the note or not. **(Boolean)**
- `hitsoundDisabled` - Whether the hitsound is disable or not. **(Boolean)**
- `hitsound` - The hitsound's sound to be used. **(String)**
- `hitHealth` - The specified amount of hit health when hitting a note; Defualt value: `0.023`. **(Float)**
- `missHealth` - The specified amount of miss health when missing/missinput a note; Defualt value: `0.0475`. **(Float)**
- `mustPress` - Checks if the opponent or player can hit a note, I think. **(Boolean)**
- `ignoreNote` - Whether the note should be ignore or not. **(Boolean)**
- `isSustainNote` - Checks if the note is long. **(Boolean)**
- `texture` - The note's texture to be used. **(String)**
- `noteType` - Checks the current note type. **(String)**
- `noteWasHit` - Checks if the note was hit, duh. **(Boolean)**
- `copyX` - Checks if the note strums are included when changing the x position of the note. **(Boolean)**
- `copyY` - Checks if the note strums are included when changing the y position of the note. **(Boolean)**
- `copyAngle` - Checks if the note strums are included when changing the angle value of the note. **(Boolean)**
- `copyAlpha` - Checks if the note strums are included when changing the alpha/opacity value of the note. **(Boolean)**
- `noteSplashData.disabled` - Whether the note splashes be disable or not. **(Boolean)**
- `noteSplashData.texture` - The note splashes texture to be used. **(String)**
- `noteSplashData.useGlobalShader` - If set to `true`, the custom note will use the note's defualt splash colors. **(Boolean)**
- `noteSplashData.r` - The note splashes red value. **(Int)**
- `noteSplashData.g` - The note splashes green value. **(Int)**
- `noteSplashData.b` - The note splashes blue value. **(Int)**
- `noteSplashData.a` - The note splashes alpha/opacity value. **(Float)**

***

# Version Changes