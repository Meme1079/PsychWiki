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
Adds the `value` parameter to the current <ins>song score total</ins> and recalculates the rating; Default value: `0`.

### addMisses(value:Int = 0)
Adds the `value` parameter to the current <ins>song miss total</ins> and recalculates the rating; Default value: `0`.

### addHits(value:Int = 0)
Adds the `value` parameter to the current <ins>song hit total</ins> and recalculates the rating; Default value: `0`.

### addHealth(value:Float = 0)
Adds the `value` parameter to the current <ins>song health total</ins>; Default value: `0`.

***

### setScore(value:Int = 0)
Sets the `value` parameter of the current <ins>song score total</ins> with a new value and recalculates the rating; Default value: `0`.

### setMisses(value:Int = 0)
Sets the `value` parameter of the current <ins>song miss total</ins> with a new value and recalculates the rating; Default value: `0`.

### setHits(value:Int = 0)
Sets the `value` parameter of the current <ins>song hit total</ins> with a new value and recalculates the rating; Default value: `0`.

### setHealth(value:Int = 0)
Sets the `value` parameter of the current <ins>song health total</ins> with a new value; Default value: `0`.

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

- `camera` - The camera state to apply to; Can be either: `camGame`, `camHUD` or `camOther`.
- `intensity` - The intensity of the shaking of the camera; Recommended value: `0.05`.
- `duration` - The duration length of the camera shaking to manually end.

### cameraFlash(camera:String, color:String, duration:Float, ?forced:Bool)
Makes the <ins>camera flash</ins>.

- `camera` - The camera state to apply to; Can be either: `camGame`, `camHUD` or `camOther`.
- `color` - The flash color to display.
- `duration` - The duration length of the camera flash to manually end.
- `forced` - If set to `true`, the flash will restart if there's already a flash currently happening.

### cameraFade(camera:String, color:String, duration:Float, forced:Bool)
Makes the <ins>camera fade into the color</ins>.

- `camera` - The camera state to apply to; Can be either: `camGame`, `camHUD` or `camOther`.
- `color` - The fade color to display.
- `duration` - The duration length of the camera fade to manually end.
- `forced` - If set to `true`, the fade will restart if there's already a fade currently happening.

***

# Camera Property Setter/Getters Functions
### setCameraScroll(x:Float, y:Float)
<ins>Sets the camera coordinate point</ins> of the game's world coordinates to a new value.

- `x` - The x-coordinate point of the game's world coordinate to set to.
- `y` - The y-coordinate point of the game's world coordinate to set to.

### setCameraFollowPoint(x:Float, y:Float)
<ins>Sets the camera position to focus</ins> on, to a new value.

- `x` - The x position value to set to, for the camera to focus on.
- `y` - The y position value to set to, for the camera to focus on.

### addCameraScroll(?x:Float, ?y:Float)
<ins>Adds a value to the camera coordinate point</ins> of the game's world coordinates

- `x` - An optional parameter, The x-coordinate point of the game's world coordinate to add to.
- `y` - An optional parameter, The y-coordinate point of the game's world coordinate to add to.

### addCameraFollowPoint(?x:Float, ?y:Float)
<ins>Adds a value to the camera position to focus on</ins>, to a new value.

- `x` - The x position value to add to, for the camera to focus on.
- `y` - The y position value to add to, for the camera to focus on.

***

### getCameraScrollX()
Gets the current <ins>x-coordinate point of the game's world coordinates</ins>; Returns `Float`.

### getCameraScrollY()
Gets the current <ins>y-coordinate point of the game's world coordinates</ins>; Returns `Float`.

### getCameraFollowX()
Gets the current <ins>x position camera that it focus to</ins>; Returns `Float`.

### getCameraFollowY()
Gets the current <ins>y position camera that it focus to</ins>; Returns `Float`.

***

# Dialogues/Cutscene Functions
### startDialogue(dialogueFile:String, music:String = null)
Starts the dialogue stuff. When the dialogue is finished, both the `startCountdown()` or `endSong()` functions will be executed depending on where you started the dialogue.

- `dialogueFile` - The dialogue `json` file to load; Must be relative to: `data/song-name` folder.
- `music` - An optional parameter, plays a background music while being in a dialogue without having to use `playMusic()` function; Must be relative to: `mods/music` or `assets/music` folders; Default value: `nil`.

### startVideo(videoFile:String, ?canSkip:Bool = true)
Starts a video.

- `videoFile` - The `mp4` video file to play; Must be relative to `mods/videos` folder.
- `canSkip` - An optional parameter, Whether the video can have the ability to skip or not; Default value: `true`.

### startCountdown()
Starts the countdown immediately, if you want to skip the annoying dialogue or video manually.

***

# Song Functions
### loadSong(?name:String = null, ?difficultyNum:Int = -1)
Loads a new song.

> [!WARNING]
> _The function will failed to execute, if the week's `json` difficulty list is different from one another._

- `name` - An optional parameter, the name of the song to be loaded. If the argument value isn't present, it will load the song itself; basically it resets; Default: `nil`.
- `difficultyNum` - An optional parameter, the difficulty ID number to set when loaded. If the argument value isn't present, it will load the its difficulty ID number; Default: `-1`.

### restartSong(?skipTransition:Bool = false)
Restarts the song.

- `skipTransition` - An optional parameter, Whether a fade transition plays when reseting the song; Default value: `false`.

### exitSong(?skipTransition:Bool = false)
Exits the song to story mode or freeplay; Not to be confised with the `endSong()` function.

- `skipTransition` - An optional parameter, Whether a fade transition plays when exitting the song; Default value: `false`.

### endSong()
Ends the song.

***

# Color Functions
### getPixelColor(obj:String, x:Int, y:Int)
Gets the hexadecimal color value of an object by pixel size. And returns it into a 32-bit decimal interger, if converted into a hexadecimal number it will formated as: `FFFFFFFFAARRGGBB`.

- `obj` - The object tag to get the color.
- `x` - The x position value on the object tag's pixel.
- `y` - The y position value on the object tag's pixel.

### getColorFromName(color:String)
Parses the hexadecimal color within a `string` and returns the corresponding `FlxColor` value. You can use either values to parse: <ins>`0xff0000`, `#ff0000`, or `red` it can be in upper-cases or not</ins>.

- `color` - The hexadecimal color value to parse.

### getColorFromHex(color:String)
Parses the hexadecimal color within a `string` and returns the corresponding `FlxColor` value. The only difference about `getColorFromName()` function that <ins>it doesn't require `#` or `0x` at the start</ins>.

- `color` - The hexadecimal color value to parse.

***

### setHealthBarColors(left:String, right:String)
Sets the <ins>health bar background-colors</ins> with a new color on each sides.

- `left` - The opponent's health bar to set the hexadecimal color.
- `right` - The player's health bar to set the hexadecimal color.

### setTimeBarColors(left:String, right:String)
Sets the <ins>time bar background-colors</ins> with a new color on each sections.

- `left` - The precentage bar to set the hexadecimal color.
- `right` - The background-color to set the hexadecimal color.

***

# Debuging Functions
### debugPrint(text:Dynamic = '', color:String = 'WHITE')
Displays a debug text at the top-left corner of the screen, and disappears in a few seconds.

> [!TIP]
> If you want to display multiple values at the same time, you should use a table containing the values on the `text` argument.

- `text` - The text content to display, usually just values.
- `color` - An optional parameter, The color of the debug text to display. Could be used for error messages or other stuff.

Examples:
```lua
function onCreate()
     local curBF = getProperty('boyfriend.curCharacter')  -- gets the current bf character
     debugPrint("Current boyfriend character: " .. curBF) --> Current boyfriend character: 'bf'
end
```
```lua
function onCreate()
     local curBFX = getProperty('boyfriend.x') -- gets the current bf's x position
     local curBFY = getProperty('boyfriend.y') -- gets the current bf's y position
     debugPrint({curBFX, curBFY})              --> [770, 450]
end
```

### close()
<ins>Immediately stops the script</ins> that is currently being in use. This is only recommended to execute this on stage scripts since they usually aren't being used anymore.

> [!CAUTION] 
> _Do not execute this function anywhere if the said script needs to be constantly updated or has constantly updating stuff for something. For instance, if the script has: `onUpdate()`, `onStepHit()`, `onSpawnNote()` callbacks._ 

# Miscellaneous Functions
### triggerEvent(name:String, arg1:Dynamic, arg2:Dynamic)
Triggers an execution of an event. Basically an alternative way of triggering an event without going to the chart editor.

- `name` - The said name of the event to trigger.
- `arg1` - The first argument value for the event to use, if it even requires one.
- `arg2` - The second argument value for the event to use, if it even requires one.

### getModSetting(saveTag:String, ?modName:String = null)
Gets the mod settings' element from a `json` file current values.

- `saveTag` - The settings' `json` element tag to get the current value.
- `modName` - An optional parameter, The local mod file that it will only get the `json` file; Default: `nil`. 

### changeDiscordPresence(details:String, state:Null\<String\>, ?smallImageKey:String, ?hasStartTimestamp:Bool, ?endTimestamp:Float)
Changes your current [Discord RPC](https://raw.githubusercontent.com/Jxyme/simple-discord-rpc/main/screenshots/8zptsNqx.png) status.

- `details` - The current details on what your doing inside the game.
- `state` - The description of the said detail.
- `smallImageKey` - An optional parameter, The image key to display at the bottom-left corner.
- `hasStartTimestamp` - An optional parameter, Whether your Discord RPC should have a time stamp or not.
- `endTimestamp` - An optional parameter, How many decimal numbers to be shown.

### changeDiscordClientID(?newID:String = null)
Changes your current Discord Client ID.

- `newID` - The new id for the discord client to inherit.

### getSongPosition()
Returns the current song position in milliseconds; Shortcut to: `getPropertyFromClass('backend.Conductor', 'songPosition')`.

Deprecated Original Shortcut: `getPropertyFromClass('Conductor', 'songPosition')`

### updateScoreText()
Updates the scores' text content.