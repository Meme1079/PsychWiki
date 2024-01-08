# Script Functions
### addLuaScript(luaFile:String, ?ignoreAlreadyRunning:Bool = false)
Adds a <ins>Lua script</ins> into the game.

- `luaFile` - The location of the Lua script to add; Starts inside the mod folder directory.
- `ignoreAlreadyRunning` - An optional parameter; will execute while ignoring the Lua script that it's running from; Default value: `false`.

### addHScript(HaxeFile:String, ?ignoreAlreadyRunning:Bool = false)
Adds a <ins>Haxe script</ins> into the game.

- `haxeFile` - The location of the Haxe script to add; Starts inside the mod folder directory.
- `ignoreAlreadyRunning` - An optional parameter; will execute while ignoring the Haxe script that it's running from; Default value: `false`.

### removeLuaScript(luaFile:String, ?ignoreAlreadyRunning:Bool = false)
Removes a Lua script into the game.

- `luaFile` - The location of the Lua script to remove; Starts inside the mod folder directory.
- `ignoreAlreadyRunning` - An optional parameter; will execute while ignoring the Lua script that it's running from; Default value: `false`.

### setGlobalFromScript(luaFile:String, global:String, val:Dynamic)
Sets the current global variable with a new value. This will only work if the <ins>Lua script that is in, is currently executed</ins>; Same works with `getGlobalFromScript()` function.

- `luaFile` - The location for the Lua script to get the given variable.
- `global` - The global variable given name to set.
- `val` - The specified value to set in.

### getGlobalFromScript(luaFile:String, global:String)
Gets the current global variable current value from another Lua script.

- `luaFile` - The location for the Lua script to get the given variable.
- `global` - The global variable given name to get.

### isRunning(luaFile:String)
Checks if the specific Lua script is currently running, returning `true` is it's running.

- `luaFile` - The location for the Lua script to check.

### getRunningScripts()
Returns every currently <ins>running scripts</ins>.

***

# Set & Call On Functions
### setOnLuas(varName:String, arg:Dynamic, ?ignoreSelf:Bool = false, ?exclusions:Array\<String\> = null)
Sets a <ins>Lua variable</ins> into global and inserts it to any currently executing Lua script(s).

- `varName` - The variable's name to be given.
- `arg` - The variable's value to be given.
- `ignoreSelf` - An optional parameter; This will ignore itself within the script that it's in; Defualt value: `false`.
- `exclusions` - An optional parameter; The exclusions of Lua scripts, for the function to not insert in.

Example:

```lua
function onCreatePost()
     setOnLuas('stupidVar1', 'string')
     setOnLuas('stupidVar2', 23, true)

     debugPrint(stupidVar2) -- will print > nil
end
```

```lua
function onCreatePost()
     debugPrint(stupidVar1) -- will print > 'string'
     debugPrint(stupidVar2) -- will print > 23
end
```

### setOnHScript(varName:String, arg:Dynamic, ?ignoreSelf:Bool = false, ?exclusions:Array\<String\> = null)
Sets a <ins>Haxe variable</ins> into global and inserts it to any currently executing Haxe script(s).

- `varName` - The variable's name to be given.
- `arg` - The variable's value to be given.
- `ignoreSelf` - An optional parameter; This will ignore itself within the script that it's in; Default value: `false`.
- `exclusions` - An optional parameter; The exclusions of Haxe scripts, for the function to not insert in.

### setOnScripts(varName:String, arg:Dynamic, ?ignoreSelf:Bool = false, ?exclusions:Array\<String\> = null)
Sets a <ins>Lua/Haxe variable</ins> into global and inserts it to any currently executing Lua/Haxe script(s).

- `varName` - The variable's name to be given.
- `arg` - The variable's value to be given.
- `ignoreSelf` - An optional parameter; This will ignore itself within the script that it's in; Default value: `false`.
- `exclusions` - An optional parameter; The exclusions of Lua/Haxe scripts, for the function to not insert in.

### callOnLuas(funcName:String, ?args:Array\<Dynamic\> = null, ?ignoreStops=false, ?ignoreSelf:Bool = true, ?excludeScripts:Array\<String\> = null, ?excludeValues:Array\<Dynamic\> = null)
Calls a <ins>Lua function</ins> from another currently executing Lua script.

- `funcName` - The function's name to be called.
- `args` - An optional parameter; The arguments of the function to be passed on.
- `ignoreStops` - An optional parameter; Whether it will ignore returns from `Function_StopLua` or `Function_StopAll`; Default value: `false`.
- `ignoreSelf` - An optional parameter; This will ignore itself within the script that it's in; Default value: `true`.
- `excludeScripts` - An optional parameter; The exclusions of Lua scripts, for the function to not insert in.
- `excludeValues` - An optional parameter; The exclusions of the arguments, for the function to not passed on.

Example:

```lua
function round(num, dp) -- i stole this
     local mult = 10^(dp or 0);
     return math.floor(num * mult + 0.5)/mult;
end

function onCreatePost()
     callOnLuas('round', {23.532, 2}, false) -- will print > 23.53
end
```

```lua
function onCreatePost()
     callOnLuas('round', {632.1224, 2}) -- will print > 632.12
     callOnLuas('round', {381.1213, 3}) -- will print > 381.121
end
```

### callOnHScript(funcName:String, ?args:Array\<Dynamic\> = null, ?ignoreStops=false, ?ignoreSelf:Bool = true, ?excludeScripts:Array\<String\> = null, ?excludeValues:Array\<Dynamic\> = null)
Calls a <ins>Haxe function</ins> from another currently executing Haxe script.

- `funcName` - The function's name to be called.
- `args` - An optional parameter; The arguments of the function to be passed on.
- `ignoreStops` - An optional parameter; Whether it will ignore returns from `Function_StopHScript` or `Function_StopAll`; Default value: `false`.
- `ignoreSelf` - An optional parameter; This will ignore itself within the script that it's in; Default value: `true`.
- `excludeScripts` - An optional parameter; The exclusions of Haxe scripts, for the function to not insert in.
- `excludeValues` - An optional parameter; The exclusions of the arguments, for the function to not passed on.

### callOnScripts(funcName:String, ?args:Array\<Dynamic\> = null, ?ignoreStops = false, ?ignoreSelf:Bool = true, ?excludeScripts:Array\<String\> = null, ?excludeValues:Array\<Dynamic\> = null)
Calls a <ins>Lua/Haxe function</ins> from another currently executing Lua/Haxe script.

- `funcName` - The function's name to be called.
- `args` - An optional parameter; The arguments of the function to be passed on.
- `ignoreStops` - An optional parameter; Whether it will ignore returns from `Function_StopLua` or `Function_StopHScript` or `Function_StopAll`; Default value: `false`.
- `ignoreSelf` - An optional parameter; This will ignore itself within the script that it's in; Default value: `true`.
- `excludeScripts` - An optional parameter; The exclusions of Lua/Haxe scripts, for the function to not insert in.
- `excludeValues` - An optional parameter; The exclusions of the arguments, for the function to not passed on.

### callScript(luaFile:String, funcName:String, ?args:Array\<Dynamic\> = null)
Calls a function from a specific Lua script that is currently executing.

- `luaFile` - The location of the Lua script file to get the function; Starts inside the mod folder directory.
- `funcName` - The function's name to be called.
- `args` - An optional parameter; The arguments of the function to be passed on.

***

# File Functions
### directoryFileList(folder:String)
<ins>Returns every folder and files</ins> inside the given folder.

- `folder` - The location of the folder to locate.

### getTextFromFile(path:String, ?ignoreMods:Bool = false)
<ins>Gets the text content</ins> from another file.

- `path` - The location of the file to target; Starts inside the mod folder directory.
- `ignoreMods` - An optional parameter; it will start outside of the mod folder directory if set to `true`; Default value: `false`.

### checkFileExists(filename:String, ?absolute:Bool = false)
Checks if the file exists inside the game assets, returns `true` if it exists.

- `filename` - The filename given to check if it exists or not.
- `absolute` - An optional parameter; it will start outside of the mod folder directory if set to `true`; Default value: `false`.

### saveFile(path:String, content:String, ?absolute:Bool = false)
Creates a file, if it doesn't exist or applies all the changes to the file and update its contents.

- `path` - The location for the file to create or to save; Starts inside the mod folder directory.
- `content` - The new contents of the file to be updated, use multi-line strings for this.
- `absolute` - An optional parameter; it will start outside of the mod folder directory if set to `true`; Default value: `false`.

### deleteFile(path:String, ?ignoreModFolders:Bool = false)
Deletes a file, literally; nothing else to say here.

- `path` - The location for the file to delete; Starts inside the mod folder directory.
- `ignoreModFolders` - An optional parameter; it will start outside of the mod folder directory if set to `true`; Default value: `false`.

***

# Lua Exists Functions
### luaSpriteExists(tag:String)
Checks if the <ins>sprite object exists</ins> inside the game, returns `true` if it exists.

- `tag` - The sprite object tag name to be used.

### luaTextExists(tag:String)
Checks if the <ins>text object exists</ins> inside the game, returns `true` if it exists.

- `tag` - The text object tag name to be used.

### luaSoundExists(tag:String)
Checks if the <ins>sound exists</ins> inside the game, returns `true` if it exists.

- `tag` - The sound tag name to be used.

***

# Saving Data Functions
### initSaveData(name:String, ?folder:String = 'psychenginemods')
<ins>Initializes the creation</ins> of the save data or <ins>loads the saved data</ins> if it exists. You must use this function first before using other saving data functions. Why? it doesn't exists yet, stupid.

- `name` - The save data name to be used.
- `folder` - An optional parameter; The folder to create or load the save file in; Default value: `psychenginemods`.

### setDataFromSave(name:String, field:String, value:Dynamic)
Sets the current save data variable with a new value. If the `field` save data doesn't exist it will <ins>initializes the creation</ins> of a save data variable field.

- `name` - The save data name to be used.
- `field` - The save data variable name to be given.
- `value` - The specified value to set in.

### getDataFromSave(name:String, field:String)
Gets the current save data variable value.

- `name` - The save data name to be used.
- `field` - The save data variable name to get.

### flushSaveData(name:String)
<ins>Applies all the changes</ins> to the saved file and updates it with new values.

- `name` - The save data name to be used.

### eraseSaveData(name:String)
Deletes the saved data.

- `name` - The save data name to be used.

# Achievement Functions
### isAchievementUnlocked(name:String)
Checks if the <ins>achievement is unlocked</ins>, returns `true` if it is.

- `name` - The achievement name to be used.

### unlockAchievement(name:String)
Unlocks the achievement.

- `name` - The achievement name to be used.

### addAchievementScore(name:String, ?value:Dynamic = 1, ?saveIfNotUnlocked:Bool = true)
Sets the current achievement score value. If the score is above the maxScore value from `achievements.json`, the achievement will unlock.

- `name` - The achievement name to be used.
- `value` - An optional parameter; it will add to the achievement score value with the amount specified; Default value: `1`.
- `saveIfNotUnlocked` - An optional parameter; it will save the score isn't at or above the maxScore value; Default value: `true`.

### setAchievementScore(name:String, ?value = 1, ?saveIfNotUnlocked = true)
Set the current achievement score value. If the score is above the maxScore value from `achievements.json`, the achievement will unlock.

- `name` - The achievement name to be used.
- `value` - An optional parameter; it will set the achievement score value to the value specified; Default value: `1`.
- `saveIfNotUnlocked` - An optional parameter; it will save the score isn't at or above the maxScore value; Default value: `true`.

### getAchievementScore(name:String)
Gets the current achievement score value.

- `name` - The achievement name to be used.

### achievementExists(name:String)
Checks if the <ins>achievement exists</ins> inside the game, returns `true` if it exists.

- `name` - The achievement name to be used.

***

# String Tool Functions
### stringStartsWith(str:String, start:String)
Checks if the <ins>string begins</ins> with the specified pattern, returning `true` if detected.

- `str` - The string to be used.
- `start` - The starting pattern for the string to find.

### stringEndsWith(str:String, end:String)
Checks if the <ins>string ends</ins> with the specified pattern, returning `true` if detected.

- `str` - The string to be used.
- `end` - The ending pattern for the string to find.

### stringSplit(str:String, split:String)
Splits the string that is <ins>determined by the pattern</ins> into an array of substrings.

- `str` - The string to be split.
- `split` - The delimeter, the pattern separator for the string to split.

### stringTrim(str:String)
<ins>Removes any whitespace</ins> at the start and end of a string.

- `str` - The string to be trimmed.

***

# Randomization Functions
### getRandomInt(min:Int, max:Int = FlxMath.MAX_VALUE_INT, ?exclude:String = '')
Randomizes and <ins>integer number</ins>, determined by the `min` and `max` parameters.

- `min` - The specified minimum value.
- `max` - The specified maximum value; Default value: `0x7FFFFFFF`.
- `exclude` - An optional parameter; the integer numbers to exclude—each separated by a comma <kbd>,</kbd> character.

### getRandomFloat(min:Float, max:Float = 1, ?exclude:String = '')
Randomizes and <ins>floating-point number</ins>, determined by the `min` and `max` parameters.

- `min` - The specified minimum value.
- `max` - The specified maximum value; Default value: `1`.
- `exclude` - An optional parameter; the folating-point numbers to exclude—each separated by a comma <kbd>,</kbd> character.

### getRandomBool(chance:Float = 50)
<ins>Randomizes the chances</ins> of returning to `true`.

- `chance` - The numbers of chances to return `true`; Default value: `50`; Goes from `0` to `100`.

***

# Playstate Variable Functions
### setVar(varName:String, value:Dynamic)
<ins>Initializes the creation</ins> of a playstate variable, if it doesn't exist or sets the current playstate variable with a new value. This will only work if the <ins>Lua script that is in, is currently executed</ins>; Same works with `getVar()` function.

- `varName` - The playstate variable's name to be given.
- `value` - The specified value to set in.

### getVar(varName:String)
Gets the current playstate variable current value.

- `varName` - The playstate variable's name to get.
