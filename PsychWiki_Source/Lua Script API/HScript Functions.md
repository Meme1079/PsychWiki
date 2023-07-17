# Haxe Functions
### addHaxeLibrary(libName:String, ?libPackage:String = '')

- `libName`
- `libPackage`

### runHaxeCode(codeToRun:String, ?varsToBring:Any = null, ?funcToRun:String = null, ?funcArgs:Array/<Dynamic/> = null)

- `codeToRun`
- `varsToBring`
- `funcToRun`
- `funcArgs`

### runHaxeFunction(funcToRun:String, ?funcArgs:Array/<Dynamic/> = null)

- `funcToRun`
- `funcArgs`

***

# Haxe In-Script Functions
### debugPrint(text:String, ?color:FlxColor = null)
### setVar(name:String, value:Dynamic)
### getVar(name:String)
### removeVar(name:String)
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