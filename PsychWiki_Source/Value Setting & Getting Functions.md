# General Setters
### setProperty(variable:String, value:Dynamic)
Returns a current variable from PlayState's name. And set's the new value of the variable.

- `variable` - The tag of the object or object variable name.
- `value` - The new value to be set.

Examples:
- Setting the player's current health to 100%: `setProperty('health', 2)`.
- Changing the object x value: `setProperty('object.x', 100)`.
- Skipping a countdown: `setProperty('skipCountdown', true)`.

### setPropertyFromClass(classVar:String, variable:String, value:Dynamic)
Works similar to `setProperty()`, but can be used to access a variable inside a Class other than PlayState.

- `classVar` - The name of the class variable to access the `variable` inside of it.
- `variable` - The object variable name inside of the class variable.
- `value` - The new value to be set.

Examples: 
- Making the mouse cursor visible: `setPropertyFromClass('FlxG', 'mouse.visible', true)`.
- Making the Opponent Notes invisible: `setPropertyFromClass('ClientPrefs', 'opponentStrums', false)`.
- Changing the loop game over song: `setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'your_song_name')`.

### setPropertyFromGroup(obj:String, index:Int, variable:Dynamic, value:Dynamic)
Sets the new value to a variable from an array/group member on PlayState.

- `obj` - The note group name to be set.
- `index` - The Member ID of the note.
- `variable` - The value of the NoteData property.
- `value` - The new value to be set.

Example of changing the note and strum texture: 
```lua
function onCreatePost() -- end of "create"
     for i = 0, getProperty('unspawnNotes.length')-1 do
          -- every note in the chart then subtracts it with 1
          setPropertyFromGroup('strumLineNotes', i, 'texture', 'your_note_name') -- strum texture
          setPropertyFromGroup('unspawnNotes', i, 'texture', 'your_note_name') -- note texture
     end
end
```

# General Getters
### getProperty(variable:String)
Returns a current variable from PlayState's name. 

It can also be used to get the variable from an object that is inside PlayState or a Lua Sprite.

- `variable` - The tag of the object or object variable name.

Examples: 
- Get's the current health: `getProperty('health')`
- Get's the current BF character name: `getProperty('boyfriend.curCharacter')`
- Get's the current x value of the object: `getProperty('object.x')`

### getPropertyFromClass(classVar:String, variable:String)
Works similar to `getProperty()`, but can be used to access a variable inside a Class other than PlayState.

- `classVar` - The name of the class variable to access the `variable` inside of it.
- `variable` - The object variable name inside of the class variable.

Examples:
- Getting each frame in miliseconds: `getPropertyFromClass('flixel.FlxG', 'elapsed')`
- Getting pixelated stage: `getPropertyFromClass('PlayState', 'isPixelStage')`
- Get's the current state of ghost tapping: `getPropertyFromClass('ClientPrefs', 'ghostTapping')`

### getPropertyFromGroup(obj:String, index:Int, variable:Dynamic)
Get's a variable from an array/group member on PlayState.

- `obj` - The note group name to be set.
- `index` - The Member ID of the note.
- `variable` - The value of the NoteData property.

Examples: 
- Gets the note strum time: `getPropertyFromGroup('eventNotes', 0, 0)`
- Gets the next unspawned note's noteData: `getPropertyFromGroup('unspawnNotes', 0, 'noteData')`
- Detects if its a player section: `getPropertyFromGroup('notes', i, 'mustPress')`

***

# Value Properties
Here's some propertie's I know, you can use this to set or get the object property

Also here's the example when using it: `setProperty('object.x', value)` 

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

# NoteData Properties
Note: if you're using these use it in `setPropertyFromGroup()` or `getPropertyFromGroup()`

Example: `setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true)`

- `noAnimation` - If you hit a note, will not play an animation **(Boolean)**
- `noMissAnimation` - If you miss a note, will not play an animation **(Boolean)**
- `hitCausesMiss` - If you hit a note, will cause to miss **(Boolean)**
- `texture` - The texture of the note skin **(String)**
- `noteSplashTexture` -  The texture of the note splash **(String)**
- `noteSplashDisabled` - Disables the note splashes **(Boolean)**
- `hitsoundDisabled` -  Disables the hitsounds **(Boolean)**
- `ratingDisabled` - Disables the ratings **(Boolean)**
- `noteSplashHue` - HUE of the note splash **(Float)**
- `noteSplashSat` - Saturation of the note splash **(Float)**
- `noteSplashBrt` - Brightness of the note splash **(Float)**
- `hitHealth` - If you hit a note, it will add a health and you can customize it! **(Float)**
- `missHealth` - If you miss a note, it will add a health and you can customize it! **(Float)**
- `noteType` - A custom note type **(String)**
- `ignoreNote` - If botplay is on then it will not hit the note **(Boolean)**