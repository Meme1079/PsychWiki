# Script Functions
### addLuaScript(path:String, ?ignoreAlreadyRunning:Bool = false)
Adds a Lua script into the game.

- `path` - The location of the Lua script file to be added.
- `ignoreAlreadyRunning` - An optional parameter, It will execute while ignoring the Lua script that it's running from.

### removeLuaScript(path:String)
Removes a Lua script into the game, can be used for <ins>improving performances</ins> for crappy computers.

- `path` - The location of the Lua script file to be removed.

### setGlobalFromScript(luaFile:String, global:String, val:Dynamic)
Sets the current <ins>global variable from another Lua script</ins> with a new value.

- `luaFile` - The location of the Lua script file to be used.
- `global` -  The variable inside the Lua script to get.
- `val` - The new value to be set.

### getGlobalFromScript(luaFile:String, global:String)
Gets the current <ins>global variable from another Lua script</ins> current value; Returns a `variable` value.

- `luaFile` - The location of the Lua script file to be used.
- `global` -  The variable inside the Lua script to get.

### isRunning(luaFile:String)
Checks if the Lua script is <ins>currently running</ins>; Returns a `boolean`.

- `luaFile` - The location of the Lua script file to be used.

### getRunningScripts()
Checks if <ins>multiple Lua scripts</ins> are current running; Returns a `table`.

***

> **Warning**: _These functions are broken at the moment, so uuuhhhhh don't use it._

### callScript(?luaFile:String, ?funcName:String, ?args:Array\<Dynamic\>)
Calls a global function from other Lua script.

> **Note**: _All parameters are optional to use for some reason._

- `luaFile` - The location of the Lua script file to be used.
- `funcName` - The function name to be used.
- `args` - The value(s) passed on the function parameter(s).

### callOnLuas(?funcName:String, ?args:Array\<Dynamic\>, ignoreStops=false, ignoreSelf=true, ?exclusions:Array\<String\>)
Calls a global function from every Lua scripts.

> **Note**: _All parameters are optional to use for some reason._

- `funcName` - The function name to be used.
- `args` - The value(s) passed on the function parameter(s).
- `ignoreStops` - _(Researching)_
- `ignoreSelf` - _(Researching)_
- `exclusions` - Exclusion of Lua script(s) to prevent the function from calling them. _(Possible)_

***

# File Functions
### getTextFromFile(path:String, ?ignoreMods:Bool = false)
Gets the text content from a `txt` file.

- `path` - The location of the `txt` file to be used
- `ignoreMods` - An optional parameter, It will be ignore by the mod folder directory, causing it to be outside the mod folder.

### directoryFileList(folder:String)
Gets the contents of the folder; Returns a `table`.

- `folder` - The location of the folder to be used; Starts outside the `mod` folder by defualt.

### saveFile(path:String, content:String, ?absolute:Bool = false)
Changes the specific <ins>file contents and saves it</ins>.

- `path` - The location of the file to be change
- `content` - The file contents to be changed or modified, use double brackets `[[]]`.
- `absolute` - An optional parameter, It will be ignore by the mod folder directory, causing it to be outside the mod folder.

### deleteFile(path:String)
Deletes the specific file literally.

- `path` - The location of the file to be deleted.

### checkFileExists(filename:String, ?absolute:Bool = false)
Checks if the file exist or not.

- `filename` - The location of the Lua script file to be used.
- `absolute` - An optional parameter, It will be ignore by the mod folder directory, causing it to be outside the mod folder.

***

# Lua Exists Functions
### luaSpriteExists(tag:String)
Checks if the <ins>sprite object exist</ins> inside the stage or script; Returns a `boolean`.

- `tag` - The sprite object tag name to be used.

### luaTextExists(tag:String)
Checks if the <ins>text object exist</ins> inside the stage or script; Returns a `boolean`.

- `tag` - The text object tag name to be used.

### luaSoundExists(tag:String)
Checks if the <ins>sound object exist</ins> inside the stage or script; Returns a `boolean`.

- `tag` - The sound object tag name to be used.

***

# Saving Data Functions
### initSaveData(name:String, ?folder:String = 'psychenginemods')
Initializes/Creates the <ins>save data making it able to be called anywhere</ins>. This function is <ins>recommended to be place above the save data functions</ins> for obvious reasons.

- `name` - The name of the save data to be used.
- `folder` - An optional parameter, The folder to be loaded or be created.

### flushSaveData(name:String)
Deletes the save data, if <ins>not used anymore</ins>; Returns a `nil` value.

- `name` - The name of the save data to be used.

### setDataFromSave(name:String, field:String, value:Dynamic)
Sets the current <ins>data field with a new value</ins>. Or creates a <ins>data field with a specify value</ins> of the data field.

- `name` - The name of the save data to be used.
- `field` - The name of the data field to be used.
- `value` - The new value to be set or the specific value to be used, Like an `Array`, `String`, `Number`, etc.

### getDataFromSave(name:String, field:String)
Gets the current <ins>data field current value</ins>; Returns the data field value.

- `name` - The name of the save data to be used.
- `field` - The name of the data field to be used.

*** 

# Psych String Functions
### stringStartsWith(str:String, start:String)
Checks the <ins>specific starting section</ins> of the string; Returns a `boolean`.

- `str` - The string to be used.
- `start` - The starting section to be called.

### stringEndsWith(str:String, end:String)
Checks the <ins>specific ending section</ins> of the string; Returns a `boolean`.

- `str` - The string to be used.
- `end` - The ending section to be called.

### stringSplit(str:String, split:String)
Splits the string into <ins>multiple strings</ins>; Returns a `table`.

- `str` - The string to be split.
- `split` - The pattern of the string to split.

Example: `stringSplit('A, B, C, D', ', ')[1]`, it will return `A`.

### stringTrim(str:String)
Removes any <ins>whitspace characters from the string</ins>. Or you could just use `('string'):gsub('%s+', '')` which functions the same. So this function is confirmed useless, so don't even bother using it lmao.

- `str` - The string to be trimmed.

***

# Randomization Functions
### getRandomInt(min:Int, max:Int = FlxMath.MAX_VALUE_INT, exclude:String = '')
Randomizes the <ins>Int number</ins> from min to max values.

- `min` - The minimum value.
- `max` - The maximum value.
- `exclude` - An optional parameter, The interger numbers to exclude when randomizing; Example: `1, 2, 4`.

### getRandomFloat(min:Float, max:Float = 1, exclude:String = '')
Randomizes the <ins>Float number</ins> from min to max values.

- `min` - The minimum value.
- `max` - The maximum value: Defualt value: `1`.
- `exclude` - An optional parameter, The floating-point numbers to exclude when randomizing; Example: `0.1, 2.5, 6.9`.

### getRandomBool(chance:Float = 50)
Randomizes the chances of <ins>returning a `true` value</ins>.

- `chance` - The percent of it being `true`; Goes from `0` to `100`; Default value: `50`.