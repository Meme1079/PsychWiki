# Character Functions
### characterPlayAnim(character:String, anim:String, forced:Bool = false)
Play's a specific character animation.

- `character` - The character name, can be `boyfriend`, `dad` or `gf`.
- `anim` - The animation name to be played.
- `forced` - Can be either `true` or `false`, if set to `true`, it will force the animation to reset if the current animation is the same as the animation to play.

### characterDance(character:String)
Make's character do the idle dance.

- `character` - The name of the character, can be `boyfriend`, `dad` or `gf`.

### setCharacterX(type:String, value:Float)
Set's the general X position of a character from the `type`, this will also move all precached characters from the same type into the position you want.

- `type` - The character name, can be `boyfriend`, `dad` or `gf`.
- `value` - The x value of the character position.

### setCharacterY(type:String, value:Float)
Set's the general Y position of a character from the `type`, this will also move all precached characters from the same type into the position you want.

- `type` - The name of the character, can be `boyfriend`, `dad` or `gf`.
- `value` - The y value of the character position.

### getCharacterX(type:String)
Get's the general X position of a character from the `type`.

- `type` - The name of the character name, can be `boyfriend`, `dad` or `gf`.

### getCharacterY(type:String)
Get's the general Y position of a character from the `type`.

- `type` - The name of the character name, can be `boyfriend`, `dad` or `gf`.

***

# Accuracy Bar Functions
### addScore(value:Int = 0)
Add's the `value` of the current song's score total continuously and recalculate's the rating.

### addMisses(value:Int = 0)
Add's the `value` of the current song's miss total continuously and recalculate's the rating.

### addHits(value:Int = 0)
Add's the `value` of the current song's hit continuously and recalculate's the rating.

### addHealth(value:Float = 0)
Add's the `value` of the current song's health continuously and recalculate's the rating.

***

### setScore(value:Int = 0)
Set's the `value` of the current song's score total into a specified state and recalculate's the rating.

### setMisses(value:Int = 0)
Set's the `value` of the current song's miss total into a specified state and recalculate's the rating.

### setHits(value:Int = 0)
Set's the `value` of the current song's hit total into a specified state and recalculate's the rating.

### setHealth(value:Int = 0)
Set's the `value` of the current song's health total into a specified state and recalculate's the rating.

### setRatingPercent(value:Float)
Set's the rating percent in case you want to do your own rating calculation.

- `value` - Should go from `0` to `1` but can actually be whatever value you want, but it's kinda stupid to get out of the base values.

### setRatingString(value:String)
Set's the rating name to `value` in case you want to do your own rating calculation.

### setRatingFC(value:String)
Set's the rating FC on the `scoreTxt`.

***

### getScore()
Get's the current song's score total.

### getMisses()
Get's the current song's miss total.

### getHits()
Get's the current song's hit total.

### getHealth()
Get's the current song's health total.

***

# Lua Object Exists
### luaSpriteExists(tag:String)
Checks whether the sprite object exists in the currently playing song.

- `tag` - The tag of the sprite object.

### luaTextExists(tag:String)
Checks whether the text object exists in the currently playing song.

- `tag` - The tag of the text object.

### luaSoundExists(tag:String)
Checks whether the sound exists in the currently playing song.

- `tag` - The tag of the sound.

***

# File Functions
### isRunning(luaFile:String)
Note: Put the file format name to get the file you want.

- `luaFile` - The file that you want to detect that is running currently.

Example: `isRunning('mods/pathTotheFile/luafile.lua')`

### getRunningScripts()
Check's multiple script's executing currently.  

### getTextFromFile(path:String, ?ignoreModFolders:Bool = false)
Note: Put the file format name to get the file you want.

Get's the text from different file's.

- `path` - The path of the text file that you are getting.
- `ignoreModFolders` - An optional parmeter that ignores the mod folder with a **boolean**.

### directoryFileList(folder:String)
Get's the folder file in the directory.

- `folder` - The path to the folder

Example: `getTextFromFile('pathTotheFile/ExampleFile.txt')`

### saveFile(path:String, content:String, absolute:Bool = false)
Changes the contents of file then saves it.

- `path` - The path of the file that you are getting.
- `content` - The contents of the file to be saved, must surrounded by double brackets `[[]]`.
- `absolute` - An optional parmeter that ignores the mod folder with a **boolean**.

### deleteFile(path:String, ignoreModFolders)
Deletes the the file.

- `path` - The path of the file that you are getting.
- `ignoreModFolders` - An optional parmeter that ignores the mod folder with a **boolean**.

### checkFileExists(filename:String, absolute:Bool = false)
Checks if the file existed, it's like lua exists function but it's global.

- `filename` The path of the file that you are getting.
- `absolute` - An optional parmeter that ignores the mod folder with a **boolean**.

Example: `checkFileExists('mods/pathTotheFile/luafile.lua')`

***

# Scripts Functions
### addLuaScript(path:String)
Add's a lua script into the game.

- `path` - The path of the file that you are getting.

### removeLuaScript(path:String)
Remove's a lua script into the game.

- `path` - The path of the file that you are getting.

### addHaxeLibrary(libName:String, ?libPackage:String = '')
Add's a library variable into the interpreter.

- `libName` - The name of the library name.
- `libPackage` - The name of the library package.

Example: `addHaxeLibrary('FlxTween', 'flixel.tweens')`

### runHaxeCode(codeToRun:String)
Note: the `codeToRun` must be surrounded by double brackets `[[]]`.

It execute's the string as a Haxe script.

Example: `runHaxeCode([[haxe code]])`

### getGlobalFromScript(luaFile:String, global:String)
Gets the global variable from another lua script, this will not work with local variable.

- `luaFile` - The path of the file that you are getting.
- `global` - The variable to be chosen.

### setGlobalFromScript(luaFile:String, global:String, val:Dynamic)
Sets the new value of the global variable from another lua script, this will not work with local variable.

- `luaFile` - The path of the file that you are getting.
- `global` - The variable to be chosen.
- `val` - The new value of the variable.

***

# Strings Functions
Note: `stringSplit()` and `stringTrim()` works in 0.7.0 Version!

### stringStartsWith(str:String, start:String)
Identifie's the string that begins with the `start` parameter.

- `str` - The string to be manipulate.
- `start` - The start of the string.

### stringEndsWith(str:String, end:String)
Identifie's the string that ends with the `end` parameter.

- `str` - The string to be manipulate.
- `end` - The end of the string.

### stringSplit(str:String, split:String)
Splits a string into multiple string will turn it into a **table**

- `str` - The string to split.
- `start` - The seperation of the string.

Example: `stringSplit('Split, This, LOL!', ', ')[1]` This will print 'Split'.  

### stringTrim(str:String)
Remove's any unnecessary large spaces from string.

- `str` - The string to be converted.

***

# Other Functions
### triggerEvent(name:String, arg1:String, arg2:String)
Triggers an event without having to enter it into the chart editor.

- `name` - The name of the event in the Chart editor.
- `arg1` - The value on Value 1.
- `arg2` - The value on Value 2.

### setHealthBarColors(leftHex:String, rightHex:String)
Changes the health color's on the health bar. **(Must be a Hexadecimal Color Code)**

- `leftHex` - The Opponent health bar color.
- `rightHex` - The Player health bar color.

### setTimeBarColors(leftHex:String, rightHex:String)
Changes the time bar color's. **(Must be a Hexadecimal Color Code)**

- `leftHex` - The color thats filling up the time bar.
- `rightHex` - The background of the time bar.

### getColorFromHex(color:String)
Get's the color from an Hexadecimal Color Code.

Example: To get orange, you should use `getColorFromHex('FF7800')` or `getColorFromHex('0xFFFF7800')`.

### getSongPosition()
Return's the current song position. Shortcut to `getPropertyClass('Conductor', 'songPosition')`.

### removeFromGroup(obj:String, index:Int, dontDestroy:Bool = false)
Remove's the a specific note group.

- `obj` - The group name of the note.
- `index` - The note member id.
- `dontDestroy` - An optional variable. Won't clear member from memory, you will probably never ever use this.

Example: To remove the first spawned note from the group you should use `removeFromGroup('notes', 0)`.

***

# Randomizers
### getRandomInt(min:Int, max:Int)
This will randomize a number. _(Better than `math.random()`)_

- `min` - The lowest value.
- `max` - The highest value.

### getRandomFloat(min:Float, max:Float)
Works the same as `getRandomInt()` but only works for **float**.

- `min` - The lowest value.
- `max` - The highest value.

### getRandomBool(chance:Float = 50)
It randomizes the chance of it being `true`.

- `chance` - The possibility of it being `true`.

***

# Camera Functions
### cameraShake(camera:String, intensity:Float, duration:Float)
Makes the camera shake.

- `camera` - Can be either `camGame`, `camHUD` or `camOther`.
- `intensity` - How far away should it shake, recommended value is `0.05`.
- `duration` - How much time duration for it to shake.

### cameraSetTarget(target:String)
Makes the camera focus on a specific target.

- `target` - Target can be either `boyfriend` or `dad`.

### cameraFlash(camera:String, color:String, duration:Float,forced:Bool)
Makes the camera flash.

- `camera` - Can be either `camGame`, `camHUD` or `camOther`.
- `color` - The color of the flash. **(Must be a Hexadecimal Color Code)**
- `duration` - The amount of time it will shake for.
- `forced` - Whether or not restart the flashes.

### cameraFade(camera:String, color:String, duration:Float,forced:Bool)
Makes the camera fade.

- `camera` - Can be either `camGame`, `camHUD` or `camOther`.
- `color` - The color of the fade. **(Must be a Hexadecimal Color Code)**
- `duration` - The amount of time it will fade for.
- `forced` - Whether or not restart the flashes.

***

# Debug Functions
### debugPrint(text1, text2, text3, text4, text5)
This command displays a debug message in the top-left corner of the screen. All of the values are optional, and you can print up to 5 of them.

Example: `debugPrint("Current boyfriend character: ", getProperty('boyfriend.curCharacter')` 

This will print the following message: `Current boyfriend character: bf`.

### close()
Stops your script in the next 100 miliseconds. And must be used in a `Stage script` because it won't be used anymore.