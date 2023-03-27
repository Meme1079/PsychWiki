# Scripts Functions
### addLuaScript(path:String, ?ignoreAlreadyRunning:Bool = false)
Adds a Lua script into the game.

- `path` - The location of the Lua script file to be added.
- `ignoreAlreadyRunning` - An optional parameter, It will execute while ignoring the Lua script that it's running from.

### removeLuaScript(path:String)
Removes a Lua script into the game, can be used for <ins>improving performaces</ins> for crappy computers.

- `path` - The location of the Lua script file to be removed.

### isRunning(luaFile:String)
Checks if the Lua script is <ins>currently running</ins>; Returns a `boolean`.

- `luaFile` - The location of the Lua script file to be used.

### setGlobalFromScript(luaFile:String, global:String, val:Dynamic)
Sets the current <ins>global variable from another Lua script</ins> with a new value.

> **Note**: _The `global` parameter can only get global variables and not local variables._

- `luaFile` - The location of the Lua script file to be used.
- `global` -  The variable inside the Lua script to get.
- `val` - The new value to be set.

### getGlobalFromScript(luaFile:String, global:String)
Gets the current <ins>global variable from another Lua script</ins> current value; Returns a `variable` value.

- `luaFile` - The location of the Lua script file to be used.
- `global` -  The variable inside the Lua script to get.

### getRunningScripts()
Checks if <ins>multiple Lua scripts</ins> are current running; Returns a `table`.

***

# Haxe Script/Haxe Functions
### addHaxeLibrary(libName:String, ?libPackage:String = '')
Imports haxe <ins>librarys into the interpreter</ins>. Basically an `import` statement in Haxe which <ins>imports specific packages into Haxe</ins> like sprites, text, tweens, etc.

- `libName` - The library name.
- `libPackage` - An optional parameter, The library package.

Examples: 
- Imports the sound library: `addHaxeLibrary('FlxSound', 'flixel.system')`
- Imports shader filters: `addHaxeLibrary('ShaderFilter', 'openfl.filters')`
- Imports CoolUtil: `addHaxeLibrary('CoolUtil')`

In Haxe:
```haxe
package; // they are directories that contain modules, i dunno how it works; but very important to use.

// import library_package.library_name | <-- Thats the syntax

import flixel.system.FlxSound; // Imports the sound package
import openfl.filters.ShaderFilter; // Imports the shader filter package
import CoolUtil; // Imports CoolUtil haxe file, i think

// Also the semi colon ';' character is very important when declaring functions, packages, variables, etc.
```

### runHaxeCode(codeToRun:String)
Executes the haxe code.

- `codeToRun` - The haxe code to be run, use double brackets `[[]]`.

Example:
```lua
function onCreatePost()
     addHaxeLibrary('FlxText', 'flixel.text')
     runHaxeCode([[
          var textContent = ['Among us', 'This is a Text', 'Haxe is kinda cool']; // Array
          var textDisplay = new FlxText(0, 0, 0, textContent[0], 35, false); // makeLuaSprite
          textDisplay.cameras = [game.camHUD]; // setObjectCamera
          textDisplay.screenCenter(); // screenCenter
          game.add(textDisplay); // addLuaText
     ]])
end
```

***

### getLuaObject(tag:String)
Gets the specified <ins>Lua object tag</ins>.

- `tag` - The object tag name to be used.

Example:
```lua
function onCreatePost()
     runHaxeCode([[
          var LuaTag = ''; // Insert the lua object
          game.getLuaObject(LuaTag).alpha = 0.5; // the "game." preffix is required to use!!!!
     ]])
end
```

### setVar(name:String, value:Dynamic)
Sets the current <ins>global variable</ins> in Haxe with a new value. Or <ins>initializes the creation</ins> of a global variable.

- `name` - The name of the global variable to be used.
- `value` - The new value of the global variable or initiate the specified value.

Example:
```lua
function onCreatePost()
     addHaxeLibrary('FlxText', 'flixel.text')
     runHaxeCode([[
          var textContent = ['Among us', 'This is a Text', 'Haxe is kinda cool']; // Array
          setVar('importArray', textContent); // Initiates the global var
     ]])
     runHaxeCode([[
          var getArray = getVar('importArray') // Gets the global var
          var textDisplay = new FlxText(0, 0, 0, getArray[0], 35, false);
          textDisplay.cameras = [game.camHUD];
          textDisplay.screenCenter();
          game.add(textDisplay);
     ]])
end
```

### getVar(name:String)
Gets the current <ins>global variable</ins> in Haxe current value.

- `name` - The name of the global variable to be used.

### removeVar(name:String)
Removes the current <ins>global variable</ins> in Haxe permenantly.

- `name` - The name of the global variable to be removed.

***

# File Functions
### getTextFromFile(path:String)
Gets the text content from a `txt` file.

- `path` - The location of the `txt` file to be used; Starts outside the `mod` folder by defualt.

### directoryFileList(folder:String)
Gets the contents of the folder; Returns a `table`.

- `folder` - The location of the folder to be used; Starts outside the `mod` folder by defualt.

### saveFile(path:String, content:String, ?absolute:Bool = false)
Changes the specific <ins>file contents and saves it</ins>.

- `path` - The location of the file to be change
- `content` - The file contents to be changed or modified, use double brackets `[[]]`.
- `absolute` - An optional parameter, It will be ignore by the mod folder directory, causing it to be outside the mod folder.

### deleteFile(path:String)
Deletes the specific file.

- `path` - The location of the file to be deleted.

***

# Checking File Functions
### checkFileExists(filename:String, ?absolute:Bool = false)
Checks if the file exist or not.

- `filename` - The location of the Lua script file to be used.
- `absolute` - An optional parameter, It will be ignore by the mod folder directory, causing it to be outside the mod folder.

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

# Built-In String Functions
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
Removes any <ins>whitspace characters from the string</ins>. Or you could just use `(string):gsub('% ', '')` which functions the same. So this function is confirmed useless, so don't even bother using it lmao.

- `str` - The string to be trim.

***

# Random Functions
### getRandomInt(min:Int, max:Int)
Randomizes the <ins>Int number</ins> from min to max values.

- `min` - The minimum value.
- `max` - The maximum value.

### getRandomFloat(min:Float, max:Float)
Randomizes the <ins>Float number</ins> from min to max values.

- `min` - The minimum value.
- `max` - The maximum value.

### getRandomBool(chance:Float = 50)
Randomizes the chances of <ins>returning a `true` value</ins>.

- `chance` - The percent of it being `true`; Goes from `0` to `100`.