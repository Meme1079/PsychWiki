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

- `classVar` - The name of the class, Example `ClientPrefs`, `Conductor`, `CoolUtil`, etc.
- `variable` - The variable inside the class to be used.
- `value` - The new value to be set.

Examples:
- Making the mouse cursor visible: `setPropertyFromClass('FlxG', 'mouse.visible', true)`.
- Making the Opponent Notes invisible: `setPropertyFromClass('ClientPrefs', 'opponentStrums', false)`.
- Changing the loop game over song: `setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'your_song_name')`.

### setPropertyFromGroup(obj:String, index:Int, variable:Dynamic, value:Dynamic)
Sets the current <ins>property variable inside an array/group member inside the PlayState<.ins> with a new value.

- `obj` - The name of the array/group member, Example `opponentStrums`, `playerStrums`, etc.
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

- `classVar` - The name of the class, Example `ClientPrefs`, `Conductor`, `CoolUtil`, etc.
- `variable` - The variable inside the class to be used.

Example: Getting each frame in miliseconds, `getPropertyFromClass('flixel.FlxG', 'elapsed')`

### getPropertyFromGroup(obj:String, index:Int, variable:Dynamic)
Gets the current <ins>property variable inside an array/group member inside the PlayState</ins> current value.

- `obj` - The name of the array/group member, Example `opponentStrums`, `playerStrums`, etc.
- `index` - The index number of the array/group member.
- `variable` - The variable to be used for the array/group member.

Example: Gets the note strum time, `getPropertyFromGroup('eventNotes', 0, 0)`

***

# Text Property Setters
### setTextString(tag:String, text:String)
Sets the text object <ins>current text content</ins> with a new text content.

- `tag` - The text object tag name to be used.
- `string` - The new text content of the text.

### setTextSize(tag:String, size:Int)
Sets the text object <ins>current size with</ins> a new value.

- `tag` - The text object tag name to be used.
- `size` - The new text size of the text.

### setTextWidth(tag:String, width:Float)
Sets the text object <ins>current box width</ins> with a new value.

- `tag` - The text object tag name to be used.
- `width` - The new text box width of the text.

### setTextBorder(tag:String, size:Int, color:String)
Sets the text object <ins>current border</ins> with a new value, it can even <ins>change the color</ins> of it.

- `tag` - The text object tag name to be used.
- `size` - The new text border size of the text.
- `color` - The new text border color of the text.

### setTextColor(tag:String, color:String)
Sets the text object <ins>current text color</ins> with a new hex color.

- `tag` - The text object tag name to be used.
- `color` - The new text color of the text.

### setTextAlignment(tag:String, alignment:String = 'left')
Sets the text object <ins>current alignment</ins> with a new value.

- `tag` - The text object tag name to be used.
- `alignment` - The new text alignment of the text.

### setTextFont(tag:String, font:String)
Sets the text object <ins>current font</ins> with a new font.

- `tag` - The text object tag name to be used.
- `font` - The new text font of the text.

### setTextItalic(tag:String, italic:Bool)
Sets the text object <ins>into italicize</ins>. _(Who the hell even uses this???)_

- `tag` - The text object tag name to be used.
- `italic` - 

***

# Text Property Getters
### getTextString(tag:String)
Gets the text object <ins>current text content</ins>.

- `tag` - The text object tag name to be used.

### getTextSize(tag:String)
Gets the text object <ins>current size value</ins>.

- `tag` - The text object tag name to be used.

### getTextWidth(tag:String)
Gets the text object <ins>current box width</ins>.

- `tag` - The text object tag name to be used.

### getTextFont(tag:String, font:String)
Gets the text object <ins>current font</ins>.

- `tag` - The text object tag name to be used.

***

# Property Attributes
### Object
- `.x` - The x position value of an object. **(Float)**
- `.y` - The y position value of an object **(Float)**
- `.width` - The width value of an object. **(Float)**
- `.height` - The height value of an object. **(Float)**
- `.alpha` - The opacity value of an object, Goes from `0` to `1`. **(Float)**
- `.angle` - The angle value of an object. **(Float)**
- `.antialiasing` - Whether the border of an object will be smooth or not, this will affect performance. **(Boolean)**
- `.color` - The hex color value of an object. **(String)**
- `.flipX` - Flips the object on the x axis. **(Boolean)**
- `.flipY` - Flips the object on the y axis. **(Boolean)**
- `.scale.x` - The scale at the x axis value of an object, The hitbox is not automatically update. **(Float)**
- `.scale.y` - The scale at the y axis value of an object, The hitbox is not automatically update. **(Float)**
- `.scrollFactor.x` - The scroll factor at the x value of an object. **(Float)**
- `.scrollFactor.y` - The scroll factor at the y value of an object. **(Float)**

### Group Variable 
- `noAnimation` - Whether the note, if hit will play an sing animation. **(Boolean)**
- `noMissAnimation` - Whether the note, if miss will plan an miss animation. **(Boolean)**
- `hitsoundDisabled` - Disables the hitsound when hitting a note. **(Boolean)**
- `hitCausesMiss` - Whether the note, if hit will cause an miss. **(Boolean)**
- `hitHealth` - Changes the hit health of the note, Defualt is `0.023`. **(Float)**
- `missHealth` - Changes the miss health of the note, Defualt is `0.0475`. **(Float)**
- `mustPress` - Checks if the opponent or player can hit a note, I think. **(Boolean)**
- `ignoreNote` - Whether the note should be ignore or not. **(Boolean)**
- `isSustainNote` - Checks if the note is long. **(Boolean)**
- `noteType` - Checks the type of the note. **(String)**
- `texture` - Changes the note texture. **(String)**
- `noteSplashTexture` - Changes the splash texture. **(String)**
- `noteSplashDisabled` - Disables note splash when hitting sick. **(Boolean)**
- `noteSplashHue` - Changes the HUE value of the note, Goes from `-180` to `180`; Defualt is `0`. **(Int)**
- `noteSplashBrt` - Changes the brightness value of the note, Goes from `-100` to `100`; Defualt is `0`. **(Int)**
- `noteSplashSat` - Changes the saturation value of the note, Goes from `-100` to `100`; Defualt is `0`. **(Int)**
- `copyX` - Checks if the note strums are included when changing the x position of the note. **(Boolean)**
- `copyY` - Checks if the note strums are included when changing the y position of the note. **(Boolean)**
- `copyAngle` - Checks if the note strums are included when changing the angle of the note. **(Boolean)**
- `copyAlpha` - Checks if the note strums are included when changing the opacity of the note. **(Boolean)**