# Script Functions
### addLuaScript(luaFile:String, ?ignoreAlreadyRunning:Bool = false)
### addHScript(HaxeFile:String, ?ignoreAlreadyRunning:Bool = false)
### removeLuaScript(luaFile:String, ?ignoreAlreadyRunning:Bool = false)
### setGlobalFromScript(luaFile:String, global:String, val:Dynamic)
### getGlobalFromScript(luaFile:String, global:String)
### isRunning(luaFile:String)
### getRunningScripts()

***

# Set & Call On Functions
### setOnScripts(varName:String, arg:Dynamic, ?ignoreSelf:Bool = false, ?exclusions:Array\<String\> = null)
### setOnLuas(varName:String, arg:Dynamic, ?ignoreSelf:Bool = false, ?exclusions:Array\<String\> = null)
### setOnHScript(varName:String, arg:Dynamic, ?ignoreSelf:Bool = false, ?exclusions:Array\<String\> = null)
### callOnScripts(funcName:String, ?args:Array\<Dynamic\> = null, ?ignoreStops = false, ?ignoreSelf:Bool = true, ?excludeScripts:Array\<String\> = null, ?excludeValues:Array\<Dynamic\> = null)
### callOnLuas(funcName:String, ?args:Array\<Dynamic\> = null, ?ignoreStops=false, ?ignoreSelf:Bool = true, ?excludeScripts:Array\<String\> = null, ?excludeValues:Array\<Dynamic\> = null)
### callOnHScript(funcName:String, ?args:Array\<Dynamic\> = null, ?ignoreStops=false, ?ignoreSelf:Bool = true, ?excludeScripts:Array\<String\> = null, ?excludeValues:Array\<Dynamic\> = null)
### callScript(luaFile:String, funcName:String, ?args:Array\<Dynamic\> = null)

***

# File Functions
### directoryFileList(folder:String)
### getTextFromFile(path:String, ?ignoreMods:Bool = false)
### checkFileExists(filename:String, ?absolute:Bool = false)
### saveFile(path:String, content:String, ?absolute:Bool = false)
### deleteFile(path:String)

***

# Lua Exists Functions
### luaSpriteExists(tag:String)[^16]
Checks if the sprite object exists inside the game, returns `true` if it exists.

- `tag` - The sprite object tag name to be used.

### luaTextExists(tag:String)[^17]
Checks if the text object exists inside the game, returns `true` if it exists.

- `tag` - The text object tag name to be used.

### luaSoundExists(tag:String)[^18]
Checks if the sound exists inside the game, returns `true` if it exists.

- `tag` - The sound tag name to be used.

***

# Saving Data Functions
### initSaveData(name:String, ?folder:String = 'psychenginemods')[^12]
Initializes the creation of the save data or loads the saved data if it exists. You must use this function first before using other saving data functions. Why? it doesn't exists yet, stupid.

- `name` - The save data name to be given.
- `folder` - An optional parameter; The folder to create or load the save file in; Defualt value: `psychenginemods`.

### setDataFromSave(name:String, field:String, value:Dynamic)[^13]
Initializes the creation of the save data variable field. Or sets the current save data variable with a new value.

- `name` - The save data name to be used.
- `field` - The save data variable name to be given.
- `value` - The specified value to set in.

### getDataFromSave(name:String, field:String)[^14]
Gets the current save data variable current value.

- `name` - The save data name to be used.
- `field` - The save data variable name to get.

### flushSaveData(name:String)[^15]
Applies all the changes to the saved file and updates it with new values.

- `name` - The save data name to be used.

***

# String Tool Functions
### stringStartsWith(str:String, start:String)[^1]
Checks if the <ins>string begins</ins> with the specified pattern, returning `true` if detected.

- `str` - The string to be used.
- `start` - The starting pattern for the string to find.

### stringEndsWith(str:String, end:String)[^2]
Checks if the <ins>string ends</ins> with the specified pattern, returning `true` if detected.

- `str` - The string to be used.
- `end` - The ending pattern for the string to find.

### stringSplit(str:String, split:String)[^3]
Splits the string that is <ins>determined by the pattern</ins> into an array of substrings.

- `str` - The string to be split.
- `split` - The delimeter, the pattern separator for the string to split.

### stringTrim(str:String)[^4]
<ins>Removes any whitespace</ins> it could find from the string. Or you could just use `(string):gsub('%s*')` tho.

- `str` - The string to be trimmed.

***

# Randomization Functions
### getRandomInt(min:Int, max:Int = FlxMath.MAX_VALUE_INT, ?exclude:String = '')[^5]
Randomizes and <ins>integer number</ins>, determined by the `min` and `max` parameters.

- `min` - The specified minimum value.
- `max` - The specified maximum value; Defualt value: `0x7FFFFFFF`[^6].
- `exclude` - An optional parameter; the integer numbers to exclude—each separated by a comma <kbd>,</kbd> character[^7].

### getRandomFloat(min:Float, max:Float = 1, ?exclude:String = '')[^8]
Randomizes and <ins>floating-point number</ins>, determined by the `min` and `max` parameters.

- `min` - The specified minimum value.
- `max` - The specified maximum value; Defualt value: `1`.
- `exclude` - An optional parameter; the folating-point numbers to exclude—each separated by a comma <kbd>,</kbd> character.

### getRandomBool(chance:Float = 50)[^9]
<ins>Reandomizes the chances</ins> of returning to `true`.

- `chance` - The numbers of chances to return `true`; Defualt value: `50`; Goes from `0` to `100`.

***

# Playstate Variable Functions
### setVar(varName:String, value:Dynamic)[^10]
Initializes the creation of a playstate variable or sets the current playstate variable with a new value. This will only work if the Lua script that is in it is currently executed.

- `varName` - The playstate variable's name to be given.
- `value` - The specified value to set in.

### getVar(varName:String)[^11]
Gets the current playstate variable current value. This will only work if the Lua script that is in it is currently executed.

- `varName` - The playstate variable's name to get.

[^1]: https://github.com/ShadowMario/FNF-PsychEngine/blob/main/source/psychlua/ExtraFunctions.hx#L251C33-L251C49
[^2]: https://github.com/ShadowMario/FNF-PsychEngine/blob/main/source/psychlua/ExtraFunctions.hx#L254C33-L254C47
[^3]: https://github.com/ShadowMario/FNF-PsychEngine/blob/main/source/psychlua/ExtraFunctions.hx#L257C33-L257C44
[^4]: https://github.com/ShadowMario/FNF-PsychEngine/blob/main/source/psychlua/ExtraFunctions.hx#L260C33-L260C43
[^5]: https://github.com/ShadowMario/FNF-PsychEngine/blob/main/source/psychlua/ExtraFunctions.hx#L265C33-L265C45
[^6]: https://api.haxeflixel.com/flixel/math/FlxMath.html#:~:text=%3AInt%20%3D-,0x7FFFFFFF,-Maximum%20value%20of
[^7]: https://github.com/ShadowMario/FNF-PsychEngine/blob/main/source/psychlua/ExtraFunctions.hx#L266C37-L266C55
[^8]: https://github.com/ShadowMario/FNF-PsychEngine/blob/main/source/psychlua/ExtraFunctions.hx#L274C33-L274C47
[^9]: https://github.com/ShadowMario/FNF-PsychEngine/blob/main/source/psychlua/ExtraFunctions.hx#L283C33-L283C46
[^10]: https://github.com/ShadowMario/FNF-PsychEngine/blob/main/source/psychlua/FunkinLua.hx#L359C33-L359C39
[^11]: https://github.com/ShadowMario/FNF-PsychEngine/blob/main/source/psychlua/FunkinLua.hx#L363C33-L363C39
[^12]: https://github.com/ShadowMario/FNF-PsychEngine/blob/main/source/psychlua/ExtraFunctions.hx#L129C33-L129C45
[^13]: https://github.com/ShadowMario/FNF-PsychEngine/blob/main/source/psychlua/ExtraFunctions.hx#L148C33-L148C48
[^14]: https://github.com/ShadowMario/FNF-PsychEngine/blob/main/source/psychlua/ExtraFunctions.hx#L160C33-L160C48
[^15]: https://github.com/ShadowMario/FNF-PsychEngine/blob/main/source/psychlua/ExtraFunctions.hx#L140C33-L140C46
[^16]: https://github.com/ShadowMario/FNF-PsychEngine/blob/main/source/psychlua/FunkinLua.hx#L1153C33-L1153C48
[^17]: https://github.com/ShadowMario/FNF-PsychEngine/blob/main/source/psychlua/FunkinLua.hx#L1156C33-L1156C46
[^18]: https://github.com/ShadowMario/FNF-PsychEngine/blob/main/source/psychlua/FunkinLua.hx#L1159C33-L1159C47