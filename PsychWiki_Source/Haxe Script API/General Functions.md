# Custom Callback Functions
### createCallback(name:String, func:Dynamic, ?funk:FunkinLua = null):Void
Creates a custom callback locally within the currently running script.

- `name` - The unique callback name to inherit for later use.
- `func` - The given anonymous function code for the callback to utilize with.
- `funk` - An optional parameter, _unknown use case_. <sup>Scarce Information; Still Researching</sup>

Examples:
> Creates a custom callback within itself.
```haxe
createCallback('getSlotRandomInt', function(min:Int, max:Int,) {
     return [FlxG.random.int(min, max), FlxG.random.int(min, max), FlxG.random.int(min, max)];
}, 'hscript');

debugPrint( getSlotRandomInt(3, 5) );
```
> Creates a custom callback within the interpreted HScript.
```lua
runHaxeCode([[
     createCallback('getSlotRandomInt', function(min:Int, max:Int) {
          return [FlxG.random.int(min, max), FlxG.random.int(min, max), FlxG.random.int(min, max)];
     });
]])

debugPrint( getSlotRandomInt(3, 5) );
```

### createGlobalCallback(name:String, func:Dynamic):Void
Creates a custom global callback that can be call within multiple currently running scripts.

- `name` - The unique callback name to inherit for later use.
- `func` - The given anonymous function code for the callback to utilize with.

Example:
> Creates a custom global callback, and calls it from different scripts.
```haxe
createCallback('getSlotRandomBool', function(chance:Float = 50) {
     return [FlxG.random.bool(chance), FlxG.random.bool(chance), FlxG.random.bool(chance)];
});
```
```haxe
debugPrint( getSlotRandomBool(80) );
```
```lua
debugPrint( getSlotRandomBool(80) )
```

***

# Playstate Variable Functions
### setVar(storeVar:String, value:Dynamic):Any
Sets a stored global variable to allow different scripts either from Lua scripts or HScripts to be utilize with it. Either it sets the stored variable with a new value or initializes the creation of a variable with the inherit value. If the said saved variable currently doesn't exists.

The said stored variable will be stored within the game, mainly from the `MusicBeatState` class by utilizing a safe cast. Allowing every scripts either in Lua or Haxe to utilize the stored variable.

- `storeVar` - The stored global variable to set a new value to or unique name to inherit.
- `value` - The new value to be set to or inherit from.

Example:
> Creates a stored variable, that will allow different scripts to utilize with it. _(copy paste lmaooo)_
```lua
runHaxeCode([[
     setVar('awesomeFormula', 100 / 34);
]])
```

### getVar(storeVar:String):Any
Gets the stored variable's current value.

- `storeVar` - The stored global variable to get its current value from.

Example:
> Gets the stored variable from a different interpreted HScripts within the Lua script.
```lua
runHaxeCode([[
     setVar('awesomeFormula', 100 / 34);
]])

runHaxeCode([[
     debugPrint( getVar('awesomeFormula') );
]])
```

### removeVar(storeVar:String):Bool
Removes the given stored variable.

- `starVar` - The stored global variable to be removed from.

Example:
> Removes the said stored variable, that's it.
```lua
runHaxeCode([[
     removeVar('awesomeFormula');
]])
```

***

# Miscellaneous Functions
### debugPrint(text:String, ?color:FlxColor = null):Void
Displays the passed value at the top-left corner of the screen, usually disappearing in a few seconds.

> [!TIP]
> _If you want to display mutiple values at once, use a table array containing each values._

- `text` - The said passed value to be display.
- `color` - An optional parameter, the hexadecimal color for the text to rendered; Default value: `WHITE`.

### getModSetting(saveTag:String, ?modName:String = null):Void
Gets the specified element tag from the settings JSON file to utilize.

- `saveTag` - The specified element tag name to get its current saved value.
- `modName` - An optional parameter, The given mod folder to locally find the settings JSON file within itself.