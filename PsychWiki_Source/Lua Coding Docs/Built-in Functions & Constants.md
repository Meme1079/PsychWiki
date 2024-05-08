# Built-in Functions
### type(data:Dynamic)
Checks the given data argument and returns the determine type of its argument, coded as a string. Which will return either: `string`, `number`, `boolean`, `nil`, `table`, `function`, `thread`, or `userdata`.

- `data` - The data argument to determine the specified type.

Example:
```lua
function onCreate()
     debugPrint( type('') ) --> string
     debugPrint( type(42) ) --> number
     debugPrint( type({}) ) --> table
end
```

### tostring(data:Dynamic)
Converts a given data argument into a literal string; Returns a `nil` value if an conversion error occured.

- `data` - the data argument to convert it inta literal string.

Example:
```lua
function onCreate()
     debugPrint( type(tostring(4425)) ) --> string
     debugPrint( type(tostring(true)) ) --> string
end
```

### tonumber(data:String, ?base:Int = 10)
Converts a given string argument into a real number, if the argument is returning a number or tring it will convert it to a number. Then it will return its number; Returns a `nil` value if an conversion error occured.

- `data` - The string argument to convert into a real number.
- `base` - An optional parameter, The specified [base](https://en.wikipedia.org/wiki/Radix) to interpret the numeral; Default value: `10`.

Example:
```lua
function onCreate()
     debugPrint( type(tonumber('5323')) ) --> number
     debugPrint( type(tonumber('1.25')) ) --> number
     debugPrint( tonumber('32e2') )       --> 3200.0
     debugPrint( tonumber('ff0000', 16) ) --> 16711680
end
```

### unpack(list:Array, ?min:Int = 1, ?max:Int)
Returns each elements from a given table, each separated. The range can be specified from the `min` parameter to the `max` parameter.

- `list` - The given table to unpack the elements.
- `min` - An optional parameter, The minimum index position to select the range; Default value: `1`.
- `max` - An optional parameter, The maximum index position to select the range.

Example:
```lua
function onCreate()
     local array = {23, 72, 12, 83, 91}
     debugPrint( unpack(array) )       --> 23, 72, 12, 83, 91
     debugPrint( unpack(array, 3) )    --> 12, 83, 91
     debugPrint( unpack(array, 2, 4) ) --> 72, 12, 83
end
```

### select(index:Dynamic, ...args:Dynamic)
Returns the selected range of multiple arguments from the `args` parameter. The starting range can be specified by the `index` parameter.

- `index` - The starting index position to start the selection if the argument is a negative number, it will return to the end of the argument list. If you want to get the total number of the argument list use the hashtag character <kbd>#</kbd>.
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

### load(code:String)
Loads a chunk by using a string if there are no errors, it returns the compiled chunk as a function. The environment of the returned function is the global environment. <!-- Am lazy to make my own description -->

- `code` - The chunk code to compiled as a function.

Example:
```lua
function onCreate()
     debugPrint( load('return 23 % 5')() ) --> 3
     debugPrint( load('return \'Hi\'')() ) --> Hi
end
```

### require(path:String)
Runs and loads the given module, with the `path` argument to find the designated module. You could use the slash character <kbd>/</kbd> or a period character <kbd>.</kbd> as a separator. Additionally, it controls whether the file has been executed previously to prevent duplication of loading. If function has problem on loading or running the module, or it doesn't find the said module. Then it will signal an error; Returns a `table`.

- `path` - The path to run and load the given module; Starts outside of the `mods` folder.

## Iterators
### pairs(iter:Array)
Iterates over key-value pairs for tables, recommended for dictionaries & mixed ones tho. The keys are all preserved but returns as an unorganized sort; Not to be confused with `ipairs()` function.

- `iter` - The table to iterate over.

Example:
```lua
function onCreate()
     local iter = {a = true, b = true, c = false}
     for k,v in pairs(iter) do
          debugPrint({k,v}) --> [c, false], [b, true], [a, true]
     end
end
```

### ipairs(iter:Array)
Iterates over index-value pairs for tables, this only works for array types due to non-numeric keys being ignored as a whole. Additionally any `nil` values it can find, will also be ignored and will stop the iteration.

- `iter` - The table to iterate over.

Example:
```lua
function onCreate()
     local iter = {'a', 'c', 'b', nil, 'd'}
     for k,v in ipairs(iter) do
          debugPrint({k,v}) --> [1, a], [2, c], [b, 3]
     end
end
```

## Handling Errors
### error(message:String, ?level:Int = 1)
Throws an error message and terminates the running Lua file. It can also set the error position at the beginning of the message by using the `level` parameter.

> [!WARNING]
> _Calling this function won't work if it's inside of any callback templates._

- `message` - The error message to be generate.
- `level` - An optional parameter, The specified error position to throw, it is determined by a number. Passing level `1` means the error position is where the error function was called. Passing level `2` points the error to where the function that called the error was called, and so on. If you try to pass a level `0`, you will avoid adding error position information to the message; Default value: `1`.

Example:
```lua
error('A fatal error occured!')
```

### assert(condition:Dynamic, message:String)
Throw an error massage if the `condition` argument returns `false` or `nil`. If the assertion passes, it returns all values passed to it.

> [!WARNING]
> _Calling this function won't work if it's inside of any callback templates._

- `condition` - The specified condition for the function to throw an error.
- `message` - The error message to be generate.

Example:
```lua
function midrange(min, max)
     assert(min <= max, 'min argument has a higher value')
     return (min + max) / 2
end

debugPrint(median(34, 25)) --> min argument has a higher value!
```

### pcall(handle:Function, ?...args:Dynamic)
Calls a function and runs it in protected mode and catches the error and returns a status code. The function returns two values, the code status code which returns a `boolean`, if `true` the call succeeds without errors. And the error message generated if there is any errors found, if not returns the function returning value.

- `handle` - The given function to be handle in protected mode.
- `args` - An optional parameter, If the function is not anonymous, the argument(s) for the function to use. The argument is an infinite parameter.

Examples:
```lua
function radius()
     return cir / (2 * math.pi)
end

local radiusErrorBool, radiusErrorMessage = pcall(radius)
debugPrint(radiusErrorBool)    --> false
debugPrint(radiusErrorMessage) --> attempt to perform arithmetic on a nil value (global 'cir')
```
```lua
function radius(cir)
     return cir / (2 * math.pi)
end

local radiusErrorBool, radiusErrorMessage = pcall(test, true)
debugPrint(radiusErrorBool)    --> false
debugPrint(radiusErrorMessage) --> attempt to perform arithmetic on a boolean value (local 'cir')
```

### xpcall(handle:Function, error:Function, ?...args:Dynamic)
Works similar to the `pcall()` function except that you can set your own error message handler.

- `handle` - The given function to be handle in protected mode.
- `error` - The given function to use as an error handler, if it catches an error.
     - `message` - An optional sub-parameter, The error message that it generated.
- `args` - An optional parameter, If the function is not anonymous, the argument(s) for the function to use. The argument is an infinite parameter.

Example:
```lua
function radius()
     return cir / (2 * math.pi)
end

local radiusErrorBool, radiusErrorMessage = xpcall(radius, function(message)
     return message .. ' lol'
end, true)
debugPrint(radiusErrorBool)    --> false
debugPrint(radiusErrorMessage) --> attempt to perform arithmetic on a boolean value (local 'cir') lol
```

***

# Built-in Constants
### _G
The `_G` variable is special type of table where Lua keeps all its global variables, called the environment. This allows you manipulate this table as any other table. Such as iterating over elements like `defaultPlayerStrum` and `defaultOpponentStrum` variables, as shown below.

This variable is a bit broken, when you try to set a elements inside the `_G`. It would be saved across script meaning you can reuse this variable on other scripts. But in Psych Engine it doesn't work properly, there are alternatives to this you could use `setVar()` or `setOnLuas()` functions.

Examples:
```lua
function onCreate()
     for index = 0, 3 do
          debugPrint(_G['defaultPlayerStrumX' .. index]) --> 732, 844, 956, 1068
     end 
end
```

### _VERSION
This returns the current Lua version it uses; Returns: <kbd>5.1</kbd>. <!-- Joke -->