# Property Setters
### setProperty(variable:String, value:Dynamic)
Sets the current <ins>property variable inside the Playstate</ins> with a new value.

- `variable` - The variable inside the Playstate or object to be used.
- `value` - The new value to be set.

Examples:
- Setting the players current health to 100%: `setProperty('health', 2)`.
- Changing the object x value property: `setProperty('object.x', 100)`.
- Skipping a countdown: `setProperty('skipCountdown', true)`.

### setPropertyFromClass(classVar:String, variable:String, value:Dynamic)
Sets the current <ins>property variable inside a class other than Playstate</ins> with a new value.

> **Note**: _If you're below the update `0.7.0` of Psych Engine, remove any instance of `backend.` and `data.` from the arguements from the parameters._

- `classVar` - The name of the class; Example: `backend.ClientPrefs`, `backend.Conductor`, `backend.CoolUtil`, etc.
- `variable` - The variable inside the class to be used.
- `value` - The new value to be set.

Examples:
- Making the mouse cursor visible: `setPropertyFromClass('backend.FlxG', 'data.mouse.visible', true)`.
- Making the Opponent Notes invisible: `setPropertyFromClass('backend.ClientPrefs', 'data.opponentStrums', false)`.
- Changing the loop game over song: `setPropertyFromClass('backend.GameOverSubstate', 'data.loopSoundName', 'your_song_name')`.

### setPropertyFromGroup(obj:String, index:Int, variable:Dynamic, value:Dynamic)
Sets the current <ins>property variable inside an array/group member inside the PlayState</ins> with a new value.

- `obj` - The name of the array/group member; Example: `opponentStrums`, `playerStrums`, etc.
- `index` - The index number of the array/group member.
- `variable` - The variable to be used for the array/group member.
- `value` - The new value to be set.

<details><summary>Examples:</summary>

- Disabaling hit sounds:
```lua
function onCreatePost() -- after post create
     for unspawnNotes = 0, getProperty('unspawnNotes.length')-1 do
          -- every unspawned note in the chart, then subtracts it with 1
          setPropertyFromGroup('unspawnNotes', unspawnNotes, 'hitsoundDisabled', true) -- disables it
     end
end
```
- Changing the hit health:
```lua
function onCreatePost()
     for unspawnNotes = 0, getProperty('unspawnNotes.length')-1 do
          setPropertyFromGroup('unspawnNotes', unspawnNotes, 'hitHealth', 0.23)
     end
end
```

- Changing the strum, note, and splash textures:
```lua
function onCreatePost()
     for unspawnNotes = 0, getProperty('unspawnNotes.length')-1 do
          setPropertyFromGroup('strumLineNotes', unspawnNotes, 'texture', 'your_note_name') -- strum texture
          setPropertyFromGroup('unspawnNotes', unspawnNotes, 'texture', 'your_note_name') -- note texture
     end
end
```

</details>

***

# Property Getters
### getProperty(variable:String)
Gets the current <ins>property variable inside the Playstate</ins> current value.

- `variable` - The variable inside the Playstate or object to be used.

Example: Gets the current health, `getProperty('health')`

### getPropertyFromClass(classVar:String, variable:String)
Gets the current <ins>property variable inside a class other than Playstate</ins> current value.

> **Note**: _If you're below the update `0.7.0` of Psych Engine, remove any instance of `backend.` and `data.` from the arguements from the parameters._

- `classVar` - The name of the class; Example: `backend.ClientPrefs`, `backend.Conductor`, `backend.CoolUtil`, etc.
- `variable` - The variable inside the class to be used.

Example: Getting each frame in milliseconds, `getPropertyFromClass('backend.flixel.FlxG', 'data.elapsed')`

### getPropertyFromGroup(obj:String, index:Int, variable:Dynamic)
Gets the current <ins>property variable inside an array/group member inside the PlayState</ins> current value.

- `obj` - The name of the array/group member; Example: `opponentStrums`, `playerStrums`, etc.
- `index` - The index number of the array/group member.
- `variable` - The variable to be used for the array/group member.

Example: Gets the note strum time, `getPropertyFromGroup('eventNotes', 0, 0)`

***

# Property Attributes
### Object
- `.x` - The x position value of an object. **(Float)**
- `.y` - The y position value of an object **(Float)**
- `.width` - The width value of an object. **(Float)**
- `.height` - The height value of an object. **(Float)**
- `.alpha` - The opacity value of an object; Goes from `0` to `1`. **(Float)**
- `.angle` - The angle value of an object. **(Float)**
- `.antialiasing` - Whether the border of an object will be smooth or not, this will affect performance. **(Boolean)**
- `.color` - The hex color value of an object. **(String)**
- `.length` - The length of an Haxe array. **(Any)**
- `.flipX` - Flips the object on the x axis. **(Boolean)**
- `.flipY` - Flips the object on the y axis. **(Boolean)**
- `.scale.x` - The scale at the x axis value of an object, The hitbox is not automatically update. **(Float)**
- `.scale.y` - The scale at the y axis value of an object, The hitbox is not automatically update. **(Float)**
- `.offset.x` - The x offset of an object. **(Float)**
- `.offset.y` - The y offset of an object. **(Float)**
- `.scrollFactor.x` - The scroll factor at the x value of an object. **(Float)**
- `.scrollFactor.y` - The scroll factor at the y value of an object. **(Float)**

### Group Variable
- `noAnimation` - Whether the note, if hit will play a sing animation. **(Boolean)**
- `noMissAnimation` - Whether the note, if miss will play a miss animation. **(Boolean)**
- `hitsoundDisabled` - Disables the hitsound when hitting a note. **(Boolean)**
- `hitCausesMiss` - Whether the note, if hit will cause a miss. **(Boolean)**
- `hitHealth` - Changes the hit health of the note; Default value: `0.023`. **(Float)**
- `missHealth` - Changes the miss health of the note; Default value: `0.0475`. **(Float)**
- `mustPress` - Checks if the opponent or player can hit a note, I think. **(Boolean)**
- `ignoreNote` - Whether the note should be ignore or not. **(Boolean)**
- `isSustainNote` - Checks if the note is long. **(Boolean)**
- `noteType` - Checks the type of the note. **(String)**
- `texture` - Changes the note texture. **(String)**
- `noteSplashTexture` - Changes the splash texture. **(String)**
- `noteSplashDisabled` - Disables note splash when hitting sick. **(Boolean)**
- `noteSplashHue` - Changes the HUE value of the note; Goes from `-180` to `180`; Default value: `0`. **(Int)**
- `noteSplashBrt` - Changes the brightness value of the note; Goes from `-100` to `100`; Default value: `0`. **(Int)**
- `noteSplashSat` - Changes the saturation value of the note; Goes from `-100` to `100`; Default value: `0`. **(Int)**
- `copyX` - Checks if the note strums are included when changing the x position of the note. **(Boolean)**
- `copyY` - Checks if the note strums are included when changing the y position of the note. **(Boolean)**
- `copyAngle` - Checks if the note strums are included when changing the angle of the note. **(Boolean)**
- `copyAlpha` - Checks if the note strums are included when changing the opacity of the note. **(Boolean)**