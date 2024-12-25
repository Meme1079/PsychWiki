# Scripting Functions
## Adding
### addLuaScript(addScript:String, ?ignoreAlreadyRunning:Bool = false):Void
Adds a specified Lua script into the game.

- `addScript` - The specified file path directory of the Lua script to add.
- `ignoreAlreadyRunning` - An optional parameter, whether it will add the Lua script despite the said Lua script still being runned within the game; Default value: `false`.

Examples:
> Adds the given Lua script from the global `scripts` folder with its own path directory.
```lua
function onCreatePost()
     addLuaScript('scripts/other/main.lua')
end
```
> Adds the given Lua script while said Lua script is still running in game. Literally I don't know what use case for this.
```lua
function onCreatePost()
     addLuaScript('scripts/main.lua', true)
end
```

### addHScript(addScript:String, ?ignoreAlreadyRunning:Bool = false):Void
Adds a specified HScript into the game.

- `addScript` - The specified file path directory of the HScript to add.
- `ignoreAlreadyRunning` - An optional parameter, whether it will add the HScript despite the said HScript still being runned within the game; Default value: `false`.

Examples:
> Adds the given HScript from the global `scripts` folder with its own path directory.
```lua
function onCreatePost()
     addHScript('scripts/other/main.hx')
end
```
> Adds the given HScript while said HScript is still running in game. Literally I don't know what use case for this.
```lua
function onCreatePost()
     addHScript('scripts/main.hx', true)
end
```

## Removing
> [!CAUTION]
> _Do not remove a script from itself that is current running at the moment. If you actually did this it will immediately softlocks the game completely. I'd recommend to try removing a script from another script to prevent this from happening._

### removeLuaScript(removeScript:String):Bool
Removes the specified Lua script from the game, stops being runned completely. If entirely remove within the game, returns `true`.

- `removeScript` - The specified file path directory of the Lua script to remove from the game.

Example:
> Removes the given Lua script, self explanatory.
```lua
function onCreatePost()
     removeLuaScript('scripts/other/main.lua')
end
```

### removeHScript(removeScript:String):Bool
Removes the specified HScript from the game, stops being runned completely. If entirely remove within the game, returns `true`.

- `removeScript` - The specified file path directory of the HScript to remove from the game.

Example:
> Removes the given HScript, self explanatory.
```lua
function onCreatePost()
     removeHScript('scripts/other/main.hx')
end
```

## Running Scripts
### isRunning(script:String):Bool
Checks if the given script either in Lua script or HScript is currently running within the game or not.

- `script` - The specified file path directory of the script to check its current status.

Example:
> Checks the scripts given current status within the game.
```lua
debugPrint( isRunning('scripts/awesome1.hx')  ) --> true
debugPrint( isRunning('scripts/awesome2.lua') ) --> true
```

### getRunningScripts():Array\<String\>
Checks the currently active Lua script only within the game and returns them in a table array.

Example:
> Using a generic loop to get each currently active Lua script within the game. And subsequently removing unrelated Lua scripts that aren't in that mod folder.
```lua
for index, scripts in pairs(getRunningScripts()) do
     if isRunning(scripts) == true and modFolder ~= 'MY_MOD' then
          removeLuaScript(scripts)
     end
end
```

***

# File Functions
### directoryFileList(folder:String):Array\<String\>
Returns the given directory file its contents be it files and/or folder.

- `folder` - The specified file path directory of a folder to get its contents from.

Example:
> By using a generic loop again, it will return each files or folder within the given directory folder.
```lua
local thisDirectory = directoryFileList('mods/'..modFolder)
for index, files in pairs(thisDirectory) do
     debugPrint(files) --> 'data', 'scripts', 'stages', 'pack.json', 'pack.png'
end
```

### getTextFromFile(fileName:String, ?ignoreModFolders:Bool = false):String
Returns the given text content from a given file.

- `fileName` - The specified file path directory of a file to get its text content from.
- `ignoreModFolders` - An optional parameter, whether the default directory will be in the `shared` folder directory within the game's `assets` folder. Or be in the default `mods` folder directory; Default value: `false`.

Example:
> Gets and load the given text content from the given file in this example. If the second argument is enabled will go through the `assets/shared` folder directory.
```lua
debugPrint( getTextFromFile('readme.txt') ) --> You can either edit files or add entirely new ones here.
```
```lua
debugPrint( getTextFromFile('readme.txt', true) ) --> to enable the secrets, type "river", "shadow" or "bb" on the title screen!
```

### checkFileExists(fileName:String, ?ignoreModFolders:Bool = false):Boolean
Checks whether the file actually currently exists or not. Extremely useful in some scenarios to prevent visual bugs or preventing softlocks in some cases.

- `fileName` - The specified file path directory of a file to check its current existence.
- `ignoreModFolders` - An optional parameter, whether the default directory will be in the `shared` folder directory within the game's `assets` folder. Or be in the default `mods` folder directory; Default value: `false`.

Example:
> Checks if the `knuckles.json` file currently exists within the global `data` folder directory. If it doesn't exists it will immediately closes the game.
```lua
if checkFileExists('data/knuckles.json') == false then
     os.exit() -- closes the game, literally
end
```

### saveFile(path:String, content:String, ?ignoreModFolders:Bool = false):Void
Saves the applied changes to a file and updates its current contents. If the said file doesn't exists it will be created and be apply it contents within the file.

- `path` - The specified file path directory for the file to save its applied changes or be created, if said file exists.
- `content` - The given content to applied its changes or to inherit when created.
- `ignoreModFolders` - An optional parameter, whether the default directory will be in the `shared` folder directory within the game's `assets` folder. Or be in the default `mods` folder directory; Default value: `false`.

Example:
> Creates a new text file with it inherit contents within the `mods` folder directory.
```lua
saveFile('message.txt', 'How many shrimps can you square root to?')
```

### deleteFile(path:String, ?ignoreModFolders:Bool = false):Void
Deletes the given file, that's it.

- `path` - The specified file path directory for the file to be delete completely.
- `ignoreModFolders` - An optional parameter, whether the default directory will be in the `shared` folder directory within the game's `assets` folder. Or be in the default `mods` folder directory; Default value: `false`.

Example:
> Deletes the newly created text file from before.
```lua
deleteFile('message.txt')
```

***

# Global-On Functions
## Setters
### setOnScripts(varName:String, value:Dynamic, ?ignoreSelf:Bool = false, ?exclusions:Array\<String\> = null):Void
Sets a saved global variable to currently running scripts either in Lua script or HScript. Either it sets the saved variable with a new value or initializes the creation of a variable with the inherent value. If the said saved variable currently doesn't exists.

- `varName` - The saved global variable to set a new value to or unique name to inherit.
- `value` - The new value to be set to or inherit from.
- `ignoreSelf` - An optional parameter, whether to ignore implementing itself within the script that's in; Default value: `false`.
- `exclusions` - An optional parameter, exclusion of scripts to ignore the implementation of the saved variable; Default value: `false`.

Examples:
> Creates a saved variable containing an awesome message. With its utilizations within the script itself and other scripts from Lua script and HScript. It just prints this awesome message to other scripts.
```lua
function onCreatePost()
     local christmasContent = 'I can feel the christmas spirit coming inside of me!'
     setOnScripts('christmasMessage', christmasContent)

     debugPrint(christmasMessage)  --> I can feel the christmas spirit coming inside of me!
end
```
```lua
function onCreatePost()
     debugPrint(christmasMessage)  --> I can feel the christmas spirit coming inside of me!
end
```
```haxe
function onCreatePost() {
     debugPrint(christmasMessage); //> I can feel the christmas spirit coming inside of me!
}
```
> Creates a saved variable containing the euler's number. But disables the implementation of the saved variable within the script. You can probably used this, if there is a similar variable name within the script itself.
```lua
function onCreatePost()
     setOnScripts('eulerNumber', 2.7182818284590452, true)
     debugPrint(eulerNumber)  --> nil
end
```
```lua
function onCreatePost()
     debugPrint(eulerNumber)  --> 2.7182818284590452
end
```
```haxe
function onCreatePost() {
     debugPrint(eulerNumber); //> 2.7182818284590452
}
```
> Creates a save variable containing a function, yes this is possible. But disables the implementation of the saved variable within the excluded scripts given. You can probably used this, for something idk man.
```lua
function onCreatePost()
     setOnScripts('calcMid', function(a,b) 
          return (a + b) / 2 
     end, {'scripts/other_lua.lua', 'scripts/other_haxe.hx'})

     debugPrint(calcMid(4, 5)) --> 4.5
end
```
```lua
function onCreatePost()
     debugPrint(calcMid(4, 5))  --> nil
end
```
```haxe
function onCreatePost() {
     debugPrint(calcMid(4, 5)); //> nil
}
```

### setOnLuas(varName:String, value:Dynamic, ?ignoreSelf:Bool = false, ?exclusions:Array\<String\> = null):Void
Sets a saved global variable to currently running Lua scripts only. Either it sets the saved variable with a new value or initializes the creation of a variable with the inherent value. If the said saved variable currently doesn't exists.

- `varName` - The saved global variable to set a new value to or unique name to inherit.
- `value` - The new value to be set to or inherit from.
- `ignoreSelf` - An optional parameter, whether to ignore implementing itself within the script that's in; Default value: `false`.
- `exclusions` - An optional parameter, exclusion of scripts to ignore the implementation of the saved variable; Default value: `false`.

### setOnHScript(varName:String, value:Dynamic, ?ignoreSelf:Bool = false, ?exclusions:Array\<String\> = null):Void
Sets a saved global variable to currently running HScripts only. Either it sets the saved variable with a new value or initializes the creation of a variable with the inherit value. If the said saved variable currently doesn't exists.

- `varName` - The saved global variable to set a new value to or unique name to inherit.
- `value` - The new value to be set to or inherit from.
- `ignoreSelf` - An optional parameter, whether to ignore implementing itself within the script that's in; Default value: `false`.
- `exclusions` - An optional parameter, exclusion of scripts to ignore the implementation of the saved variable; Default value: `false`.

## Callers
### callScript(luaFile:String, funcName:String, ?args:Array\<Dynamic\> = null):Any
Calls a given global function from a specified Lua script.

- `luaFile` - The specified file path directory of the Lua script to utilize.
- `funcName` - The said given function within the Lua script to call from.
- `args` - An optional parameter, the certain amount of arguments to passed within the function, if said arguments exists.

Example:
<blockquote>
Calls a global function within a Lua script from the given path directory. The function uses the formula of the circumference of an ellipse, yes this is an actual formula that exists.<br><br>

<details><summary><b>See the constructed formula:</b></summary>
<p>

$f(a,b)=\pi(a+b)\cdot\left(3\cdot\frac{(a-b)^2}{(a+b)^2\cdot\left(\sqrt{-3\cdot\frac{(a-b)^2}{(a+b)^2}+4}+10\right)}+1\right)$

</p>
</details>
</blockquote>

```lua
function circumferenceEllipse(aAxis, bAxis)
     local addAxis = (aAxis + bAxis)
     local subAxis = (aAxis - bAxis)
     
     local dividend_inner = math.sqrt(-3 * (subAxis^2 / addAxis^2) + 4) + 10
     local dividend_outer = addAxis^2 * dividend_inner
     local divisor  = subAxis^2 / dividend_outer
     local quotient = (3 * divisor) + 1

     return (math.pi * addAxis) * quotient
end
```
```lua
local circum = callScript('scripts/math/ellipse.lua', 'circumferenceEllipse', {101.13, 229.71})
debugPrint( math.ceil(circum) ) --> 1079
```

### callOnScripts(funcName:String, ?args:Array\<Dynamic\> = null, ?ignoreStops = false, ?ignoreSelf:Bool = true, ?excludeScripts:Array\<String\> = null, ?excludeValues:Array\<Dynamic\> = null):Any
Calls a given global function from currently running scripts either in Lua script or HScript.

- `funcName` - The said given function within different scripts to call from.
- `args` - An optional parameter, the certain amount of arguments to passed within the function, if said arguments exists.
- `ignoreStops` - An optional parameter, whether to ignore returns from disabling event callback variables; Default value: `false`.
- `ignoreSelf` - An optional parameter, whether to ignore the calling itself within the script that's in; Default value: `false`.
- `excludeScripts` - An optional parameter, exclusion of scripts to ignore the calling of a given function.
- `excludeValues` - An optional parameter, the specified exclusions of multiple returned values from the function.

Examples:
> Calls a function from another Lua script that utilizes the formula of area of an ellipse.
```lua
function areaEllipse(aAxis, bAxis)
     return math.pi * aAxis * bAxis
end
```
```lua
function onCreatePost()
     debugPrint( callOnScripts('areaEllipse', {3, 4}) )  --> 37.69
end
```
```haxe
function onCreatePost() {
     debugPrint( callOnScripts('areaEllipse', {3, 4}) ); //> 37.69
}
```

### callOnLuas(funcName:String, ?args:Array\<Dynamic\> = null, ?ignoreStops = false, ?ignoreSelf:Bool = true, ?excludeScripts:Array\<String\> = null, ?excludeValues:Array\<Dynamic\> = null):Any
Calls a given global function from currently running Lua scripts only.

- `funcName` - The said given function within Lua scripts to call from.
- `args` - An optional parameter, the certain amount of arguments to passed within the function, if said arguments exists.
- `ignoreStops` - An optional parameter, whether to ignore returns from disabling event callback variables; Default value: `false`.
- `ignoreSelf` - An optional parameter, whether to ignore the calling itself within the script that's in; Default value: `false`.
- `excludeScripts` - An optional parameter, exclusion of scripts to ignore the calling of a given function.
- `excludeValues` - An optional parameter, the specified exclusions of multiple returned values from the function.

### callOnHScript(funcName:String, ?args:Array\<Dynamic\> = null, ?ignoreStops = false, ?ignoreSelf:Bool = true, ?excludeScripts:Array\<String\> = null, ?excludeValues:Array\<Dynamic\> = null):Any
Calls a given global function from currently running HScripts only.

- `funcName` - The said given function within HScripts to call from.
- `args` - An optional parameter, the certain amount of arguments to passed within the function, if said arguments exists.
- `ignoreStops` - An optional parameter, whether to ignore returns from disabling event callback variables; Default value: `false`.
- `ignoreSelf` - An optional parameter, whether to ignore the calling itself within the script that's in; Default value: `false`.
- `excludeScripts` - An optional parameter, exclusion of scripts to ignore the calling of a given function.
- `excludeValues` - An optional parameter, the specified exclusions of multiple returned values from the function.

***

# Debugging Functions
### debugPrint(text:Dynamic = '', color:String = 'WHITE'):Void
Displays the passed value at the top-left corner of the screen, usually disappearing in a few seconds.

> [!TIP]
> _If you want to display multiple values at once, use a table array containing each values._

- `text` - The said passed value to be display.
- `color` - An optional parameter, the hexadecimal color for the text to rendered; Default value: `WHITE`.

### close():Void
Immediately disables the script that is currently being in use. This is only recommended to execute this on stage scripts since they usually aren't being used anymore.

> [!CAUTION]
> _Do not execute this function within the said script that is needed to be constantly updated. Or has a constantly updating stuff for something, for instances: if the script has updating event callbacks: `onUpdate()`, `onStepHit()`, `onSpawnNote()`, etc._

***

# Save Data Functions
### initSaveData(name:String, ?folder:String = 'psychenginemods'):Void
Inititates the creation of the save game data or loads the saved game data, if it even exists. This initiation must be first used before utilizing any save data functions. 

Once the save game data has been initialize it will be saved in a application data folder. This folder depends on what operating system of Psych Engine you're currently playing on. With an additional folder within the application data folder for organization purposes.

<details><summary><b>Operating System Application Data Path:</b></summary>
<p>

| Operating Systems 	| Path 	|
|---	|---	|
| Windows 	| `%appdata%/ShadowMario/PsychEngine/` 	|
| Mac 	| `USER_NAME/Application Data/ShadowMario/PsychEngine/` 	|

</p>
</details>

- `name` - The unique name of the said save game data to inherit.
- `folder` - An optional parameter, The sub-folder within the application data folder; Default value: `'psychenginemods'`.

### setDataFromSave(name:String, field:String, value:Dynamic):Void
Sets the data field with a new value from the save game data or be created with inherited field value. If the said data field currently doesn't exist yet.

- `name` - The specified save game data name to set the data field's value or to inheirt.
- `field` - The specified data field to set a new value to.
- `value` - The new value to set it to.

### getDataFromSave(name:String, field:String, ?defaultValue:Dynamic = null):Any
Gets the data field current value from the save game data.

- `name` - The specified save game data name to get the data field's value.
- `field` - The specified data field to get its current value from.
- `defaultValue` - An optional parameter, the field data's default value, if the inherited value doesn't exist.

### flushSaveData(name:String):Void
Saves the applied changes from the save game data, updates its content with new values.

- `name` - The specified save game data to save its applied changes.

### eraseSaveData(name:String):Void
Erases the specified save game data, removes the sub-folder within the application data folder.

- `name` - The specified save game data to erase completely.

***

# String Tool Functions
### stringStartsWith(str:String, start:String):Bool
Checks whether the string either begins with the specified characters, returning only `true` if detected.

- `str` - The string content to check its starting characters.
- `start` - The starting characters to check within the string.

Example:
> Checks whether the string content starts with the word 'Haxeflixel'.
```lua
local awesomeString = 'Haxeflixel Stuff sound good'
debugPrint( stringStartsWith(awesomeString, 'Haxeflixel') ) --> true
debugPrint( stringStartsWith(awesomeString, 'Lua') )        --> false
```

### stringEndsWith(str:String, end:String):Bool
Checks whether the string either ends with the specified characters, returning only `true` if detected.

- `str` - The string content to check its ending characters.
- `end` - The ending characters to check within the string.

Example:
> Checks whether the string content ends with the word 'Sigma'. _(istg)_
```lua
local awesomeString = 'I feel so Sigma'
debugPrint( stringEndsWith(awesomeString, 'Sigma') ) --> true
debugPrint( stringEndsWith(awesomeString, 'Zeta') )  --> false
```

### stringSplit(str:String, sep:String):Array\<String\>
Splits the specified string by taking a repeating pattern within a string. And returning the split substrings into the table array.

- `str` - The string content to split into multiple substrings.
- `sep` - The repeating pattern to split the string content.

Example:
> Splits the string content by splitting in each repetition of the semicolon character <kbd>;</kbd>.
```lua
local awesomeString = '642;298;1283;2891;23'
for k,v in pairs(stringSplit(awesomeString, ';')) do
     debugPrint(v) --> 642, 298, 1283, 2891, 23
end
```

### stringTrim(str:String):String
Trims a string, basically removing any whitespace characters within the string.

- `str` - The string content to trims its whitespace characters.

Example:
```lua
local awesomeString = '  Gr aa h I hate S pa  ce s'
debugPrint(stringTrim(awesomeString)) --> GraahIHateSpaces
```

***

# Randomization Functions
### getRandomInt(min:Int, max:Int = FlxMath.MAX_VALUE_INT, ?exclude:String = ''):Int
Randomizes the given amount range of integer numbers.

- `min` - The minimum integer number value to start from.
- `max` - An optional parameter, the maximum integer number value to end from; Default value: `0x7FFFFFFF` or `2147483647`.
- `exclude` - An optional parameter, the integer numbers to exclude—each separated by a comma character <kbd>,</kbd>.

Examples:
> Randomizes an integer number value between $0$ to $10$.
```lua
debugPrint( getRandomInt(0, 10) )
```
> Same as the example above but excludes specific integer numbers.
```lua
debugPrint( getRandomInt(0, 10, '2, 3, 9') )
```

### getRandomFloat(min:Float, max:Float = 1, ?exclude:String = ''):Float
Randomizes the given amount range of floating-point numbers.

- `min` - The minimum floating-point number value to start from.
- `max` - An optional parameter, the maximum floating-point number value to end from; Default value: `1`.
- `exclude` - An optional parameter, the floating-point numbers to exclude—each separated by a comma character <kbd>,</kbd>.

Examples:
> Randomizes a floating-point number values between $0$ to $1$.
```lua
debugPrint( getRandomFloat(0, 1) )
```
> Same as the example above but excludes specific floating-point numbers.
```lua
debugPrint( getRandomFloat(0, 1, '0.1, 0.4, 0.5') )
```

### getRandomBool(chance:Float = 50):Bool
Randomizes the chances of returning `true`.

- `chance` - An optional parameter, the chances of returning `true`; Goes from `0` to `100`; Default value: `true`.

Example:
> Randomizes the chances of returning `true` by $50\%$.
```lua
debugPrint( getRandomBool() )
```

***

# PlayState Variable Functions
### setVar(storeVar:String, value:Dynamic):Any
Sets a stored global variable to allow different scripts either from Lua scripts or HScripts to be utilized with it. Either it sets the stored variable with a new value or initializes the creation of a variable with the inherent value. If the said saved variable currently doesn't exists.

The said stored variable will be stored within the game, mainly from the `MusicBeatState` class by utilizing a safe cast. Allowing every scripts either in Lua or Haxe to utilize the stored variable.

- `storeVar` - The stored global variable to set a new value to or unique name to inherit.
- `value` - The new value to be set to or inherit from.

Examples:
> Creates a stored variable, that will allow different scripts to utilize with it.
```lua
setVar('awesomeFormula', 100 / 34)
```

### getVar(storeVar:String):Any
Gets the stored variable's current value.

- `storeVar` - The stored global variable to get its current value from.

Examples:
> Gets the stored variable from the previous example.
```lua
debugPrint( getVar('awesomeFormula') ) --> 2.941176471
```
```haxe
debugPrint( getVar('awesomeFormula') ); //> 2.941176471
```
> The function can also be used for built-in HScripts within a Lua script.
```lua
runHaxeCode([=[
     debugPrint( getVar('awesomeFormula') ); //> 2.941176471
]=])
```

***

# See Also
- [Deprecated & Removed Functions](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Deprecated-&-Removed-Functions)