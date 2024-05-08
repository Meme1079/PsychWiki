# Haxe Functions
### addHaxeLibrary(libName:String, ?libPackage:String = '')
Imports haxe libraries into the interpreter. Basically an `import` statement in Haxe which imports specific packages into Haxe like sprites, text, tweens, etc.

- `libName` - The library name to be referenced.
- `libPackage` - An optional parameter, The library package to use; Default value: `''`.

Examples:
- Imports the sound library: `addHaxeLibrary('FlxSound', 'flixel.sound')`
- Imports shader filters: `addHaxeLibrary('ShaderFilter', 'openfl.filters')`
- Imports CoolUtil: `addHaxeLibrary('CoolUtil', 'backend')`

<details><summary><b>Import Haxe (Reference):</b></summary>
<p>

```haxe
package; // they are directories that contain modules, i dunno how it works, but very important to use.

// import library_package.library_name | <-- That's the syntax
import flixel.sound.FlxSound;       // Imports the sound package
import openfl.filters.ShaderFilter; // Imports the shader filter package
import backend.CoolUtil;            // Imports CoolUtil haxe file

// Also the semi colon ';' character is very important when declaring functions, packages, variables, etc.
```

</p>
</details>

<details><summary><b>Pre-imported Libraries:</b></summary>
<p>

```haxe
import flixel.FlxG;
import flixel.math.FlxMath;
import flixel.FlxSprite;
import flixel.FlxCamera;
import backend.PsychCamera;
import flixel.util.FlxTimer;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import psychlua.HScript.CustomFlxColor; // Not the actual FlxColor, since it is an Abstract (HScript can't use Abstracts), which means some functions and variables from FlxColor will be missing.
import backend.BaseStage.Countdown;
import states.PlayState;
import backend.Paths;
import backend.Conductor;
import backend.ClientPrefs;
import backend.Achievements;
import objects.Character;
import objects.Alphabet;
import objects.Note;
import psychlua.CustomSubstate;
import flixel.addons.display.FlxRuntimeShader;
import openfl.filters.ShaderFilter;
import StringTools;
import flxanimate.FlxAnimate;
```

</p>
</details>

### runHaxeCode(codeToRun:String, ?varsToBring:Any = null, ?funcToRun:String = null, ?funcArgs:Array\<Dynamic\> = null)
<ins>Runs your haxe code</ins> for your Hscripts and stuff.

- `codeToRun` - The haxe code to be run, use double brackets `[[]]` for multiline strings.
- `varsToBring` - An optional parameter, The Haxe variable(s) to import for string interpolation; Must be a table dictionary; Default value: `nil`.
- `funcToRun` - An optional parameter, The Haxe function name inside the runHaxeCode to run; Must be a string; Default value: `nil`.
- `funcArgs` - An optional parameter, The argument(s) to be passed to the Haxe function inside the runHaxeCode; Must be a table containing all of the values; Default value: `nil`.

Example:
```lua
function onCreate()
     -- varsToBring example
     runHaxeCode([[
          debugPrint(text, color); // will print > 'hi'
     ]], {text = 'hi', color = 0xFF0000})

     -- funcToRun and funcArgs example
     runHaxeCode([[
          function isEven(num:Int) {
               debugPrint(num % 2 == 0);
          }
     ]], nil, 'isEven', {4})
end
```

### runHaxeFunction(funcToRun:String, ?funcArgs:Array\<Dynamic\> = null)
<ins>Executes the Haxe function</ins> from the `runHaxeCode()` function.

- `funcToRun` - The Haxe function name to be referenced.
- `funcArgs` - An optional parameter, The argument(s) to be passed to the Haxe function; Default value: `nil`.

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

# Haxe Global Variable Functions
### setVar(name:String, value:Dynamic)
Creates and sets the variable into <ins>PlayState's variables map</ins> if it doesn't exist yet, which is basically <ins>creating a new global variable</ins>; Otherwise will set the variable with a new value. This will only work if the <ins>Haxe script that the function is in, is currently executed</ins>; Same works with `getVar()` function.

- `varName` - The variable to be referenced.
- `value` - The specified type of value for the variable to use or to over-write.

HScript Example (Script 1):
```haxe
function onCreate() {
     setVar('globalVar', 'Hello Haxe!');
     setVar('globalYes', [34, 123, 4.20]);
}
```

HScript Example (Script 2):
```haxe
function onCreate() {
     debugPrint(getVar('globalVar'), 0xFFF88700);    // will print > 'Hello Haxe!'
     debugPrint(getVar('globalYes')[2], 0xFFF88700); // will print > 4.20
}
```

Calling a global Haxe variable into Lua:
```lua
function onCreate()
     debugPrint(getProperty('globalYes')[1]) -- will print > 34
     debugPrint(getProperty('globalYes')[2]) -- will print > 123
end
```

### getVar(name:String)
Gets the variable's current value from PlayState's variables map.

- `varName` - The variable to be referenced.

### removeVar(name:String)
Removes the global variable permanently, if not used anymore.

- `varName` - The variable to be referenced.

***

# Haxe In-Script Functions
### debugPrint(text:String, ?color:FlxColor = null)
This will display a debug message in the <ins>top-left corner of the screen</ins>.

- `text` - The text to be outputed to the top-left of the screen.
- `color` - An optional parameter, The color for the text to be displayed.

### addBehindBF(obj:FlxBasic)
Adds the object behind Boyfriend; Identical functions: `addBehindGF`, `addBehindDad`.

- `obj` - The object to add.

### getLuaObject(tag:String)
Gets the specified tag object outside the `runHaxeCode()` function.

- `tag` - The object tag name to be referenced.

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

### createCallback(name:String, func:Dynamic, ?funk:FunkinLua = null)
Creates a local function inside a lua script.

> [!WARNING]
> _Third argument is broken due to some parentLua statement shit_.

- `name` - The given name of the function.
- `func` - The function code to use.
- `funk` - An optional parameter, The script that the function is gonna be created on; Default value: `nil`. _(If used in runHaxeCode, will choose the script that runHaxeCode was used in)_

Example:

```lua
function onCreate()
     runHaxeCode([[
          createCallback('print', function(text:String) {
               debugPrint(text);
          });
     ]])
end

function onCreatePost()
    print('Hello') -- will print "Hello"
end
```

### createGlobalCallback(name:String, func:Dynamic)
Creates a global function across <ins>all lua scripts</ins>.

- `name` - The given name of the global function.
- `func` - The function code to use.

Example:

Script 1 (Haxe):
```haxe
function onCreate() {
    createGlobalCallback('print', function(text:String) {
        debugPrint(text);
    });
}
```

Script 2 (Lua):
```lua
function onCreatePost()
    print('Hello') -- will print "Hello"
end
```