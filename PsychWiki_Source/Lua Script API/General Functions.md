# Character Functions
### characterDance(character:String) 
Makes character do the idle dance.

- `character` - The name of the character to be used; Can be either: `boyfriend`, `dad` or `gf`.

### setCharacterX(type:String, value:Float)
Sets the current <ins>x position value</ins> of a character to a new value. This will also move all precached characters from the same type into the position you want.

- `type` - The character name to be used; Can be either: `boyfriend`, `dad` or `gf`.
- `value` - The new x value of the character position.

### setCharacterY(type:String, value:Float)
Sets the current <ins>y position value</ins> of a character to a new value. This will also move all precached characters from the same type into the position you want.

- `type` - The character name to be used; Can be either: `boyfriend`, `dad` or `gf`.
- `value` - The new y value of the character position.

### getCharacterX(type:String)
Gets the current <ins>x position value</ins> of a character; Returns an `int` number.

- `type` - The character name to be used; Can be either: `boyfriend`, `dad` or `gf`.

### getCharacterY(type:String)
Gets the current <ins>y position value</ins> of a character; Returns an `int` number.

- `type` - The character name to be used; Can be either: `boyfriend`, `dad` or `gf`.

***

# Accuracy Bar Functions
### addScore(value:Int = 0)
Adds the `value` parameter to the current <ins>song score total</ins> and recalculates the rating.

### addMisses(value:Int = 0)
Adds the `value` parameter to the current <ins>song miss total</ins> and recalculates the rating.

### addHits(value:Int = 0)
Adds the `value` parameter to the current <ins>song hit total</ins> and recalculates the rating.

### addHealth(value:Float = 0)
Adds the `value` parameter to the current <ins>song health total</ins> and recalculates the rating.

***

### setScore(value:Int = 0)
Sets the `value` parameter of the current <ins>song score total</ins> with a new value and recalculates the rating.

### setMisses(value:Int = 0)
Sets the `value` parameter of the current <ins>song miss total</ins> with a new value and recalculates the rating.

### setHits(value:Int = 0)
Sets the `value` parameter of the current <ins>song hit total</ins> with a new value and recalculates the rating.

### setHealth(value:Int = 0)
Sets the `value` parameter of the current <ins>song health total</ins> with a new value and recalculates the rating.

***

### setRatingPercent(value:Float)
Sets the current <ins>rating percent</ins> to a new value, in case you want to do your own rating calculation.

- `value` - The new accuracy rating percent, Goes from `0` to `1`.

### setRatingString(value:String)
Sets the current <ins>rating name</ins> to a new value, in case you want to do your own rating calculation.

- `value` - The new rating string name.

### setRatingFC(value:String)
Sets the current <ins>rating combo name</ins> to a new value.

- `value` - The new rating combo name.

***

### getScore()
Gets the current <ins>songs score total</ins> current value; Returns an `int` number.

### getMisses()
Gets the current <ins>songs miss total</ins> current value; Returns an `int` number.

### getHits()
Gets the current <ins>songs hit total</ins> current value; Returns an `int` number.

### getHealth()
Gets the current <ins>songs health total</ins> current value; Returns an `float` number.

***

# Camera Functions
### cameraSetTarget(target:String)
Makes the <ins>camera focus</ins> on the target.

- `target` - The character type to target; Can be either: `boyfriend` or `dad`.

### cameraShake(camera:String, intensity:Float, duration:Float)
Makes the <ins>camera shake</ins>.

- `camera` - The camera state to be set in; Can be either: `camGame`, `camHUD` or `camOther`.
- `intensity` - How much intesity will the camera shake, recommended value is `0.05`.
- `duration` - The duration length of the camera shake to end.

### cameraFlash(camera:String, color:String, duration:Float, forced:Bool)
Makes the <ins>camera flash</ins>.

- `camera` - The camera state to be set in; Can be either: `camGame`, `camHUD` or `camOther`.
- `color` - The hex color of the flash.
- `duration` - The duration length of the camera flash to end.
- `forced` - If set to `true`, then the flash will be reset.

### cameraFade(camera:String, color:String, duration:Float, forced:Bool)
Makes the <ins>camera fade</ins>.

- `camera` - The camera state to be set in; Can be either: `camGame`, `camHUD` or `camOther`.
- `color` - The hex color of the fade.
- `duration` - The duration length of the camera fade to end.
- `forced` - If set to `true`, then the fade will be reset.

***

# Debuging Functions
### debugPrint(text1, text2, text3, text4, text5)
This will display a debug message in the <ins>top-left corner of the screen</ins>. 

- `texts` - Every parameter of `debugPrint()`, all of them are optional.

Example: `debugPrint("Current boyfriend character: ", getProperty('boyfriend.curCharacter')` This will get the current bf character with the `getProperty()` function and will print `Current boyfriend character: 'bf'`.

### close()
Stops your script in the next <ins>100 milliseconds</ins>. Recommended to place it at the <ins>stage script</ins> since it's not being used anymore.

***

# Other Functions
### triggerEvent(name:String, arg1:String, arg2:String)
Triggers an event without having to insert the event into the chart editor.

- `name` - The name of the event in the Chart editor.
- `arg1` - The value on Value 1.
- `arg2` - The value on Value 2.

### setHealthBarColors(leftHex:String, rightHex:String)
Changes the <ins>health bar</ins> colors.

- `leftHex` - The opponent hex color of the health bar.
- `rightHex` - The player hex color of the health bar.

### setTimeBarColors(leftHex:String, rightHex:String)
Changes the <ins>time bar</ins> colors.

- `leftHex` - The hex color of the time bar.
- `rightHex` - The background hex color of the time bar.

### getColorFromHex(color:String)
Gets the <ins>specific hex color</ins>. Expecially when setting/getting a specific hex color, really useful to be honest.

- `color` - The hex color to be used.

Example: If you want to get the color orange use `getColorFromHex('FF7800')` or `getColorFromHex('0xFFFF7800')`.

### getSongPosition()
Returns the current song position, Shortcut to `getPropertyClass('Conductor', 'songPosition')`.

### openCustomSubstate(name:String, pauseGame:Bool = false)
Opens your custom substate.

- `name` - The name of your custom substate to be used.
- `pauseGame` - An optional parameter, will pause your game after the custom substate has been opened.

### closeCustomSubstate()
Closes your custom substate.