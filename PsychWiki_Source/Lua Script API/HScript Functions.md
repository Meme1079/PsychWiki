# Haxe Interpreter Functions
### runHaxeCode(code:String, ?vars:Array\<Any\> = null, ?func:String = null, ?args:Array\<Dynamic\> = null):Void
Runs a Haxe code and interpretes the code within a Lua script.

- `code` - The given code to be interpreted.
- `vars` - An optional parameter, the given variables to import within code; must be a table dictionary.
- `func` - An optional parameter, the said given function within the code to call itself.
- `args` - An optional parameter, the certain amount of arguments to passed within the function, if said arguments exists.

Examples:
> A simple Haxe code, creates a custom text by utilizing the `Alphabet` class from the `objects` library package.
```lua
runHaxeCode([[
     import objects.Alphabet;

     var awesome = new Alphabet(0, 0, 'Awesome', true);
     awesome.cameras = [game.camHUD];
     add(awesome);
]])
```

> Imports variables that randomizes integer numbers to be used to calculate the area of an ellipse.
```lua
runHaxeCode([[
     function areaEllipse(aAxis:Float, bAxis:Float):Float {
          return Math.PI * aAxis * bAxis;
     }

     debugPrint(areaEllipse(awesomeNumber1, awesomeNumber2));
]], {awesomeNumber1 = getRandomInt(0, 10), awesomeNumber2 = getRandomInt(0, 10)})
```

> Calls the area of an ellipse function and prints its calculated area. This is probably used to overcome some obscure  bug from the `runHaxeCode()` function, when printing within functions.
```lua
runHaxeCode([[
     function areaEllipse(aAxis:Float, bAxis:Float):Float {
          debugPrint(Math.PI * aAxis * bAxis);
     }
]], nil, 'areaEllipse', {54, 43})
```

### runHaxeFunction(func:String, ?args:Array\<Dynamic\> = null):Void
Runs a function from the previous interpreted Haxe code within a Lua script.

- `func` - An optional parameter, the said given function within the code to call outside the code from.
- `args` - An optional parameter, the certain amount of arguments to passed within the function, if said arguments exists. 

Example:
> Calls a bunch of formulas outside the Haxe code.
```lua
runHaxeCode([[
     function areaPyramid(baseLength:Float, baseWidth:Float, height:Float):Float {
          var calcDimensions = (baseMain:Float, baseAlt:Float) -> {
               return baseAlt * Math.sqrt( Math.pow((baseMain/2), 2) + Math.pow(height, 2) );
          }

          var dimensionLength = calcDimensions(baseLength, baseWidth);
          var dimensionWidth  = calcDimensions(baseWidth, baseLength);
          return (baseLength * baseWidth) + dimensionLength + dimensionWidth;
     }

     function areaCone(radius:Float, height:Float):Float {
          return Math.PI * radius * (radius + Math.sqrt( Math.pow(height, 2) + Math.pow(radius, 2) ));
     }
]])

debugPrint( runHaxeFunction('areaPyramid', {3, 4, 5}) ) --> 49.036107439225
debugPrint( runHaxeFunction('areaCone', {12, 33}) )     --> 1776.1597151886
```

***

# See Also
- [Pre-Imported Libraries](https://github.com/Meme1079/PsychWiki/wiki/Haxe-Script-API:-Pre%E2%80%90Imported-Libraries)