# Script Functions
### addLuaScript(path:String, ?ignoreAlreadyRunning:Bool = false)
Adds a Lua script into the game.

- `path` - The location of the Lua script file to be added.
- `ignoreAlreadyRunning` - An optional parameter, It will execute while ignoring the Lua script that it's running from.

### removeLuaScript(path:String)
Removes a Lua script into the game, if not used anymore.

- `path` - The location of the Lua script file to be removed.

### isRunning(luaFile:String)
Checks if the Lua script is <ins>currently running</ins>; Returns a `boolean`.

- `luaFile` - The location of the Lua script file to be used.

### getRunningScripts()
Checks if <ins>multiple Lua scripts</ins> are current running; Returns a `table`.

***

> **Warning**: _These functions are weirdly buggy, it somehow works and other times it doesn't?????._

### setGlobalFromScript(luaFile:String, global:String, val:Dynamic)
Calls a global variable from another Lua script and <ins>sets the current value with a new one</ins>.

- `luaFile` - The location of Lua script to be referenced.
- `global` - The global variable from the Lua script to get.
- `val` - The new value to be set for the variable.

### getGlobalFromScript(luaFile:String, global:String)
Calls a global variable from another script and <ins>gets the current value</ins>.

- `luaFile` - The location of Lua script to be referenced.
- `global` - The global variable from the Lua script to get.

***

# Module Scripts
> **NOTE**: _If your calling a variables from any of these functions, it must be inside the `onCreatePost()` callback function; This rule applies to all Module Script functions._

> **NOTE**: _If your using these functions from a HScript or SScript, the function should start with `game.` for it to work properly; Example: `game.setOnScripts('func', [arg1, arg2]);`._

### setOnScripts(varName:String, arg:Dynamic, ?ignoreSelf:Bool = false, ?exclusions:Array\<String\> = null)
Sets a variable and globally exports it to other currently executing Lua & Haxe scripts.

- `varName` - The variable name to be referenced.
- `arg` - The specified value for variable to use.
- `ignoreSelf` - An optional parameter, This will ignore itself within the script that it's in; Defualt value: `false`.
- `exclusions` - _(Still researching)_

Example:
```lua
setOnScripts('myVar1', 'Hello String!')
setOnScripts('myVar2', {33, 112, 43, -12})
setOnScripts('myVar3', true)
```
```lua
function onCreatePost()
     debugPrint(myVar1)    -- will print > 'Hello String!'
     debugPrint(myVar2[4]) -- will print > -12
     debugPrint(myVar3)    -- will print > true
end
```

### setOnLuas(varName:String, arg:Dynamic, ?ignoreSelf:Bool = false, ?exclusions:Array\<String\> = null)
Sets a variable and globally exports it to other currently executing Lua scripts.

- `varName` - The variable name to be referenced.
- `arg` - The specified value for variable to use.
- `ignoreSelf` - An optional parameter, This will ignore itself within the script that it's in; Defualt value: `false`.
- `exclusions` - _(Still researching)_

### setOnHScript(varName:String, arg:Dynamic, ?ignoreSelf:Bool = false, ?exclusions:Array\<String\> = null)
Sets a variable and globally exports it to other currently executing Haxe scripts.

- `varName` - The variable name to be referenced.
- `arg` - The specified value for variable to use.
- `ignoreSelf` - An optional parameter, This will ignore itself within the script that it's in; Defualt value: `false`.
- `exclusions` - _(Still researching)_

### callOnScripts(funcName:String, ?args:Array\<Dynamic\> = null, ?ignoreStops = false, ?ignoreSelf:Bool = true, ?excludeScripts:Array\<String\> = null, ?excludeValues:Array\<Dynamic\> = null)
Calls a function from another Lua & Haxe scripts that is currently executing.

- `funcName` - The function from the Lua & Haxe script to use.
- `args` - An optional parameter if there is no arguments, The argument(s) for the function to get.
- `ignoreStops` - _(Still researching)_
- `ignoreSelf` - An optional parameter, This will ignore itself within the script that it's in; Defualt value: `false`.
- `excludeScripts` - An optional parameter, Excludes scripts for the function to not use.
- `excludeValues` - _(Still researching)_

Example:
```lua
function median(min, max)
     return (min + max) / 2
end
```
```haxe
function onCreatePost() {
     var getMedian = game.callOnScripts('median', [12, 43]);
     debugPrint(getMedian); // will print > 27.5
}
```

### callOnLuas(funcName:String, ?args:Array\<Dynamic\> = null, ?ignoreStops=false, ?ignoreSelf:Bool = true, ?excludeScripts:Array\<String\> = null, ?excludeValues:Array\<Dynamic\> = null)
Calls a function from another Lua script that is currently executing.

- `funcName` - The function from the Lua script to use.
- `args` - An optional parameter if there is no arguments, The argument(s) for the function to get.
- `ignoreStops` - _(Still researching)_
- `ignoreSelf` - An optional parameter, This will ignore itself within the script that it's in; Defualt value: `false`.
- `excludeScripts` - An optional parameter, Excludes scripts for the function to not use.
- `excludeValues` - _(Still researching)_

### callOnHScript(funcName:String, ?args:Array\<Dynamic\> = null, ?ignoreStops=false, ?ignoreSelf:Bool = true, ?excludeScripts:Array\<String\> = null, ?excludeValues:Array\<Dynamic\> = null)
Calls a function from another Haxe script that is currently executing.

- `funcName` - The function from the Haxe script to use.
- `args` - An optional parameter if there is no arguments, The argument(s) for the function to get.
- `ignoreStops` - _(Still researching)_
- `ignoreSelf` - An optional parameter, This will ignore itself within the script that it's in; Defualt value: `false`.
- `excludeScripts` - An optional parameter, Excludes scripts for the function to not use.
- `excludeValues` - _(Still researching)_

### callScript(luaFile:String, funcName:String, ?args:Array\<Dynamic\> = null)
Calls a function from a specific Lua script that is currently executing.

- `luaFile` - The location of the Lua script file to get the function. 
- `funcName` - The function from the Lua & Haxe script to use.
- `args` - An optional parameter if there is no arguments, The argument(s) for the function to get.

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

# String Tool Functions
### stringStartsWith(str:String, start:String)
Checks the <ins>specific starting section</ins> of the string; Returns a `boolean`.

- `str` - The string to be used.
- `start` - The starting section to be called.

<details><summary><b>Lua Equivalent:</b></summary>
<p>

```lua
function string.startsWith(str, pattern)
     return str:match('^'..pattern) and true or false
end
```

</p>
</details>

### stringEndsWith(str:String, end:String)
Checks the <ins>specific ending section</ins> of the string; Returns a `boolean`.

- `str` - The string to be used.
- `end` - The ending section to be called.

<details><summary><b>Lua Equivalent:</b></summary>
<p>

```lua
function string.endWith(str, pattern)
     return str:match(pattern..'$') and true or false
end
```

</p>
</details>

### stringSplit(str:String, split:String)
Splits the string into <ins>multiple strings</ins>; Returns a `table`.

- `str` - The string to be split.
- `split` - The pattern of the string to split.

<details><summary><b>Lua Equivalent:</b></summary>
<p>

```lua
function string.split(str, sep)
     local words = {}
     for w in string.gmatch(str, "([^"..sep.."]+)") do
          table.insert(words, w)
     end
     return words
end
```

</p>
</details>

Example: `stringSplit('A, B, C, D', ', ')[1]`, it will return `A`.

### stringTrim(str:String)
Removes any <ins>whitspace characters from the string</ins>. Or you could just use `('string'):gsub('%s*', '')` which functions the same. So this function is confirmed useless, so don't even bother using it lmao.

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

***

# Global Variable Functions
### setVar(varName:String, value:Dynamic)
Sets the current global variable with a new value. Or initializes the creation of a global variable if there is no global variable. This allows to access variable from other scripts, but only if the script is currently executed.

- `varName` - The variable to be referenced.
- `value` - The specified type of value for the variable to use or to over-write.

### getVar(varName:String)
Gets the current global variable current value.

- `varName` - The variable to be referenced.