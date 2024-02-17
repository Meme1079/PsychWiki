# Character Functions
### characterDance(character:String)
Makes a character do the idle dance.

- `character` - The character type to be used; Can be either: `boyfriend`, `dad` or `gf`.

### setCharacterX(type:String, value:Float)
Sets the current <ins>x position value</ins> of a character group to a new value. This will also move all precached characters from the same type into the position you want.

- `type` - The character type to be used; Can be either: `boyfriend`, `dad` or `gf`.
- `value` - The new x value of the character position.

### setCharacterY(type:String, value:Float)
Sets the current <ins>y position value</ins> of a character group to a new value. This will also move all precached characters from the same type into the position you want.

- `type` - The character type to be used; Can be either: `boyfriend`, `dad` or `gf`.
- `value` - The new y value of the character position.

### getCharacterX(type:String)
Gets the current <ins>x position value</ins> of a character group; Returns a `float` number.

- `type` - The character type to be used; Can be either: `boyfriend`, `dad` or `gf`.

### getCharacterY(type:String)
Gets the current <ins>y position value</ins> of a character group; Returns a `float` number.

- `type` - The character type to be used; Can be either: `boyfriend`, `dad` or `gf`.

***

# Accuracy Bar Functions
### addScore(value:Int = 0)
Adds the `value` parameter to the current <ins>song score total</ins> and recalculates the rating.

### addMisses(value:Int = 0)
Adds the `value` parameter to the current <ins>song miss total</ins> and recalculates the rating.

### addHits(value:Int = 0)
Adds the `value` parameter to the current <ins>song hit total</ins> and recalculates the rating.

### addHealth(value:Float = 0)
Adds the `value` parameter to the current <ins>song health total</ins>.

***

### setScore(value:Int = 0)
Sets the `value` parameter of the current <ins>song score total</ins> with a new value and recalculates the rating.

### setMisses(value:Int = 0)
Sets the `value` parameter of the current <ins>song miss total</ins> with a new value and recalculates the rating.

### setHits(value:Int = 0)
Sets the `value` parameter of the current <ins>song hit total</ins> with a new value and recalculates the rating.

### setHealth(value:Int = 0)
Sets the `value` parameter of the current <ins>song health total</ins> with a new value.

***

### setRatingPercent(value:Float)
Sets the current <ins>rating percent</ins> to a new value, in case you want to do your own rating calculation.

- `value` - The new accuracy rating percent, Goes from `0` to `1`.

### setRatingName(value:String)
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
Gets the current <ins>songs health total</ins> current value; Returns a `float` number.

***

# Camera Functions
### cameraSetTarget(target:String)
Makes the <ins>camera focus</ins> on the target.

- `target` - The character type to target; Can be either: `boyfriend` or `dad`.

### cameraShake(camera:String, intensity:Float, duration:Float)
Makes the <ins>camera shake</ins>.

- `camera` - The camera state to be set in; Can be either: `camGame`, `camHUD` or `camOther`.
- `intensity` - How intense the camera will shake, recommended value is `0.05`.
- `duration` - The duration length of the camera shake to end.

### cameraFlash(camera:String, color:String, duration:Float, forced:Bool)
Makes the <ins>camera flash</ins>.

- `camera` - The camera state to be set in; Can be either: `camGame`, `camHUD` or `camOther`.
- `color` - The hex color of the flash.
- `duration` - The duration length of the camera flash to end.
- `forced` - If set to `true`, the flash will be restarted if there's already a flash currently happening.

### cameraFade(camera:String, color:String, duration:Float, forced:Bool)
Makes the <ins>camera fade</ins>.

- `camera` - The camera state to be set in; Can be either: `camGame`, `camHUD` or `camOther`.
- `color` - The hex color of the fade.
- `duration` - The duration length of the camera fade to end.
- `forced` - If set to `true`, the fade will be restarted if there's already a fade currently happening.

***

# Dialogues/Cutscene Functions
### startDialogue(dialogueFile:String, song:String = null)
Starts the <ins>dialogue stuff</ins>, it will load the `json` file relative to `data/your-song-name/` folder. When the <ins>dialogue is finished</ins>, the `startCountdown()` or `endSong()` function will be called depending on where you started the dialogue.

If the <ins>dialogue line has finished</ins>, `onNextDialogue()` callback will be called. If it <ins>skips</ins> then `onSkipDialogue()` callback will be called.

- `dialogueFile` - The name of the dialogue `json` file.
- `song` - An optional parameter, The `ogg` music file to be played; Must be relative to `mods/music` or `assets/music` folders.

### startVideo(videoFile:String)
Starts a <ins>video</ins>.

- `videoFile` - The name of the video `mp4` file; Must be relative to `mods/videos` folder.

### startCountdown()
Starts the <ins>countdown</ins>, used it if you want to skip the annoying dialogue or video manually.

***

# Song Functions
### loadSong(name:String, difficultyNum:Int)
Loads a new song.

> **Warning**: _You can't load the song if the song's week `json` does not have one of the same difficulty names as the current song's week `json`_.

- `name` - The name of the song to be loaded.
- `difficultyNum` - The difficulty ID number of the song.

### restartSong(skipTransition:Bool)
Restarts the song.

- `skipTransition` - Whether there will be a transition when the song is reseting.

### exitSong(skipTransition:Bool)
Exits the song with an optional transition; Not to be confised with `endSong()` function.

- `skipTransition` - Whether there will be a transition when the song has exiting.

### endSong()
Ends the song manually.

***

# Debuging Functions
### debugPrint(text:Dynamic = '', color:String = 'WHITE')
This will display a debug message in the <ins>top-left corner of the screen</ins>.

- `text` - The text to be displayed.
- `color` - An optional parameter, The specified hex color to display the text.

Example: `debugPrint("Current boyfriend character: ", getProperty('boyfriend.curCharacter')` This will get the current bf character with the `getProperty()` function and will print `Current boyfriend character: 'bf'`.

### close()
Stops your script in the next <ins>100 milliseconds</ins>. Recommended to place it at the <ins>stage script</ins> since it's not being used anymore; Do not place this function anywhere if the script needs to be constantly updated; e.g `onUpdate()` or `onStepHit`.

***

# Color Functions
### getColorFromHex(color:String)
Gets the <ins>specific hex color</ins> . Very useful especially when setting/getting a specific hex color, really useful to be honest.

- `color` - The specified hex color duh.

### getColorFromName(color:String)
Gets the color <ins>from its name</ins>. This function has alternative names you can use: `FlxColor()`, `getColorFromString()`.

- `color` - The color name.

### setHealthBarColors(leftHex:String, ?rightHex:String)
Changes the <ins>health bar</ins> background-colors.

- `leftHex` - The opponent hex color of the health bar.
- `rightHex` - An optional parameter, The player hex color of the health bar.

### setTimeBarColors(leftHex:String, ?rightHex:String)
Changes the <ins>time bar</ins> background-colors.

- `leftHex` - The percentage bar hex color of the time bar.
- `rightHex` - An optional parameter, The background-color hex color of the time bar.

### getPixelColor(obj:String, x:Int, y:Int)
Gets the <ins>hex color of an object by pixels</ins>; Returns a `number` that when converted into hexidecimal, becomes formatted as `FFFFFFFFAARRGGBB`.

- `obj` - The object tag name to be used.
- `x` - The x-coordinate value in pixels.
- `y` - The y-coordinate value in pixels.

***

# Miscellaneous Functions
### triggerEvent(name:String, arg1:String, arg2:String)
Triggers an event without having to insert the event into the chart editor.

- `name` - The name of the event in the Chart editor.
- `arg1` - The value on Value 1.
- `arg2` - The value on Value 2.

### getModSetting(saveTag:String, ?modName:String = null)
Gets the settings `json` from the mod's `data` folder.

- `saveTag` - The specified setting elements from the `json`.
- `modName` - An optional parameter, The given mod name; Default value: `nil`.

### changePresence(details:String, state:Null\<String\>, ?smallImageKey:String, ?hasStartTimestamp:Bool, ?endTimestamp:Float)
Changes your [Discord RPC](https://raw.githubusercontent.com/Jxyme/simple-discord-rpc/main/screenshots/8zptsNqx.png) status.

- `details` - Your details on what your doing inside the game.
- `state` - The description of the `details`.
- `smallImageKey` - An optional parameter, The image key to be shown at the bottom-left corner.
- `hasStartTimestamp` - An optional parameter, Whether your Discord RPC should have a time stamp or not.
- `endTimestamp` - An optional parameter, How many decimal numbers to be shown.

### getSongPosition()
Returns the current song position in milliseconds; Shortcut to: `getPropertyFromClass('backend.Conductor', 'songPosition')`.

Deprecated Original Shortcut: `getPropertyFromClass('Conductor', 'songPosition')`