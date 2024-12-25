# Functions
### type(data:Dynamic):String
Checks the given data argument and returns the corresponding type of data, as a string.

- `data` - The given data argument to returns its type.

<details><summary><b>Returns:</b></summary>
<p>

- `string` - A sequence of characters containing any characters
- `number` - An arithmetic value, representing as an integer or floating-point.
- `boolean` - A binary value representing as `true` or `false`.
- `nil` - Nothingness or non-existence of a value.
- `table` - Data structuring mechanism; collection of values that it stores, array or dictionary.
- `function` - Sequence of code that are designed to perform a specific task
- `thread` - Coroutines, a line of execution with its own stack and its own instruction pointer.
- `userdata` - A raw memory area with no predefined operations.

</p>
</details>

Example:
```lua
debugPrint( type('') ) --> string
debugPrint( type(42) ) --> number
debugPrint( type({}) ) --> table
```

### tostring(data:Dynamic):String
Converts a given data argument, usually a number or boolean into a literal string.

- `data` - The given data argument to convert into a literal string.

Example:
```lua
debugPrint( type(tostring(4425)) ) --> string
debugPrint( type(tostring(true)) ) --> string
```

### tonumber(data:String, ?base:Int = 10):Float
Converts a given data argument, a string without non-digit characters into a number. Additionally can set the base of the given converted number.

- `data` - The given data string argument to convert into a number.
- `base` - An optional parameter, the specified [base](https://en.wikipedia.org/wiki/Radix) to interpret the number; Default value: `10`.

Examples:
```lua
debugPrint( type(tonumber('5323')) ) --> number
debugPrint( type(tonumber('1.25')) ) --> number
```
```lua
debugPrint( tonumber('32e2') )       --> 3200.0
debugPrint( tonumber('ff0000', 16) ) --> 16711680
```

### unpack(list:Array, ?min:Int = 1, ?max:Int):Any
Unpacks each elements within the given table array.

- `list` - The given table array to unpack its content.
- `min` - An optional parameter, the minimum index position range to select; Default value: `1`.
- `max` - An optional parameter, the maximum index position range to select.

Example:
```lua
local awesomeArray = {23, 72, 12, 83, 91}
debugPrint( unpack(awesomeArray) )       --> 23, 72, 12, 83, 91
debugPrint( unpack(awesomeArray, 3) )    --> 12, 83, 91
debugPrint( unpack(awesomeArray, 2, 4) ) --> 72, 12, 83
```

### select(index:Dynamic, ...data:Dynamic):Any
Selects the given range of multiple infinite arguments.

- `index` - The specified index position to start the range, the index position may differ. For positive numbers, start from the left to right; negative numbers, start from right to left; and hashtag character <kbd>#</kbd>, the length of the given data arguments.
- `data` - An infinite parameter, the given data arguments to select the range.

Example:
```lua
local chars = {}
for ascii = 65, 70 do -- starts from A to F
     table.insert(ascii, string.char(chars))
end

debugPrint( select(3,   unpack(chars)) ) --> C, D, E, F
debugPrint( select(-2,  unpack(chars)) ) --> E, F
debugPrint( select('#', unpack(chars)) ) --> 6
```

### load(code:String):Void
Loads a chunk of Lua code by using a string, returns as the compiled chunk as a function. The environment of the returned function is the global environment.

- `code` - The given chunk Lua code to compiled as a function.

Example:
```lua
debugPrint( load("return 23 % 5")() ) --> 3
debugPrint( load("return 'Hi'")()   ) --> Hi
```

### require(module:String):Void
Runs and loads the given Lua module, with the given path directory to find the designated module. Additionally, it controls whether the Lua module has been executed previously to prevent duplication of loading. If function has problem on loading or running the module, or it doesn't find the said module. Then it will signal an error, returns a table.

- `module` - The given module to run and load within a Lua script; starts outside the mods folder directory.

## Iterators
### pairs(iteration:Array):Any
Iterates the given table by key-value pairs, can be used for dictionaries and mixed (array and dictionary) tables. The keys are all preserved but returns as an unorganized sort.

- `iteration` - The given table to iterate over.

Example:
```lua
local iter = {a = true, b = true, c = false}
for k,v in pairs(iter) do
     debugPrint({k,v}) --> [c, false], [b, true], [a, true]
end
```

### ipairs(iteration:Array):Any
Iterates the given table by index-value pairs, can only be used for table arrays. Due to non-numeric keys being ignored as a whole. Additionally any `nil` values it can find, will also be ignored and will stop the iteration.

- `iteration` - The given table to iterate over.

Example:
```lua
local iter = {'a', 'c', 'b', nil, 'd'}
for k,v in ipairs(iter) do
     debugPrint({k,v}) --> [1, a], [2, c], [b, 3]
end
```

## Error Handling
### error(message:String, ?level:Int = 1):Void
Throws a custom error message and terminates the currently running Lua script. And can set its error position at the beginning of the mssage.

- `message` - The given custom error message to throw. 
- `level` - An optional parameter, the specified error position to throw. Passing level `1` means the error position is where the error function was called. Passing level `2` points the error to where the function was called. And passing level `0` will avoid adding the error position information to the error message; Default value: `1`.

Example:
```lua
error('A fatal error occured!')
```

### assert(condition:Bool, message:String):String
Throws a custom error message but it's determined from a specific condition within its parameter.

- `condition` - The specified condition in order to throw an error message.
- `message` - The given custom error message to throw.

Example:
```lua
local function areaCone(radius, height)
     assert(type(radius) ~= 'number', 'the \'radius\' argument not a number!')
     assert(type(height) ~= 'number', 'the \'height\' argument not a number!')

     return math.pi * radius * (radius + math.sqrt(height^2 + radius^2))
end 

debugPrint( areaCone(45, 'number thirty seven') ) --> the height argument not a number!
```

### pcall(handle:Function, ?...args:Dynamic):\<Boolean, Any\>
Calls a given function and runs it through protected mode to catch any errors it can find, returning it status. The said status returns two values, a boolean if the function succeeds without errors. And a string for any thrown error message, if found. If no errors was found it returns the function's given returning value.

- `handle` - The given function to handle in protected mode.
- `args` - An infinite optional parameter, the certain amount of arguments to passed from that function, if said argument exist.

Examples:
```lua
local function circumferenceCircle(radius)
     return radius / (2 * math.pi)
end

local circleErrorStatus, circleErrorMessage = pcall(circumferenceCircle, true)
debugPrint(circleErrorStatus)  --> false
debugPrint(circleErrorMessage) --> attempt to perform arithmetic on a boolean value (local 'radius')
```
```lua
local function circumferenceCircle(radius)
     return radius / (2 * math.pi)
end

local circleErrorStatus, circleErrorMessage = pcall(circumferenceCircle, 34)
debugPrint(circleErrorStatus)  --> true
debugPrint(circleErrorMessage) --> 5.4112680651244
```

### xpcall(handle:Function, error:Function, ?...args:Dynamic):\<Boolean, Any\>
Works exactly the same as the `pcall()` function, but allows you customize your own error handler.

- `handle` - The given function to handle in protected mode.
- `error` - The given function to act as the error handler
     - `message` - An optional subparameter, the returned error message, if it catches one.
- `args` - An infinite optional parameter, the certain amount of arguments to passed from that function, if said arguments exist.

Example:
```lua
local function circumferenceCircle(radius)
     return radius / (2 * math.pi)
end

local function epicErrorMessage(message)
     return message:gsub('%((.-)%)', '\'radius\' parameter')
end

local circleErrorStatus, circleErrorMessage = pcall(circumferenceCircle, 'awesome')
debugPrint(circleErrorStatus)  --> false
debugPrint(circleErrorMessage) --> attempt to perform arithmetic on a string value (radius parameter)
```

***

# Constants
### _G
The global environment variable, a special type of table where it keeps all the current global variables. Since it's a table manipulate it like any other tables in Lua. Something like iterating over global variables that contains a number to each of them, a common example are both the `defaultPlayerStrum` and `defaultOpponentStrum` variables, as shown below.

> [!WARNING]
> _The functionality of this variable is completely broken. Its main use is for global variables to be saved from multiple Lua scripts, allowing you to access them. Since it's broken they are alternative to this, just use these Global-on functions._

Example:
```lua
function onCreatePost()
     for positions = 0, 3 do
          debugPrint( _G['defaultPlayerStrumX'..tonumber(positions)] ) --> 732, 844, 956, 1068
     end
end
```

### _VERSION
The current version of Lua, current version <kbd>5.1</kbd>.