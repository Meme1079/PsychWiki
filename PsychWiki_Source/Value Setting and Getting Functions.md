# General Setters
### setProperty(variable:String, value:Dynamic)
Works in the same way as getProperty, but it sets a new value for the variable. 

Also returns the new value of the variable.

Examples: 
- To set the player's current health to 100%, you should use `setProperty('health', 2)`
- To set the current object x coordinates, you should use `setProperty('object.x', 100)`
- If you want to skip the countdown, you should use `setProperty('skipCountdown', true)`

### setPropertyFromClass(classVar:String, variable:String, value:Dynamic)
Works similar to setProperty, but can be used to access a variable inside a Class other than PlayState.

Examples: 
- To make the mouse visible, you should use `setPropertyFromClass('FlxG', 'mouse.visible', true)`.
- To make the `opponentStrums` in invisible, you should use `setPropertyFromClass('ClientPrefs', 'opponentStrums', false)`
- To change the loop song in a game over screen, you should use `setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'your_song_name')`

### setPropertyFromGroup(obj:String, index:Int, variable:Dynamic, value:Dynamic)
Sets the new value to a variable from an array/group member on PlayState.

- `obj` - Group/Array variable
- `index` - Member ID
- `variable` - Variable to get the value
- `value` - New value to set

Example: 
To change the note texture, you should use 
```lua
function onCreatePost() -- end of "create"
     for i = 0, getProperty('unspawnNotes.length')-1 do -- every note in the chart
          setPropertyFromGroup('strumLineNotes', i, 'texture', 'your_note_name') -- strum texture
          setPropertyFromGroup('unspawnNotes', i, 'texture', 'your_note_name') -- note texture
     end
end
```

# General Getters

### getProperty(variable:String)
Returns a current variable from PlayState's name. 

It can also be used to get the variable from an object that is inside PlayState or a Lua Sprite.

Examples: 
- If you wanted to get the current health's value, you should use `getProperty('health')`.
- If you'd want to get Boyfriend's current character, you should use `getProperty('boyfriend.curCharacter')`.
- If you want to know the current x coordinates of an object, you should use `getProperty('object.x')`.

### getPropertyFromClass(classVar:String, variable:String)
Works similar to getProperty, but can be used to access a variable inside a Class other than PlayState.

Examples:
- To get how much time has passed since the last frame (in milliseconds), you should use `getPropertyFromClass('flixel.FlxG', 'elapsed')`
- If you wan't something to appear only in pixel stages, you should use `getPropertyFromClass('PlayState', 'isPixelStage')`
- if you wan't to know if it's ghostTapping, you should use `getPropertyFromClass('ClientPrefs', 'ghostTapping')`

### getPropertyFromGroup(obj:String, index:Int, variable:Dynamic)
Gets a variable from an array/group member on PlayState.

- `obj` - Group/Array variable
- `index` - Member ID
- `variable` - Variable to get the value

Examples: 
- To get the next event note's strum Time, you should use `getPropertyFromGroup('eventNotes', 0, 0)`
- To get the next unspawned note's noteData, you should use `getPropertyFromGroup('unspawnNotes', 0, 'noteData')`
- If you wan't to detect if it's in player section, you should use `getPropertyFromGroup('notes', i, 'mustPress')`

***

# Properties

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
- `.curCharacter` - Gets the character name, it could be: `boyfirend`, `dad`, `gf` **(String)**