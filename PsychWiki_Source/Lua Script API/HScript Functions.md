# Haxe Functions
### addHaxeLibrary(libName:String, ?libPackage:String = '')
Imports haxe libraries into the interpreter. Basically an `import` statement in Haxe which imports specific packages into Haxe like sprites, text, tweens, etc.

- `libName` - The library name to be referenced.
- `libPackage` - An optional parameter, The library package to use.

Examples:
- Imports the sound library: `addHaxeLibrary('FlxSound', 'flixel.system')`
- Imports shader filters: `addHaxeLibrary('ShaderFilter', 'openfl.filters')`
- Imports CoolUtil: `addHaxeLibrary('CoolUtil')`

<details><summary><b>Import Haxe (Reference):</b></summary>
<p>

```haxe
package; // they are directories that contain modules, i dunno how it works; but very important to use.

// import library_package.library_name | <-- That's the syntax

import flixel.system.FlxSound; // Imports the sound package
import openfl.filters.ShaderFilter; // Imports the shader filter package
import CoolUtil; // Imports CoolUtil haxe file, i think

// Also the semi colon ';' character is very important when declaring functions, packages, variables, etc.
```

</p>
</details>

### runHaxeCode(codeToRun:String, ?varsToBring:Any = null, ?funcToRun:String = null, ?funcArgs:Array\<Dynamic\> = null)
Runs your haxe code for your Hscripts and stuff.

- `codeToRun` - The haxe code to be run, use double brackets `[[]]` for the string.
- `varsToBring` - An optional parameter, The Haxe variable(s) to import for string interpolation; Must be a table dictionary.
- `funcToRun` - An optional parameter, The Haxe function name to be referenced.
- `funcArgs` - An optional parameter, The arguement(s) to be passed to the Haxe function.

Example:
```lua
function onCreate()
     runHaxeCode([[
          debugPrint(text, color); // will print > 'hi'
     ]], {text = 'hi', color = 0xFF0000})
end
```

### runHaxeFunction(funcToRun:String, ?funcArgs:Array\<Dynamic\> = null)
Executes the Haxe function from the Haxe functions inside the `runHaxeCode()` function.

- `funcToRun` - The Haxe function name to be referenced.
- `funcArgs` - An optional parameter, The arguement(s) to be passed to the Haxe function.

Example:
```lua
function onCreate()
     runHaxeCode([[
          function isBool(bool:String) { return bool == 'true' ? true : false; }
     ]])
     
     local proof = runHaxeFunction('isBool', {'true'})
     debugPrint(type(proof)) -- will print > 'boolean'
end
```

***

# Haxe Global Var Functions
### setVar(name:String, value:Dynamic)
Sets the current global Haxe variable with a new value. Or initializes the creation of a global Haxe variable if there is no global Haxe variable.

- `name` - The name of the global Haxe variable to be reference.
- `value` - The data type to use or the current value to over-write.

Example:
```lua
function onCreate()
     runHaxeCode([[
          setVar('globalVar', 'Hello Haxe!');
          setVar('globalYes', [34, 123, 4.20]);
     ]])
     runHaxeCode([[
          debugPrint(getVar('globalVar'), 0xf88700);    // will print > 'Hello Haxe!'
          debugPrint(getVar('globalYes')[2], 0xf88700); // will print > 4.20
     ]])

     -- Calling a Global Haxe Variable into Lua
     debugPrint(getProperty('globalYes')[1]) -- will print > 34
     debugPrint(getProperty('globalYes')[2]) -- will print > 123
end
```

### getVar(name:String)
Gets the current global Haxe variable current value.

- `name` - The name of the global Haxe variable to get.

### removeVar(name:String)
Removes the global Haxe variable permanently, if not used anymore.

- `name` - The name of the global Haxe variable to removed.

***

# Haxe In-Script Functions
### debugPrint(text:String, ?color:FlxColor = null)
### getLuaObject(tag:String)
### createGlobalCallback(name:String, func:Dynamic)
### createCallback(name:String, func:Dynamic, ?funk:FunkinLua = null)

***

# Haxe Libraries List



<!-- ### addHaxeLibrary(libName:String, ?libPackage:String = '')
Imports haxe <ins>libraries into the interpreter</ins>. Basically an `import` statement in Haxe which <ins>imports specific packages into Haxe</ins> like sprites, text, tweens, etc.

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

Example:
```lua
function onCreatePost()
     addHaxeLibrary('FlxText', 'flixel.text')
     runHaxeCode([[
          var textContent = ['Among us', 'This is a Text', 'Haxe is kinda cool']; // Array
          var textDisplay = new FlxText(0, 0, 0, textContent[0], 35, false); // makeLuaSprite
          textDisplay.cameras = [game.camHUD]; // setObjectCamera
          textDisplay.screenCenter();          // screenCenter
          game.add(textDisplay);               // addLuaText
     ]])
end
```

### runHaxeFunction(funcToRun:String, ?funcArgs:Array/<Dynamic/> = null)
Executes the Haxe function from the <ins>source code or from the HScript custom functions</ins>.

> **Note**: _This function is an upcoming feature in the next update of Psych Engine, because I'm very very impatient._

- `funcToRun` - The specified Haxe function to run.
- `funcArgs` - An optional parameter, The argument(s) to be passed on the Haxe Function; Default value: `null`.

***

### getLuaObject(tag:String)
Gets the specified Lua object tag to imported inside the `runHaxeCode()` function.

- `tag` - The object tag name to get.

Example:
```lua
function onCreate()
     makeLuaSprite('graphicThingy', nil, 0, 0)
     makeGraphic('graphicThingy', 1000, 1000, 'ff00ff')
     addLuaSprite('graphicThingy', true)

     runHaxeCode([[
          var theLuaTag = game.getLuaObject('graphicThingy'); // gets the lua tag
          theLuaTag.cameras = [game.camHUD]; // Sets it into 'camHUD'
          theLuaTag.alpha   = 0.5;           // Sets the opacity to '0.5'
          theLuaTag.angle   = 180;           // Sets the angle to '180'
     ]])
end
```

### setVar(name:String, value:Dynamic)
<ins>Sets the current global Haxe variable</ins> with a new value. Or <ins>initializes the creation</ins> of a global Haxe variable.

- `name` - The name of the global Haxe variable to be used.
- `value` - The new value to be set.

Example:
```lua
function onCreate()
     addHaxeLibrary('FlxText', 'flixel.text')
     runHaxeCode([[
          var textContent = ['Among us', 'This is a Text', 'Haxe is kinda cool']; // Array
          setVar('importArray', textContent); // Initiates the global var
     ]])
     runHaxeCode([[
          var getArray = getVar('importArray'); // Gets the global var
          var textDisplay = new FlxText(0, 0, 0, getArray[0], 35, false);
          textDisplay.cameras = [game.camHUD];
          textDisplay.screenCenter();
          game.add(textDisplay);
     ]])
end
```

### getVar(name:String)
<ins>Gets the current global Haxe variable</ins> current value from another `runHaxeCode()` function.

- `name` - The name of the global Haxe variable to get.

### removeVar(name:String)
Removes the global Haxe variable permanently.

- `name` - The name of the global Haxe variable to removed. -->