# Built-in Functions
### type(data:Dynamic)
Checks the returning argument and determines the data type of the argument; Possibly returns: `string`, `number`, `boolean`, `table`, `function`, `thread`, or `userdata`.

- `data` - The value to return the type of.

Example:
```lua
function onCreate()
     debugPrint( type('') ) --> string
     debugPrint( type(42) ) --> number
     debugPrint( type({}) ) --> table
end
```

### tostring(arg:Dynamic)
Converts any `number` or `boolean` value into a real string from the provided argument; Returns a nil value if it is impossible to convert. 

- `arg` - The `number` value to be converted, it can also use `boolean` values.

Example:
```lua
function onCreate()
     debugPrint( type(tostring(4425)) ) --> string
     debugPrint( type(tostring(true)) ) --> string
end
```

### tonumber(arg:String, ?base:Int = 10)
Converts a number value from a string into a real number from the provided argument; Returns a `nil` value if it is impossible to convert.

- `arg` - The `number` value from a `string` to be converted.
- `base` - An optional parameter, The numerical base to convert from the `arg` argument; Default value: `10`.

Example:
```lua
function onCreate()
     debugPrint( type(tonumber('5323')) ) --> number
     debugPrint( type(tonumber('1.25')) ) --> number
     debugPrint( tonumber('32e2') )       --> 3200.0
     debugPrint( tonumber('ff0000', 16) ) --> 16711680
end
```

### require(modulePath:String)
Searches the location of the Lua file and loads the given module. And controls if the Lua file has previously been executed in order to avoid duplicating the work.

- `modulePath` - The given module to load; Starts outside the `mods` folder directory.

### load(code:String)
Receives the Lua code from the argument and parses it into a real Lua code. The code that will be loaded is inside a function; Returns a `function`.

- `code` - The code from the `string` to be parse into real Lua code.

Example:
```lua
function onCreate()
     debugPrint( load('return 23 % 5')() ) --> 3
     debugPrint( load('return \'Hi\'')() ) --> Hi
end
```

### unpack(list:Array, ?min:Int = 1, ?max:Int = #list)
Returns the elements from the given table each separated. The range is determined from the `min` and `max` parameters.

- `list` - The table to be unpacked.
- `min` - An optional parameter, The minimum index value to select the range; Default value: `1`.
- `max` - An optional parameter, The maximum index value to select the range.

Example:
```lua
function onCreate()
     local array = {23, 72, 12, 83, 91}
     debugPrint( unpack(array) )       --> 23, 72, 12, 83, 91
     debugPrint( unpack(array, 3) )    --> 12, 83, 91
     debugPrint( unpack(array, 2, 4) ) --> 72, 12, 83
end
```

### select(index:Int|String, ...args:Dynamic)
Returns the number of selected from the arguments, the selection range is determined by the `index` parameter.

- `index` - The index range for the arguments to be selected. If the argument is a negative number, it will return to the end of the argument list. You can also get the full range by using the hastag <kbd>#</kbd> character.
- `args` - The argument(s) to be passed and selected; this parameter is infinite. Meaning you can add an infinite amount of arguments, each separated by a comma <kbd>,</kbd> character; Example: `23, 13, 66`.

Example:
```lua
local charys = {}
for char = 65, 70 do
     table.insert(charys, string.char(char))
end

function onCreate()
     debugPrint( select(3,   unpack(charys)) ) --> C, D, E, F
     debugPrint( select(-2,  unpack(charys)) ) --> E, F
     debugPrint( select('#', unpack(charys)) ) --> 6
end
```

### pairs(tab:Array)
Returns a key-value pairs and it's commonly used for dictionaries; keys are all preserved but returns as an unorganized sort; Not to be confused with `ipairs()` function.

- `tab` - The table to be iterated.

Example:
```lua
local array = {[-1] = 34, [0] = 93, [1] = 45, [3] = 64, [2] = 12}

array['hello'] = true
array['bye']   = false
function onCreate()
     for k,v in pairs(array) do
          debugPrint(v) --> 93, 45, 12, 64, true, false, 34
     end
end
```

### ipairs(tab:Array)
Returns a index-value pairs and it's only used for arrays. Non-numeric keys are ignored as a whole, equivalent to numeric indices less than `1`; `nil` values will also be ignored.

- `tab` - The table to be iterated.

Example:
```lua
local array = {[-1] = 34, [0] = 93, [1] = 45, [3] = 64, [2] = 12}

array['hello'] = true
array['bye']   = false
function onCreate()
     for k,v in pairs(array) do
          debugPrint(v) --> 45, 12, 64
     end
end
```

## Handling Errors
> [!NOTE]
> _These functions only work, outside of any Callback Templates._

### error(message:String, ?level:Int = 1)
Throws an error message, usually error messages are strings describing what went wrong. When there is an internal error; Example: Attempting to index a non-table value.

- `message` - The error message to be generate.
- `level` - An optional parameter, This specifies how to get the error position determined by a number. Passing level `1` means the error position is where the error function was called. Passing level `2` points the error to where the function that called the error was called, and so on. If you try to pass a level `0`, you will avoid adding error position information to the message; Default value: `1`.

Example:
```lua
error('A fatal error occured!')
```

### assert(condition:Dynamic, message:String)
Throw an error massage if the `condition` argument returns `false` or `nil`. If the assertion passes, it returns all values passed to it.

- `condition` - The specified condition for the function to execute the error.
- `message` - The error message to be generate.

Example:
```lua
local function median(min, max)
     local errmsg1 = 'min and max argument not a number type'
     local errmsg2 = 'min argument has a higher value than max argument!'
     assert(type(min) == 'number' or type(max) == 'number', errmsg1)
     assert(min <= max, errmsg2)

     return (min + max) / 2
end

debugPrint(median(34, 25)) --> min argument has a higher value than max argument!
```

### pcall(func:Function, ?...args:Dynamic)
Calls a function and runs it in protected mode and catches the error and returns a status code. The function returns two values, the code status code which returns a `boolean`, if `true` the call succeeds without errors. And the error message generated if there is any errors found, if not returns the function returning value.

- `func` - The function to be runned in protected mode.
- `args` - An optional parameter; If the function is not anonymous, the argument(s) for the function to use. The argument is an infinite parameter.

Example:
```lua
local boolValue, errorValue = pcall(function()
     local var = 45
     return 34 * var
end)

debugPrint(boolValue)  --> true
debugPrint(errorValue) --> 1530

local boolValue, errorValue = pcall(function()
     return 34 * var
end)

debugPrint(boolValue)  --> false
debugPrint(errorValue) --> attempt to perform arithmetic on a nil value (global 'var')
```

### xpcall(func:Function, error:Function, ?...args:Dynamic)
Works similar to the `pcall()` function except that you can set a new customizable error handler.

- `func` - The function to be runned in protected mode.
- `error` - 	The function to use as the error handle, if it catches an error.
- `args` - An optional parameter; If the function is not anonymous, the argument(s) for the function to use. The argument is an infinite parameter.

Example:
```lua
local boolValue, errorValue = pcall(function()
     return 34 * var
end, function(error) -- The error parameter, returns the error message
     debugPrint('An error occured! fix it dummy!')
end)

debugPrint(errorValue) --> An error occured! fix it dummy!
```

***

# Built-in Constants
### _G
The Global Variable `_G` is special type of table dictionary that holds the global environment. This allows you to insert variables and functions across all of your Lua scripts.

But unfortunately doesn't work why? idk, there are alternatives to Global Variable `_G` such as `setVar()` and `setOnLuas()` functions. The only thing it's used for getting multiple global variables from a loop and modify the values easily.

Example:
```lua
function onCreate()
     myGlobalVar0, myGlobalVar1 = 183, 231
     myGlobalVar2, myGlobalVar3 = 963, 263
     for nummys = 0, 3 do
          debugPrint(_G['myGlobalVar' .. nummys])         --> 183, 231, 963, 263
          debugPrint(_G['defaultPlayerStrumX' .. nummys]) --> 732, 844, 956, 1068
     end 
end
```