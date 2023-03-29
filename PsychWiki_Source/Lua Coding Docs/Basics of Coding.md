# Introduction
### Differences

***

# Variables
Variables are an abstract manipulable storage space used for storing the variable's assigned value. It can be utilized at any location in the Lua file. The variable's value can be updated based on the condition or new value given by the variable.

### Declaring
To declare a variable, you must assign the variable's `scope`, `name`, and the provided `value`. The `scope` attribute is optional and specifies whether the variable will be `local` or `global` type; the `name` attribute relates to the variable's selected name with the equal `=` character after that; and the `value` attribute specifies the variable's default value.

If you wish to redeclare a variable, just do the same thing as before, but modify the variable's value to whatever you like.

Example:
```lua
-- Syntax: scope? name = value
local greet = 'Hello' -- local greet variable
bye = 'goodbye'       -- global bye variable

function onCreate() -- The start of lua script
     bye = 'bye bye'   -- changes the value
     debugPrint(greet) -- will print 'hello'
     debugPrint(bye)   -- will print 'bye bye'
end
```

Variables can have several values assigned to them, which should be separated by a comma `,` character. If there are more variables than values, the missing values will be set to `nil` value.

Example:
```lua
-- Syntax: scope? name1, name2, ... = value1, value2, ...
local a, b, c = 12, 14, 13 -- Complete 
local d, e, f = 12, 14     -- Incomplete Data Types

function onCreate() -- The start of lua script
     debugPrint(a, b, c) -- will print '12 14 13'
     debugPrint(d, e, f) -- will print '12 14 nil'
end
```

### Naming Variables Rules
- Variable names should start with a letter or underscore `_` any other letter or character is invalid.
- Variable names can not be named with numbers at the start only works at then middle or end.
- Variable names are not valid if it has a space.
- Lua is case-sensitive so `a` and `A` name are considered different variables.
- Variable names can't be named after a keyword or operators, list of keywords are shown below.

Reserved Keywords:
```lua
and       or       not       local     true       break    
false     nil      if        else      elseif     goto    
then      for      in        repeat    until      
while     do       return    end       function
```

Example:
```lua
-- Valid --

var = 'string1'        -- a variable
var1 = 'string2'       -- a variable with a number behind it
var_name = false       -- a variable with a underscore
_nameVar = true        -- a variable with a underscore at the start
var2 = 'corn'..'lover' -- a variable with the operators as a value

-- Invalid --

if = 'string3'         -- a variable named with a keyword
>= = false             -- a variable named with a operator
23 = 245               -- a variable named with a value
val 3 = nil            -- a variable with a space
4val = 245             -- a variable with the number at the start
```

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
local intNumber1 = 81        -- an int number
local floatNumber1 = 23.42   -- a float number

local floatAltNumber1 = 12.  -- a float number in whole numbers
local floatAltNumber2 = .56  -- a float number in decimal numbers
function onCreate()
     debugPrint(intNumber1)      -- will return '81'
     debugPrint(floatNumber1)    -- will return '23.42'

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

#### Array
Arrays are the default table syntax; each value within an Array must be separated by a comma `,` character. To read an Array, put a pair of brackets `[]` around the index position of a table. Like other programming languages, Lua uses 1-based index rather than 0-based index. In other words, the first index position is always start at `1`.

Example:
```lua
local tableArray = {'Correct', 'Incorrect', 'Maybe', 'Invalid'} -- a table with string values
function onCreate()
     debugPrint(tableArray[1]) -- will return 'Correct'
     debugPrint(tableArray[3]) -- will return 'Maybe'
end
```

#### Dictionary
Dictionaries are ordered by key-value pairs; each value in a Dictionary must be defined by a key, which is the value's name followed by an equal `=` character with the given value at the end. With the key-value pair separated by a comma `,` character. To read a dictionary, add a dot `.` character followed by the key name; Example: `tableName.keyName`. Or add a pair of brackets `[]` and quote `''` / `""` characters around the name of the key; Example: `tableName['keyName']` / `tableName["keyName"]`.

Example:
```lua
local tableDict1 = {isFatherless = false, hasTouchGrass = true}
local tableDict2 = {['air'] = 'Oxygen', ["food"] = 'potato', ["love"] = 'carbon monoxide'}
function onCreate()
     debugPrint(tableDict1.isFatherless)      -- will return 'false' (recommended syntax)
     debugPrint(tableDict1['hasTouchGrass'])  -- will return 'true'  (not recommended syntax)

     debugPrint(tableDict1.air)               -- will return 'Oxygen'
     debugPrint(tableDict2['food'])           -- will return 'potato'
     debugPrint(tableDict2["love"])           -- will return 'carbon monoxide'
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
### If Else Statements
#### If Statement
#### Else Statement
#### ElseIf Statement

### For Loop Statement

#### Generic Loop

- `exp1` -
- `exp2` -
- `exp3` -

Example:
```lua
for index = 0, 10, 1 do
end
for index = 10, 0, -1 do
end
```

#### Numeric Loop

Example:
```lua
for key, value in pairs(table) do
end
```

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