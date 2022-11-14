# General Setters
### setProperty(variable:String, value:Dynamic)
Sets the current variable PlayStates name with a new value. 

- `variable` - The tag of the object or object variable name.
- `value` - The new value to be set.

Examples:
- Setting the players current health to 100%: `setProperty('health', 2)`.
- Changing the object x value: `setProperty('object.x', 100)`.
- Skipping a countdown: `setProperty('skipCountdown', true)`.

### setPropertyFromClass(classVar:String, variable:String, value:Dynamic)
Sets the current variable inside a class in the PlayStates name with a new value, works similar to `setProperty()`.

- `classVar` - The name of the class variable to access the `variable` inside of it.
- `variable` - The object variable name inside of the class variable.
- `value` - The new value to be set.

Examples: 
- Making the mouse cursor visible: `setPropertyFromClass('FlxG', 'mouse.visible', true)`.
- Making the Opponent Notes invisible: `setPropertyFromClass('ClientPrefs', 'opponentStrums', false)`.
- Changing the loop game over song: `setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'your_song_name')`.

### setPropertyFromGroup(obj:String, index:Int, variable:Dynamic, value:Dynamic)
Sets the current variable from an array/group member on the PlayState names with a new value.

- `obj` - The note group name to be set.
- `index` - The member ID of the note.
- `variable` - The value of the notedata property.
- `value` - The new value to be set.

<details><summary>Example:</summary>
<p>

```lua
function onCreatePost() -- end of "create"
     for i = 0, getProperty('unspawnNotes.length')-1 do
          -- every note in the chart then subtracts it with 1
          setPropertyFromGroup('strumLineNotes', i, 'texture', 'your_note_name') -- strum texture
          setPropertyFromGroup('unspawnNotes', i, 'texture', 'your_note_name') -- note texture
     end
end
```

</p>
</details>

# General Getters
### getProperty(variable:String)
Gets the current variable PlayStates name current value.

- `variable` - The tag of the object or object variable name.

Examples: 
- Gets the current health: `getProperty('health')`
- Gets the current BF character name: `getProperty('boyfriend.curCharacter')`
- Gets the current x value of the object: `getProperty('object.x')`

### getPropertyFromClass(classVar:String, variable:String)
Gets the current variable inside a class in the PlayStates name current value, works similar to `getProperty()`.

- `classVar` - The name of the class variable to access the `variable` inside of it.
- `variable` - The object variable name inside of the class variable.

Examples:
- Getting each frame in miliseconds: `getPropertyFromClass('flixel.FlxG', 'elapsed')`
- Getting pixelated stage: `getPropertyFromClass('PlayState', 'isPixelStage')`
- Gets the current state of ghost tapping: `getPropertyFromClass('ClientPrefs', 'ghostTapping')`

### getPropertyFromGroup(obj:String, index:Int, variable:Dynamic)
Gets the current variable from an array/group member on the PlayState current value.

- `obj` - The note group name to be set.
- `index` - The Member ID of the note.
- `variable` - The value of the NoteData property.

Examples: 
- Gets the note strum time: `getPropertyFromGroup('eventNotes', 0, 0)`
- Gets the next unspawned note's noteData: `getPropertyFromGroup('unspawnNotes', 0, 'noteData')`
- Detects if its a player section: `getPropertyFromGroup('notes', i, 'mustPress')`

***

# Value Properties
Heres some properties I know, you can use this to set or get the object property.

Also here's the example when using it: `setProperty('object.x', value)`.

- `.x` - The x value of the object **(Float)**
- `.y` - The y value of the object **(Float)**
- `.scale.x` - The x scale value of the object **(Float)**
- `.scale.y` - The y scale value of the object **(Float)**
- `.flipX` - Will flip the x value of the object **(Boolean)**
- `.flipY` - Will flip the y value of the object **(Boolean)**
- `.scrollFactor.x` - The scroll factor of x value **(Float)**
- `.scrollFactor.y` - The scroll factor of y value **(Float)**
- `.angle` - The angle value of the object **(Float)**
- `.alpha` - The opacity value of the object, from `0` to `1` **(Float)**
- `.visible` - The visibility of the object, `true` is visible and `false` is invisible **(Boolean)**
- `.antialiasing` - The antialiasing of the object set it to `false` if the image is a pixel **(Boolean)**
- `.curCharacter` - Gets the character name, it could be: `boyfriend`, `dad`, `gf` **(String)**

***

# Song/Week Properties
- `skipCountdown` - Skips the countdown.
- `deathCounter` - How many deaths you currently have.
- `debugKeysChart` - The key for the chart editor.
- `debugKeysCharacter` The key for the character editor.
- `isPixelStage` – Indicates whether it is in pixel mode.
- `inCutscene` - Indicates whether it is in a cutscene.

<details><summary>All Shortcut to:</summary>
<p>

- `skipCountdown` - `getProperty('skipCountdown')`
- `deathCounter` - `getPropertyFromClass('PlayState', 'deathCounter')`
- `debugKeysChart` - `getProperty('debugKeysChart')`
- `debugKeysCharacter` - `getProperty('debugKeysCharacter')`
- `isPixelStage` – `getPropertyFromClass('PlayState', 'isPixelStage')`
- `inCutscene` - `getPropertyFromClass('PlayState', 'inCutscene')`

</p>
</details>

***

# NoteData Properties
> **Note**: _if you're using these use it in `setPropertyFromGroup()` or `getPropertyFromGroup()`_

<details><summary>Example:</summary>
<p>

```lua
function onCreatePost()
     for i = 0, getProperty('unspawnNotes.lenght')-1 do
          setPropertyFromGroup('unspawnNotes', i, 'hitHealth', 0.9) -- changes the hithealth
     end
end
```

</p>
</details>

- `noAnimation` - If you hit a note, will not play an animation. **(Boolean)**
- `noMissAnimation` - If you miss a note, will not play an animation. **(Boolean)**
- `hitCausesMiss` - If you hit a note, will cause to miss. **(Boolean)**
- `texture` - The texture of the note skin. **(String)**
- `noteSplashTexture` -  The texture of the note splash. **(String)**
- `noteSplashDisabled` - Disables the note splashes. **(Boolean)**
- `hitsoundDisabled` -  Disables the hitsounds. **(Boolean)**
- `ratingDisabled` - Disables the ratings. **(Boolean)**
- `noteSplashHue` - HUE of the note splash. **(Float)**
- `noteSplashSat` - Saturation of the note splash. **(Float)**
- `noteSplashBrt` - Brightness of the note splash. **(Float)**
- `hitHealth` - If you hit a note, it will add a health and you can customize it! **(Float)**
- `missHealth` - If you miss a note, it will add a health and you can customize it! **(Float)**
- `noteType` - A custom note type. **(String)**
- `ignoreNote` - If botplay is on then it will not hit the note. **(Boolean)**