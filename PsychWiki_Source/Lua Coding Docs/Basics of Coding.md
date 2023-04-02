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
local greet = 'Hello'  -- local greet variable
bye = 'goodbye'        -- global bye variable

function onCreate()    -- The start of lua script
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
Arrays are the default table syntax; each value within an Array must be separated by a comma `,` character. To read an Array, put a pair of brackets `[]` around the index position of a table. Lua uses 1-based index rather than 0-based index like other programming languages. In other words, the first index position always start at `1`.

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
Functions are a collection of code to peform a specific task. This is used the same functions multiple times to make the code reusable. Functions are defined with the `function` keyword followed by the name of your custom function. With the pair of parenthesis `()` characters. To call a function get the name of your custom function followed by a pair of parenthesis `()` characters.

Example:
```lua
function hello() -- a 'hello' function
     debugPrint('Hello Function')
end

function onCreate()
     hello()     -- calls the 'hello' function and will return 'Hello Function'
end
```

### Parameters
Parameters are a special type of variable declared inside the parenthesis `()` character. You can add more parameters by typing the name of parameter and each seperating them with a comma `,` character. They can add more functionality to the function. If any of the arguments are left blank then it will cause an error. So uhh double check when calling functions.

Example:
```lua
-- function created by Mayo78
function setPos(obj, pos) -- Concatenates setProperty x and y
     if pos[1] ~= nil then -- makes pos parameter acts like a table
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

You can also declare a infinite parameter `...` inside the arenthesis `()` character, just to let you know if you want it for some reason. But if there are non-infinite parameters declared it at the end of the parameter arrays.

Example:
```lua
function Array(...)
     local convert = {...} -- converts it into a table
     local result = {}
     for i = 1, #convert do -- alternative to read evey value of a table
          table.insert(result, convert[i]) -- inserts the value
     end
     return result -- returns the result
end

function onCreate()
     for k,v in pairs(Array(231, 234, 456)) do
          debugPrint(v) -- will return '231, 234, 456'
     end
end
```

***

# Scope
### Nesting
### Global
### Local

***

# Comments
Comments are used to explain the context of code and prevent the execution on a specific code; Lua will ignore them. Comments starts with a double minus `--` characters as the syntax for single-line comment. And for multi-line comment add double brackets `[[]]` characters.

Example:
```lua
-- Here's a single-line comment nothing special

--[[
     Here's a multi-line comment for really
     long unnecessary comments, also cheese.
]]
```

***

# Operators
Operators are unique symbols that are used to carry out operations on operands. For the conditional statements to use to determine if the value is `true` or `false` before executing the code block. They can be represented as Arithmetic, Relational, Logical, and Miscellaneous.

### Arithmetic
Arithmetic operators are mathematical operators used to perform calculations to numeric values.

- `+` - Addition
- `-` - Subtraction
- `*` - Multiplication
- `/` - Division
- `%` - [Modulus](https://www.calculatorsoup.com/calculators/math/modulo-calculator.php)
- `^` - Exponentiation
- `-` - Unary Negation

### Relational
Relational operators are used to compare multiple operands inside a condition in order for the code block to execute.

|Operators|Description|Example|
|---------|-----------|-------|
| `==` | Checks if the condition is <ins>equal to</ins> the right. | `a == b`, returns `false`. |
| `~=` | Checks if the condition is <ins>not equal to</ins> the right. | `a ~= b`, returns `true`. |
| `>` | Checks if the condition is <ins>greater than</ins> the right. | `2 > 1`, returns `true`. |
| `<` | Checks if the condition is <ins>lesser than</ins> the right. | `4 < 2`, returns `false`. |
| `>=` | Checks if the condition is <ins>greater or equal to</ins> the right. | `3 >= 3`, returns `true`. |
| `<=` | Checks if the condition is <ins>lesser or equal to</ins> the right. | `2 <= 23`, returns `false`. |

### Logical
Logical operators are used to combine multiple conditions and to specify on what conditions needs to be `true`.

|Operators|Description|Example|
|---------|-----------|-------|
| `and` | Combines multiple conditions together; will return `true`,<br> if <ins>all the statements</ins> are `true`. | `a == true and b == true`, returns `false` |
| `or` | Combines multiple conditions together; will return `true`,<br> if <ins>any of the statements</ins> are `true`. | `a == true or b == true`, returns `true` |
| `not` | Reverses the condition; if the value is equivalent to `false`,<br> then the operator will set it to `true`, and vice versa. | `not true`, retruns `false`. |

### Miscellaneous
Miscellaneous operators only features two operators the Length and Concatonate operators.

|Operators|Description|Example|
|---------|-----------|-------|
| `#` | Length operator, Checks the maximim length size of a `string` or `table`. | `#('sussy')`, returns `5`. |
| `..` | Concatonate operator, Merges multiple `string` together. | `'snow'..'ball'`, returns `snowball`. | 

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