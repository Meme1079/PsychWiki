# Functions
### type(data:Dynamic)
Checks the returning arguement and determins the data type of the arguement; Could return: `number`, `string`, `boolean`, `table`, `function`, `thread`, and `userdata`.

- `data` - The value to return the type of.

Example:
```lua
debugPrint( type('') ) -- will print > 'string'
debugPrint( type(42) ) -- will print > 'number'
debugPrint( type({}) ) -- will print > 'table'
```

### tostring(arg:Dynamic)
Converts any arguement into a real string from the provided arguement; Returns a `nil` value if impossible to convert. 

- `arg` - The `number` or `boolean` value to be converted.

Example:
```lua
function onCreate()
     debugPrint( type(tostring(4425)) ) -- will print > 'string'
     debugPrint( type(tostring(true)) ) -- will print > 'string'
end
```

### tonumber(arg:String, ?base:Int = 10)
Converts a number value from a string into a real number from the provided arguement; Returns a `nil` value if impossible to convert.

- `arg` - The `number` value from a `string` to be converted.
- `base` - An optional parameter, The numerical base to convert from the `arg` arguement; Defualt value: `10`.

Example:
```lua
function onCreate()
     debugPrint( type(tonumber('5323')) ) -- will print > 'number'
     debugPrint( type(tonumber('1.25')) ) -- will print > 'number'
     debugPrint( tonumber('32e2') )       -- will print > 3200.0
     debugPrint( tonumber('ff0000', 16) ) -- will print > 16711680
end
```

### load(code:String)
Recieves the Lua code from the arguement and parses it into a real Lua code. The code that will be loaded is inside a function; Returns a `function`.

- `code` - The code from the `string` to be parse into real Lua code.

Example:
```lua
function onCreate()
     debugPrint( load('return 23 % 5')() ) -- will print 3
     debugPrint( load('return \'Hi\'')() ) -- will print 'Hi'
end
```

### unpack(list:Array, ?min:Int = 1, ?max:Int)
Returns the elements from the given table each separated. The range is determined from the `min` and `max` parameters.

- `list` - The table to be unpacked.
- `min` - An optional parameter, The minimum index value to select; Defualt value: `1`.
- `max` - An optional parameter, The maximum index value to select.

Example:
```lua
function onCreate()
     local array = {23, 72, 12, 83, 91}
     debugPrint( unpack(array) )       -- will print > 23, 72, 12, 83, 91
     debugPrint( unpack(array, 3) )    -- will print > 12, 83, 91
     debugPrint( unpack(array, 2, 4) ) -- will print > 72, 12, 83
end
```

### select(index:Int|String, ...args:Dynamic)
Returns the number of selected from the arguements, the selection range is determined by the `index` parameter.

- `index` - The index range for the arguements to be selected. If the result is negative, it will return to the end of the argument list. Or if want the full range just use this `#`.
- `args` - The arguement(s) to be passed and selected.

Example:
```lua
local charys = {}
for char = 65, 70 do
     table.insert(charys, string.char(char))
end

function onCreate()
     debugPrint( select(3,   unpack(charys)) ) -- will print > 'C', 'D', 'E', 'F'
     debugPrint( select(-2,  unpack(charys)) ) -- will print > 'E', 'F'
     debugPrint( select('#', unpack(charys)) ) -- will print > 6
end
```

### pairs(tab:Array)
### ipairs(tab:Array)
### next(tab:Array, lastKey:Int|String)
### assert(cond:Dynamic, ?message:String)
### error(message:String, ?level:Int = 1)
### pcall(func:Function, ...args:Dynamic)
### xpcall(func:Function, message:String, ...args:Dynamic)

***

# Properties
### _G
The Global Variable `_G` is special type of table dictionary that holds the global environment. This allows you to insert variables and functions across all of your Lua scripts.

But unfortunately doesn't work why? idk, there are alternatives to Global Variable `_G` such as `setVar()` and `setOnLuas()` functions. The only thing its used for getting multiple global variables from a loop and modify the values easily.

Example:
```lua
function onCreate()
     myGlobalVar0, myGlobalVar1 = 183, 231
     myGlobalVar2, myGlobalVar3 = 963, 263
     for nummys = 0, 3 do
          debugPrint(_G['myGlobalVar' .. nummys])         -- will print > '183, 231, 963, 263'
          debugPrint(_G['defaultPlayerStrumX' .. nummys]) -- will print > '732, 844, 956, 1068'
     end 
end
```