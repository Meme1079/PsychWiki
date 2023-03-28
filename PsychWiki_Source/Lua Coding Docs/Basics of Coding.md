# Introduction
### Differences

***

# Variables
### Declaring
### Naming Variables Rules

***

# Data Types
### Strings
Strings are a sequence of characters it can represent an alphabetical, digital, punctuation, etc. They are usually surrounded by single-quote `''` and double-quote `""` which are commonly used when creating a string. You can also surround it by double-brackets `[[]]`, this is only used for multi-line strings for longer texts.

Example:
```lua
local textString1 = 'Hello' -- a single quote
local textString2 = "World" -- a double quote, this is optional to use
local textString3 = [[Culturae organicae te
capiet ad loca quae numquam 
expectata non visere!]]     -- a double bracket, used this for longer strings

function onCreate()
     debugPrint(textString1) --   will return 'Hello'
     debugPrint(textString2) --   will return 'World'
     debugPrint(textString3) --[[ will return 
     'Culturae organicae te capiet ad loca quae numquam 
     expectata non visere!' --]]
end
```

### Numbers
Numbers are arithmetic values that represent the quantity or amount of something. It can have positive or negative values, and numbers can be expressed as Float or Int; Float numbers support decimal numbers, whilst Int numbers only uses whole numbers.

Example:
```lua
local intNumber1 = 81 -- an int number
local floatNumber1 = 23.42 -- a float number

local floatAltNumber1 = 12. -- a float number in whole numbers
local floatAltNumber2 = .56 -- a float number in decimal numbers
function onCreate()
     debugPrint(intNumber1) -- will return '81'
     debugPrint(floatNumber1) -- will return '23.42'

     debugPrint(floatAltNumber1) -- will return '12.0'
     debugPrint(floatAltNumber2) -- will return '0.56'
end
```

### Booleans
Booleans, often shortened to Bools, are data types that can have two possible values: `true` or `false`. This is commonly used for conditional statements, which allow for different actions by modifying control flow based on whether the condition is `true` or `false`.

### Nil
Nil represents nothingness or non-existence of a value. This can be used for destroying a variable or table values if not used anymore. Or use conditional statements to check if the value is a `nil` or not.

### Tables
Tables are a data structuring mechanism in Lua the only one in fact. They are associative arrays, which means they hold a collection of key or value pairs. Tables can be used for to store multiple values of any kind except for `nil` values. To construct a table, use curly-braces `{}` characters rather than bracket `[]` characters like most programming languages use. Tables can be structed as an Array or a Dictionary.

Example:
```lua
local tableGroup1 = {'string', true, nil} -- a table with string, boolean, and nil values
local tableGroup2 = {{45, 13}, {34, 76}}  -- a table inside with nested tables
function onCreate()
     debugPrint(tableGroup1[1])    -- will return 'string'
     debugPrint(tableGroup2[1][2]) -- will return '45'
end
```

Arrays are the default table syntax; each value within an Array must be separated by a comma `,` character. To read an Array, put a pair of brackets `[]` around the index position of a table. Like other programming languages, Lua uses 1-based index rather than 0-based index. In other words, the first index position is always start at `1`.

Example:
```lua
local tableArray = {'Correct', 'Incorrect', 'Maybe', 'Invalid'} -- a table with string values
function onCreate()
     debugPrint(tableArray[1]) -- will return 'Correct'
     debugPrint(tableArray[3]) -- will return 'Maybe'
end
```

Dictionaries are ordered by key-value pairs; each value in a Dictionary must be defined by a key, which is the value's name followed by an equal `=` character with the given value at the end. With the key-value pair separated by a comma `,` character. To read a dictionary, add a dot `.` character followed by the key name; Syntax: `tableName.keyName`. Or add a pair of brackets `[]` and quote `''` / `""` characters around the name of the key; Syntax: `tableName['keyName']` / `tableName["keyName"]`.

Example:
```lua
local tableDict1 = {isFatherless = false, hasTouchGrass = true}
local tableDict2 = {['air'] = 'Oxygen', ["food"] = 'potato', ["love"] = 'carbon monoxide'}
function onCreate()
     debugPrint(tableDict1.isFatherless)      -- will return 'false' (recommended syntax)
     debugPrint(tableDict1['hasTouchGrass']) -- will return 'true'  (not recommended syntax)

     debugPrint(tableDict1.air)      -- will return 'Oxygen'
     debugPrint(tableDict2['food']) -- will return 'potato'
     debugPrint(tableDict2["love"]) -- will return 'carbon monoxide'
end
```

***

# Function

Example:
```lua
function myFunc()
     debugPrint('Hello my function!')
end

function onCreate()
     myFunc()
end
```
### Parameters

Example:
```lua
-- function created by Mayo78
function setPos(obj, pos) -- Concatenates setProperty x and y
     if pos[1] ~= nil then
          setProperty(obj..'.x', pos[1])
     end
     if pos[2] ~= nil then
          setProperty(obj..'.y', pos[2]) 
     end
end

function onCreatePost()
     setPos('boyfriend', {100, 500}) -- Changes the position to x = 100 and y = 500
end
```

Example:
```lua
function sumAll(...)
     local toTable = {...} -- converts the infinite parameter into a table
     local sumNum = 0
     for k,v in pairs(toTable) do
          sumNum = sumNum + v
     end
     return sumNum
end

function onCreate()
     debugPrint(sumAll(34, 42, 12, 78, 33, 12))
end
```
***

# Scope
### Nesting
### Global
### Local

***

# Comments

***

# Operators
### Arithmetic
### Relational
### Logical
### Miscellaneous

***

# Control Structures
### If Statements
### For Loop Statement
### Return Statement
### Break Statement

***

# Modules

Example:
```lua
local ModuleMath = {}

function ModuleMath.type(num)
     local num = tostring(num)
     if num:match('%d%.%d') then return 'float'
     else return 'int'
     end
end

function ModuleMath.round(num, dp) -- i stole this
     local mult = 10^(dp or 0);
     return math.floor(num * mult + 0.5)/mult;
end

return ModuleMath
```
```lua
local math = require('mods/modules/ModuleMath')
function onCreatePost()
     math.round()
end
```

***

# Predefined Functions
### dofile(path:String)
### pairs(tab:Table)
### ipairs(tab:Table)
### tonumber(num:Float)
### tostring(num:String)
### type(dataType:Dynamic)
### require(module:String)