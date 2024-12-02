# Scripting Functions
## Adding
### addLuaScript(addScript:String, ?ignoreAlreadyRunning:Bool = false):Void
Adds a lua script into the game.

- `addScript` - The specified lua script to add in the game.
- `ignoreAlreadyRunning` - An optional parameter, whether it will ignore an already running lua script when adding it in the game or not; Default value: `false`.

Examples:
> Adds a Lua script in the current mod folder directory.
```lua
function onCreatePost()
     addLuaScript(modFolder..'/scripts/sigma/fart.lua')
end
```
> Adds a Lua script from the global `scripts` folder while ignoring that it's already running.
```lua
function onCreatePost()
     addLuaScript('scripts/new_shart.lua', true)
end
```

### addHScript(addScript:String, ?ignoreAlreadyRunning:Bool = false):Void
Adds a haxe script into the game.

- `addScript` - The specified haxe script to add in the game.
- `ignoreAlreadyRunning` - An optional parameter, whether it will ignore an already running haxe script when adding it in the game or not; Default value: `false`.

Examples:
> Adds a Haxe script in the current mod folder directory.
```lua
function onCreatePost()
     addHaxeScript(modFolder..'/scripts/sigma/fart.hx')
end
```
> Adds a Haxe script from the global `scripts` folder while ignoring that it's already running.
```lua
function onCreatePost()
     addHaxeScript('scripts/new_shart.hx', true)
end
```

## Removing
> [!CAUTION]
> _Do not remove a script from itself that is current running at the moment. If you actually did this it will immediately softlocks the game completely. I'd recommend to try removing a script from another script to prevent this from happening._

### removeLuaScript(removeScript:String):Bool
Removes a lua script from the game. It also returns `true`, if removed completely.

- `removeScript` - The specified lua script to remove from the game completely.

Examples:
> Removes a Lua script from the current mod folder directory.
```lua
function onCreatePost()
     removeLuaScript(modFolder..'/scripts/fart.lua')
end
```
> Removes a Lua script from the global `scripts` folder.
```lua
function onCreatePost()
     removeLuaScript('scripts/new_shart.lua')
end
```

### removeHScript(removeScript:String):Bool
Removes a haxe script from the game. It also returns `true`, if removed completely.

- `removeScript` - The specified haxe script to remove from the game completely.

Examples:
> Removes a Haxe script from the current mod folder directory.
```lua
function onCreatePost()
     removeHScript(modFolder..'/scripts/fart.hx')
end
```
> Removes a Haxe script from the global `scripts` folder.
```lua
function onCreatePost()
     removeHScript('scripts/new_shart.hx')
end
```

## Running Scripts
### isRunning(script:String):Bool
Checks whether the specified script either Lua or HScript, is currently running in game or not.

- `script` - The specified script to check its status.

Examples:
> Checks if both the Haxe script from current mod folder directory and Lua script from the global `scripts` folder. Are currently running in the game at the moment.
```lua
if isRunning(modFolder..'/scripts/awesome.hx') == true then
     debugPrint('HScript: Script Active!', 'ff0000') --> HScript: Script Active!
end
if isRunning('scripts/other1.lua') == true then
     debugPrint('Lua: Script Active!', 'ff0000')     --> Lua: Script Active!
end
```
> Checks a Haxe script from the path directory is currently running or not. Since it obviously isn't running it won't print anything.
```lua
if isRunning('scripts/haxe/other.hx') == true then
     debugPrint('HScript: Script Active!', 'ff0000')
end
```

### getRunningScripts():Array\<String\>
Returns multiple running Lua scripts currently in the game.

Examples:
> By using a generic loop it will print out the currently running Lua scripts only. _(idk why they coudn't include haxe tho)_
```lua
for index, scripts in pairs(getRunningScripts()) do
     debugPrint(scripts) --> 'scripts/other1.lua', 'scripts/other2.lua', 'MY_MODS/scripts/awesome.lua', 'MY_MODS/stages/awesome_stage.lua'
end
```

***

# File Functions
### directoryFileList(folder:String):Array\<String\>
Returns every file and/or folder inside the given directory folder.

- `folder` - The given folder to get its contents from.

Example:
> By using a generic loop again, it will return each files or folder within the given directory folder.
```lua
local thisDirectory = directoryFileList('mods/'..modFolder)
for index, files in pairs(thisDirectory) do
     debugPrint(files) --> 'data', 'scripts', 'stages', 'pack.json', 'pack.png'
end
```

### getTextFromFile(fileName:String, ?ignoreModFolders:Bool = false):String
Returns the contents from the given file.

- `fileName` - The given file to get its text content from.
- `ignoreModFolders` - An optional parameter, whether it will start outside the mod directory or not; Default value: `false`.

Example:
> Gets and returns the text content from the given Lua file.
```lua
debugPrint( getTextFromFile(modFolder..'scripts/sigma.lua') ) --> debugPrint('something something something')
```

### checkFileExists(fileName:String, ?ignoreModFolders:Bool = false):Boolean
Checks whether the file currently exists or not.

- `fileName` - The given file to check its current existence.
- `ignoreModFolders` - An optional parameter, whether it will start outside the mod directory or not; Default value: `false`.

Example:
> Checks if the image file actually exists or not.
```lua
if checkFileExists(modFolder..'images/marioTheMario.png') == true then
     makeLuaSprite('theReal_Mario', 'marioTheMario', 0, 0)
     setObjectCamera('theReal_Mario', 'camHUD')
     addLuaSprite('theReal_Mario')
end
```

### saveFile(path:String, content:String, ?ignoreModFolders:Bool = false):Void
Saves the applied changes to a file and updates its current contents. If the said file doesn't exists it will be created and be apply it contents within the file.

- `path` - The given directory path for the file to save its applied changes or be created.
- `content` - The given content to be applied to.
- `ignoreModFolders` - An optional parameter, whether it will start outside the mod directory or not; Default value: `false`.

Example:
> Creates a new text file inside the `mods` folder.
```lua
saveFile('message.txt', 'How many shrimps can you sqaure root to?')
```

### deleteFile(path:String, ?ignoreModFolders:Bool = false):Void
Deletes the given file, that's it.

- `path` - The given directory path for the file to be deleted from.
- `ignoreModFolders` - An optional parameter, whether it will start outside the mod directory or not; Default value: `false`.

Example:
> Deletes the newly created text file from before.
```lua
deleteFile('message.txt')
```

***

# Global-On Functions
## Setters
### setOnScripts(varName:String, arg:Dynamic, ?ignoreSelf:Bool = false, ?exclusions:Array\<String\> = null):Void
Sets a saved global variable to all currently running multiple scripts either from Lua or HScript. Either it will overwrite the current value to its new value. Or be created, if said saved global variable doesn't exists.

- `varName` - The saved variable name to be inherit to all scripts.
- `arg` - The said value to inherit or the new value to set to.
- `ignoreSelf` - An optional parameter, Whether it will ignore the save within the script itself; Default value: `false`.
- `exclusions` - An optional parameter, The specified exclusions of scripts to not save at.

Examples:
> Creates a global variable `enabledStuff` with the inherited value, getting a value from the said setting JSON file. And printing the current value from the script itself and from another script.
```lua
local enable_stuff = getModSettings('enable_stuff')
setOnScripts('enabledStuff', enable_stuff)

debugPrint(enabledStuff) --> true
```
```lua
function onCreatePost()
     debugPrint(enabledStuff)  --> true
end
```
```haxe
function onCreatePost() {
     debugPrint(enabledStuff); //> true
}
```
> Basically the same as in the previous example. However, the stored global variable can't be used within the script that was coded in. You can probably used this if you're not calling this variable within the script itself or idk.
```lua
local enable_stuff = getModSettings('enable_stuff')
setOnScripts('enabledStuff', enable_stuff)

debugPrint(enabledStuff) --> nil
```
```lua
debugPrint(enabledStuff) --> true
```
> Basically the same as in the previous previous example. But it includes a excluded script to prevent the stored global variable to be used there. You can probably used this if there's a same variable name from another script or something idk.
```lua
local enable_stuff = getModSettings('enable_stuff')
setOnScripts('enabledStuff', enable_stuff, false, {'scripts/haxe_stuff.hx'})

debugPrint(enabledStuff)  --> true
```
```haxe
debugPrint(enabledStuff); //> null
```

### setOnLuas(varName:String, arg:Dynamic, ?ignoreSelf:Bool = false, ?exclusions:Array\<String\> = null):Void
Sets a saved global variable to only to all currently running multiple Lua scripts. Either it will overwrite the current value to its new value. Or be created, if said saved global variable doesn't exists.

- `varName` - The saved variable name to be inherit to all Lua scripts.
- `arg` - The said value to inherit or the new value to set to.
- `ignoreSelf` - An optional parameter, Whether it will ignore the save within the script itself; Default value: `false`.
- `exclusions` - An optional parameter, The specified exclusions of scripts to not save at.

### setOnHScript(varName:String, arg:Dynamic, ?ignoreSelf:Bool = false, ?exclusions:Array\<String\> = null):Void
Sets a saved global variable to only to all currently running multiple HScripts. Either it will overwrite the current value to its new value. Or be created, if said saved global variable doesn't exists.

- `varName` - The saved variable name to be inherit to all HScripts.
- `arg` - The said value to inherit or the new value to set to.
- `ignoreSelf` - An optional parameter, Whether it will ignore the save within the script itself; Default value: `false`.
- `exclusions` - An optional parameter, The specified exclusions of scripts to not save at.

## Callers
### callScript(luaFile:String, funcName:String, ?args:Array\<Dynamic\> = null):Any
Calls a given function from another specified Lua script.

- `luaFile` - The specified Lua script to call the given function. 
- `funcName` - The given function from the Lua script to call from.
- `args` - An optional parameter, The amount arguments to be passed on that function, if it even exists.

Example:
> Calls a function from another Lua script from the given path directory. It calls the formula of the [circumference of an ellipse](https://www.google.com/search?sca_esv=334922e174cf79f6&sxsrf=ADLYWIKWVQMCcTNeSxVJ9K7ZZUCOnAXl4g:1732976965224&q=circumference+of+a+ellipse&source=lnms&fbs=AEQNm0Aa4sjWe7Rqy32pFwRj0UkWd8nbOJfsBGGB5IQQO6L3J603JUkR9Y5suk8yuy50qOa0K08TrPholP8ECM8ELoq5GeRrUvU44UjKtPgUX-2DV1UQVKIioKq9YP8hjr2s4XGUs7BYUWgrA1zGzjnSuLz0Rv9SOxJBYa2HuYoyuz0gUJ8I_0DE-GtDv_SDOIZzgEUF8lIMmGKJCeFzaPcqEnsoKlWNMQ&sa=X&ved=2ahUKEwjM6KmjooSKAxV7z6ACHeBJEZUQ0pQJegQIDBAB&biw=1440&bih=754&dpr=2), yes this is an actual formula.
```lua
function circumferenceEllipse(aAxis, bAxis)
     local addAxis = (aAxis + bAxis)
     local subAxis = (aAxis - bAxis)
     
     local dividend_inner = math.sqrt(-3 * (subAxis^2 / addAxis^2) + 4) + 10
     local dividend_outer = addAxis^2 * dividend_inner
     local divisor  = subAxis^2 / dividend_outer
     local quiotent = (3 * divisor) + 1
       
     return (math.pi * addAxis) * quiotent
end
```
```lua
local circum = callScript('scripts/math/ellipse.lua', 'circumferenceEllipse', {101.13, 229.71})
debugPrint( math.ceil(circum) ) --> 1079
```

### callOnScripts(funcName:String, ?args:Array\<Dynamic\> = null, ?ignoreStops = false, ?ignoreSelf:Bool = true, ?excludeScripts:Array\<String\> = null, ?excludeValues:Array\<Dynamic\> = null):Any
Calls a global function from another script either from Lua or Haxe.

- `funcName` - The given function from either scripts to call from.
- `args` - An optional parameter, The amount arguments to be passed on that function, if it even exists.
- `ignoreStops` - An optional parameter, Whether to ignore returns from similar `Function_Stop` variables; Default value: `false`.
- `ignoreSelf` - An optional parameter, Whether it will ignore the calling the function within the script itself; Default value: `false`.
- `excludeScripts` - An optional parameter, The specified exclusions of scripts to not call at.
- `excludeValues` - An optional parameter, The specified exclusions of multiple returned values from the function.

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
Calls a global function from another Lua script.

- `funcName` - The given function from a Lua script to call from.
- `args` - An optional parameter, The amount arguments to be passed on that function, if it even exists.
- `ignoreStops` - An optional parameter, Whether to ignore returns from similar `Function_Stop` variables; Default value: `false`.
- `ignoreSelf` - An optional parameter, Whether it will ignore the calling the function within the script itself; Default value: `false`.
- `excludeScripts` - An optional parameter, The specified exclusions of scripts to not call at.
- `excludeValues` - An optional parameter, The specified exclusions of multiple returned values from the function.

### callOnHScript(funcName:String, ?args:Array\<Dynamic\> = null, ?ignoreStops = false, ?ignoreSelf:Bool = true, ?excludeScripts:Array\<String\> = null, ?excludeValues:Array\<Dynamic\> = null):Any
Calls a global function from another HScript.

- `funcName` - The given function from a HScript to call from.
- `args` - An optional parameter, The amount arguments to be passed on that function, if it even exists.
- `ignoreStops` - An optional parameter, Whether to ignore returns from similar `Function_Stop` variables; Default value: `false`.
- `ignoreSelf` - An optional parameter, Whether it will ignore the calling the function within the script itself; Default value: `false`.
- `excludeScripts` - An optional parameter, The specified exclusions of scripts to not call at.
- `excludeValues` - An optional parameter, The specified exclusions of multiple returned values from the function.

***

# Debugging Functions
### debugPrint(text:Dynamic = '', color:String = 'WHITE'):Void
Displays the passed value at the top-left corner of the screen, usually disappearing in a few seconds.

> [!TIP]
> _If you want to display mutiple values at once, use a table array containing each values._

- `text` - The said passed value to be display.
- `color` - An optional parameter, the hexadecimal color for the text to rendered; Default value: `WHITE`.

### close():Void
Immediately disables the script that is currently being in use. This is only recommended to execute this on stage scripts since they usually aren't being used anymore.

> [!CAUTION]
> _Do not execute this function within the said script that is needed to be constantly updated. Or has a constantly updating stuff for something, for instances: if the script has updating event callbacks: `onUpdate()`, `onStepHit()`, `onSpawnNote()`, etc._

***

# Save Data Functions
### initSaveData(name:String, ?folder:String = 'psychenginemods'):Void
Intitiates the creation of the save game data or loads the saved game data, if it even exists. This intiation must be first used before utilizing any save data functions. 

Once the save gama data has been initialize it will be saved in a application data folder. This folder depends on what operating system of Psych Engine you're currently playing on. With an additional folder within the application data folder for organization purposes.

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
Saves the applied changes from the save game data, updates it's content with new values.

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
> Splits the string content by splitting in each repition of the semicolon character <kbd>;</kbd>.
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
Sets a new variable with a new value or being created with the inherited value. Both functionality will store the variable within the game mainly from the `MusicBeatState` class by utilizing a safe cast. Allowing every scripts either in Lua or Haxe to utilize the stored variable.

- `storeVar` - The specified stored variable to set a new value to, or unique name to inherited when created.
- `value` - The new value to set to or the said value to inherited when created.

Example:
```lua
setVar('awesomeFormula', 100 / 34)
```

### getVar(storeVar:String):Any
Gets the currently existing stored variable's current value.

- `storeVar` - The specified stored variable to get its current value from.

Example:
```lua
debugPrint( getVar('awesomeFormula') ) --> 2.941176471
```
```haxe
debugPrint( getVar('awesomeFormula') ); //> 2.941176471
```