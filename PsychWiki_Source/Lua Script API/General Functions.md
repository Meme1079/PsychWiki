# Character Functions
### characterDance(character:String) 
Makes character do the idle dance.

- `character` - The name of the character to be used, can be `boyfriend`, `dad` or `gf`.

### setCharacterX(type:String, value:Float)
Sets the current <ins>x position value</ins> of a character to a new value. This will also move all precached characters from the same type into the position you want.

- `type` - The character name to be used, can be `boyfriend`, `dad` or `gf`.
- `value` - The new x value of the character position.

### setCharacterY(type:String, value:Float)
Sets the current <ins>y position value</ins> of a character to a new value. This will also move all precached characters from the same type into the position you want.

- `type` - The character name to be used, can be `boyfriend`, `dad` or `gf`.
- `value` - The new y value of the character position.

### getCharacterX(type:String)
Gets the current <ins>x position value</ins> of a character.

- `type` - The character name to be used, can be `boyfriend`, `dad` or `gf`.

### getCharacterY(type:String)
Gets the current <ins>y position value</ins> of a character.

- `type` - The character name to be used, can be `boyfriend`, `dad` or `gf`.

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
Gets the current <ins>songs score total</ins> current value.

### getMisses()
Gets the current <ins>songs miss total</ins> current value.

### getHits()
Gets the current <ins>songs hit total</ins> current value.

### getHealth()
Gets the current <ins>songs health total</ins> current value.

***

# Lua Object Exists
### luaSpriteExists(tag:String)
Checks if the current <ins>lua sprite object</ins> exists in the currently playing song.

- `tag` - The tag of the lua sprite object.

### luaTextExists(tag:String)
Checks if the current <ins>lua text object</ins> exists in the currently playing song.

- `tag` - The tag of the lua text object.

### luaSoundExists(tag:String)
Checks if the current <ins>lua sound object</ins> exists in the currently playing song.

- `tag` - The tag of the lua sound object.

***

# String Functions
### stringStartsWith(str:String, start:String)
Checks the <ins>starting section</ins> of the **String** variable.

- `str` - The string variable to be used.
- `start` - The starting section.

### stringEndsWith(str:String, end:String)
Checks the <ins>ending section</ins> of the **String** variable.

- `str` - The string variable to be used.
- `end` - The ending section.

### stringSplit(str:String, split:String)
> **Note**: _After splitting a **String** it will act like a **Table**; example shown below for reference._

Will split the **String** variable into multiple **Strings**.

- `str` - The string to be split.
- `start` - The separation of the string.

Example: `stringSplit('Split, This, LOL!', ', ')[1]` This will print 'Split'.  

### stringTrim(str:String)
Will remove any unnecessary large spaces from the **String** variable.

- `str` - The string to be trimmed.

***

# Randomizers
### getRandomInt(min:Int, max:Int)
This will randomize a <ins>**Int** number</ins>. _(Better than `math.random()` ngl)_

- `min` - The lowest value.
- `max` - The highest value.

### getRandomFloat(min:Float, max:Float)
This will randomize a <ins>**Float** number</ins>.

- `min` - The lowest value.
- `max` - The highest value.

### getRandomBool(chance:Float = 50)
This will randomize the chance of it being `true`.

- `chance` - The possibility of it being `true`.

***

# File Functions
### getTextFromFile(path:String)
Gets the text contents inside of the `txt` file.

- `path` - The path file to the `txt` file.

### directoryFileList(folder:String)
Gets the file folders inside of a folder

- `folder` - The path to the file folder.

### checkFileExists(filename:String, ?absolute:Bool = false)
Checks if the file existed or not.

- `filename` - The path of the file to be checked if it exists.
- `absolute` - An optional parameter, It will be ignore by the mod folder directory, causing it to be outside the mod folder.

### saveFile(path:String, content:String, ?absolute:Bool = false)
Changes the current file contents and then saves it.

- `path` - The path of the file to be changed.
- `content` - The file contents to be changed or modified, use double brackets `[[]]`.
- `absolute` - An optional parameter, It will be ignore by the mod folder directory, causing it to be outside the mod folder.

### deleteFile(path:String)
Deletes the current file.

- `path` - The path of the file to be deleted.

### isRunning(luaFile:String)
Checks if any lua file are currently running in game.

- `luaFile` - The path of the lua file to be used.

Example: `isRunning('mods/pathTotheFile/luafile.lua')`

### getRunningScripts()
Checks if any multiple lua file are currently running in game.

***

# Scripts Functions
### addLuaScript(path:String, ?ignoreAlreadyRunning:Bool = false)
<ins>Adds a lua script</ins> in the game.

- `path` - The path of the lua file that you are getting.
- `ignoreAlreadyRunning` - An optional parameter, It will run again while ignoring the lua file that is currently running.

### removeLuaScript(path:String)
<ins>Removes a lua script</ins> in the game.

- `path` - The path of the lua file that you are getting.

### addHaxeLibrary(libName:String, ?libPackage:String = '')
Adds a haxe library variable into the interpreter.

- `libName` - The haxe library to be used.
- `libPackage` - An optional parameter, the haxe library package to be used.

Example: `addHaxeLibrary('FlxTween', 'flixel.tweens')`

### runHaxeCode(codeToRun:String)
Runs haxe script inside of the lua file.

- `codeToRun` - The code to be run, use double brackets `[[]]`.

### openCustomSubstate(name:String, pauseGame:Bool = false)
<ins>Opens</ins> your custom substate. 

- `name` - The name of the custom substate to be used.
- `pauseGame` - An optional parameter, will pause your game after the custom substate has been opened.

### closeCustomSubstate()
<ins>Closes</ins> any custom substate.

***

> **Warning**: _This section of the wiki has broken functions meaning they wont work as intended._

### setGlobalFromScript(luaFile:String, global:String, val:Dynamic)
<ins>Sets the current **Global** variable</ins> with a new value from another lua script. If you're getting a **Local** variable <ins>it will not work as you intened</ins>.

- `luaFile` - The path of the lua file that you are getting.
- `global` - The variable to be set.
- `val` - The new value to be set.

### getGlobalFromScript(luaFile:String, global:String)
<ins>Gets the current **Global** variable</ins> current value from another lua script. If you're getting a **Local** variable <ins>it will not work as you intened</ins>.

- `luaFile` - The path of the lua file that you are getting.
- `global` - The variable to be used.

***

# Camera Functions
### cameraSetTarget(target:String)
Makes the <ins>camera focus</ins> on the target.

- `target` - The character type to target, can be either `boyfriend` or `dad`.

### cameraShake(camera:String, intensity:Float, duration:Float)
Makes the <ins>camera shake</ins>.

- `camera` - The camera state to be set in, Can be either `camGame`, `camHUD` or `camOther`.
- `intensity` - How much intesity will the camera shake, recommended value is `0.05`.
- `duration` - How long will the camera shake last.

### cameraFlash(camera:String, color:String, duration:Float, forced:Bool)
Makes the <ins>camera flash</ins>.

- `camera` - The camera state to be set in, Can be either `camGame`, `camHUD` or `camOther`.
- `color` - The hexadecimal color of the flash.
- `duration` - How long will the camera flash last.
- `forced` - If set to `true`, then the flash will be reset.

### cameraFade(camera:String, color:String, duration:Float, forced:Bool)
Makes the <ins>camera fade</ins>.

- `camera` - The camera state to be set in, Can be either `camGame`, `camHUD` or `camOther`.
- `color` - The hexadecimal color of the fade.
- `duration` - How long will the camera fade last.
- `forced` - If set to `true`, then the fade will be reset.

***

# Debuging Functions
### debugPrint(text1, text2, text3, text4, text5)
This will display a debug message in the top-left corner of the screen. <ins>All of the parameters are optional</ins> execept `text1` parameter. The purpose of the function is to <ins>check the current value of the object or variable</ins>.

Example: `debugPrint("Current boyfriend character: ", getProperty('boyfriend.curCharacter')` This will get the current bf character with the `getProperty()` function and will print `Current boyfriend character: 'bf'`.

### close()
> **Warning**: _You must use this inside of a `Stage script`, since it will not be used anywhere._

Stops your script in the next 100 milliseconds.

***

# Other Functions
### triggerEvent(name:String, arg1:String, arg2:String)
Triggers an event without having to insert the event into the chart editor.

- `name` - The name of the event in the Chart editor.
- `arg1` - The value on Value 1.
- `arg2` - The value on Value 2.

### setHealthBarColors(leftHex:String, rightHex:String)
Changes the <ins>health bar</ins> colors.

- `leftHex` - The opponent hexadecimal color of the health bar.
- `rightHex` - The player hexadecimal color of the health bar.

### setTimeBarColors(leftHex:String, rightHex:String)
Changes the <ins>time bar</ins> colors.

- `leftHex` - The hexadecimal color of the time bar.
- `rightHex` - The background hexadecimal color of the time bar.

### getColorFromHex(color:String)
Gets the specific color from the Hexadecimal color. Expecially when setting/getting a specific color, really useful to be honest.

- `color` - The hexadecimal color to be used.

Example: If you want to get the color orange use `getColorFromHex('FF7800')` or `getColorFromHex('0xFFFF7800')`.

### getSongPosition()
Returns the current song position, Shortcut to `getPropertyClass('Conductor', 'songPosition')`.