# Character Functions
### characterPlayAnim(character:String, anim:String, forced:Bool = false)
Plays a specific character animation.

- `character` - The character name, can be `boyfriend`, `dad` or `gf`.
- `anim` - The animation name to be played.
- `forced` - Can be either `true` or `false`, if set to `true`, it will force the animation to reset if the current animation is the same as the animation to play.

### characterDance(character:String) 
Makes character do the idle dance.

- `character` - The name of the character, can be `boyfriend`, `dad` or `gf`.

### setCharacterX(type:String, value:Float)
Sets the <ins>general x position of a character</ins> from the `type` parameter, this will also move all precached characters from the same type into the position you want.

- `type` - The character name, can be `boyfriend`, `dad` or `gf`.
- `value` - The x value of the character position.

### setCharacterY(type:String, value:Float)
Sets the <ins>general y position of a character</ins> from the `type` parameter, this will also move all precached characters from the same type into the position you want.

- `type` - The name of the character, can be `boyfriend`, `dad` or `gf`.
- `value` - The y value of the character position.

### getCharacterX(type:String)
Gets the <ins>general x position of a character</ins> from the `type` parameter.

- `type` - The name of the character name, can be `boyfriend`, `dad` or `gf`.

### getCharacterY(type:String)
Gets the <ins>general y position of a character</ins> from the `type` parameter.

- `type` - The name of the character name, can be `boyfriend`, `dad` or `gf`.

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
Sets the `value` parameter of the current <ins>song score total</ins> into a specified state and recalculates the rating.

### setMisses(value:Int = 0)
Sets the `value` parameter of the current <ins>song miss total</ins> into a specified state and recalculates the rating.

### setHits(value:Int = 0)
Sets the `value` parameter of the current <ins>song hit total</ins> into a specified state and recalculates the rating.

### setHealth(value:Int = 0)
Sets the `value` parameter of the current <ins>song health total</ins> into a specified state and recalculates the rating.

***

### setRatingPercent(value:Float)
Sets the rating percent in case you want to do your own rating calculation.

- `value` - Should go from `0` to `1` but can actually be whatever value you want, but it's kinda stupid to get out of the base values.

### setRatingString(value:String)
Sets the rating name to the `value` parameter in case you want to do your own rating calculation.

- `value` - The rating string accuracy.

### setRatingFC(value:String)
Sets the rating combo on the `scoreTxt`.

- `value` - The rating combo accuracy.

***

### getScore()
Gets the current <ins>songs score total</ins>.

### getMisses()
Gets the current <ins>songs miss total</ins>.

### getHits()
Gets the current <ins>songs hit total</ins>.

### getHealth()
Gets the current <ins>songs health total</ins>.

***

# Lua Object Exists
### luaSpriteExists(tag:String)
Checks whether the <ins>sprite object</ins> exists in the currently playing song.

- `tag` - The tag of the sprite object.

### luaTextExists(tag:String)
Checks whether the <ins>text object</ins> exists in the currently playing song.

- `tag` - The tag of the text object.

### luaSoundExists(tag:String)
Checks whether the <ins>sound object</ins> exists in the currently playing song.

- `tag` - The tag of the sound.

***

# String Functions
### stringStartsWith(str:String, start:String)
Checks the <ins>starting section</ins> of the **String** with the `start` parameter.

- `str` - The string to be manipulate.
- `start` - The start of the string.

### stringEndsWith(str:String, end:String)
Checks the <ins>ending section</ins> of the **String** with the `end` parameter.

- `str` - The string to be manipulate.
- `end` - The end of the string.

### stringSplit(str:String, split:String)
This will <ins>split the **String** into multiple values</ins>, just like a **Table** would function.

- `str` - The string to split.
- `start` - The seperation of the string.

Example: `stringSplit('Split, This, LOL!', ', ')[1]` This will print 'Split'.  

### stringTrim(str:String)
Removes any <ins>unnecessary large spaces</ins> from the **String**.

- `str` - The string to be converted.

***

# File Functions
### getTextFromFile(path:String, ?ignoreModFolders:Bool = false)
Gets the text from different files.

- `path` - The path of the text file that you are getting.
- `ignoreModFolders` - An optional parameter that ignores the mod folder with a **Boolean**.

Example: `getTextFromFile('pathTotheFile/ExampleFile.txt')`

### directoryFileList(folder:String)
Gets the every files inside of the folder.

- `folder` - The path to the folder

### saveFile(path:String, content:String, absolute:Bool = false)
Changes the contents of file then <ins>saves it</ins>.

- `path` - The path of the file that you are getting.
- `content` - The contents of the file to be saved, must be surrounded by double brackets `[[]]`.
- `absolute` - An optional parameter that ignores the mod folder with a **Boolean**.

### deleteFile(path:String, ignoreModFolders)
Deletes the file you want.

- `path` - The path of the file that you are getting.
- `ignoreModFolders` - An optional parameter that ignores the mod folder with a **Boolean**.

### checkFileExists(filename:String, absolute:Bool = false)
Checks if the file existed, its like lua exists function but its global.

- `filename` The path of the file that you are getting.
- `absolute` - An optional parameter that ignores the mod folder with a **Boolean**.

Example: `checkFileExists('mods/pathTotheFile/luafile.lua')`

***

# Scripts Functions
### isRunning(luaFile:String)
> **Note**: _Put the file format name to get the file you want._

- `luaFile` - The file that you want to detect that is running currently.

Example: `isRunning('mods/pathTotheFile/luafile.lua')`

### getRunningScripts()
Checks multiple scripts executing currently; <ins>use generic loop to use this</ins>.

### addLuaScript(path:String)
<ins>Adds a lua script</ins> into the game.

- `path` - The path of the file that you are getting.

### removeLuaScript(path:String)
<ins>Removes a lua script</ins> into the game.

- `path` - The path of the file that you are getting.

### addHaxeLibrary(libName:String, ?libPackage:String = '')
Adds a library variable into the interpreter.

- `libName` - The name of the library name.
- `libPackage` - The name of the library package.

Example: `addHaxeLibrary('FlxTween', 'flixel.tweens')`

### runHaxeCode(codeToRun:String)
It executes the string as a haxe script.

- `codeToRun` - the haxe code to be executed, use double brackets `[[]]` when making the haxe code.

### openCustomSubstate(name:String, pauseGame:Bool = false)
Will <ins>open</ins> your custom substate. If you want to know how to open the custom substate of yours. Click on this [hyperlink](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Callback-Templates#custom-substate-functions) for more information.

- `name` - The name of the custom substate.
- `pauseGame` - An optional value, will pause your game when opening the custom substate.

### closeCustomSubstate(name:String)
Will <ins>close</ins> your custom substate.

- `name` - The name of the custom substate.

***

> **Warning**: _This is section of the Script Functions has 2 problems. **[1]** The `setGlobalFromScript()` and `getGlobalFromScript()` are broken i don't know why. **[2]** The `callOnLuas()` and `callScript()` have no information on the use of the function and maybe parameters i dunno. And if you asked why put both functions on here even though i don't know what there use it. Shut up it, it's documentation duh._

### setGlobalFromScript(luaFile:String, global:String, val:Dynamic)
<ins>Sets the global variable with a new value</ins> from another lua script; this will not work with <ins>local variable</ins>.

- `luaFile` - The path of the file that you are getting.
- `global` - The variable to be chosen.
- `val` - The new value of the variable.

### getGlobalFromScript(luaFile:String, global:String)
<ins>Gets the current value of a global variable</ins> from another lua script; this will not work with <ins>local variables</ins>.

- `luaFile` - The path of the file that you are getting.
- `global` - The variable to be chosen.

### callOnLuas(?funcName:String, ?args:Array<Dynamic>, ignoreStops=false, ignoreSelf=true, ?exclusions:Array<String>)
_Description of this function is still being research currently._

- `funcName` - The name of the lua function to be used.
- `args` - The parameters on the lua function with a **Table** inside.
- `ignoreStops` - An optional parameter, whether or not will it ignore the stop.
- `ignoreSelf` - An optional parameter, whether or not will it ignore its self.
- `exclusions` - An optional parameter, the exclusions of the parameters of the lua function with a **Table** inside.

### callScript(?luaFile:String, ?funcName:String, ?args:Array<Dynamic>)
_Description of this function is still being research currently._

- `luaFile` - The path of the file that you are getting.
- `funcName` - The name of the lua function to be used.
- `args` - The parameters on the lua function with a **Table** inside.

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
It randomizes the chance of it being `true`.

- `chance` - The possibility of it being `true`.

***

# Camera Functions
### cameraShake(camera:String, intensity:Float, duration:Float)
Makes the <ins>camera shake</ins>.

- `camera` - The current camera state, can be either `camGame`, `camHUD` or `camOther`.
- `intensity` - How much intesity will the camera shake, recommended value is `0.05`.
- `duration` - How long will the shake last.

### cameraSetTarget(target:String)
Makes the <ins>camera focus</ins> on the target.

- `target` - The character type to target, can be either `boyfriend` or `dad`.

### cameraFlash(camera:String, color:String, duration:Float, forced:Bool)
Makes the <ins>camera flash</ins>.

- `camera` - The current camera state, can be either `camGame`, `camHUD` or `camOther`.
- `color` - The color of the flash. **(Must be a Hexadecimal Color Code)**
- `duration` - How long will the camera flash.
- `forced` - Whether or not restart the flash.

### cameraFade(camera:String, color:String, duration:Float, forced:Bool)
Makes the <ins>camera fade</ins>.

- `camera` - The current camera state, can be either `camGame`, `camHUD` or `camOther`.
- `color` - The color of the fade. **(Must be a Hexadecimal Color Code)**
- `duration` - How long will the camera fade.
- `forced` - Whether or not restart the fade.

***

# Other Functions
### triggerEvent(name:String, arg1:String, arg2:String)
Triggers an event without having to enter it into the chart editor.

- `name` - The name of the event in the Chart editor.
- `arg1` - The value on the Value 1.
- `arg2` - The value on the Value 2.

### setHealthBarColors(leftHex:String, rightHex:String)
Changes the health bar colors. **(Must be a Hexadecimal Color Code)**

- `leftHex` - The opponent health bar color.
- `rightHex` - The player health bar color.

### setTimeBarColors(leftHex:String, rightHex:String)
Changes the time bar colors. **(Must be a Hexadecimal Color Code)**

- `leftHex` - The color of the time bar.
- `rightHex` - The background color of the time bar.

### getColorFromHex(color:String)
Gets the color from the Hexadecimal Color Code.

Example: To get orange, you should use `getColorFromHex('FF7800')` or `getColorFromHex('0xFFFF7800')`.

### getSongPosition()
Returns the current song position, Shortcut to `getPropertyClass('Conductor', 'songPosition')`.

### removeFromGroup(obj:String, index:Int, dontDestroy:Bool = false)
Removes a specific <ins>note group</ins>.

- `obj` - The strum group name on the note.
- `index` - The member ID of the note to be tween, Opponent: `0,1,2,3` and Player: `4,5,6,7`.
- `dontDestroy` - An optional variable. Won't clear the member from memory, you will probably never ever use this.

Example: To remove the first spawned note from the group you should use `removeFromGroup('notes', 0)`.

***

# Debug Functions
### debugPrint(text1, text2, text3, text4, text5)
This command displays a debug message in the <ins>top-left corner of the screen</ins>. All of the values are optional, and you can print up to 5 of them. You can use this function for checking the current value of the object or variable.

Example: `debugPrint("Current boyfriend character: ", getProperty('boyfriend.curCharacter')` 

This will print the following message: `Current boyfriend character: bf`.

### close()
Stops your script in the <ins>next 100 miliseconds</ins>. And must be used in a `Stage script` because it won't be used anymore.