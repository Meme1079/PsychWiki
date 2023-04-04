# Introduction
Lua is a lightweight, high-level, multi-paradigm scripting language used in Psych Engine modding. Which is a better alternative to Haxe, the main language that Friday Night Funkin' uses. Becuase you have to manually download the source code, modify the specific Haxe file, and then compile it. As for Lua just insert a Lua into any script folders to modify something that's it. The current version of Lua that Haxe is using is (5.1).

To create your own Lua file I recommend you download [VSCode](https://code.visualstudio.com) it's available in Windows, Mac, and Linux. Now after you download VSCode open it, press [Command + N] this will create a untitled file. Click the hyperlink that says [Select a language] after that type or search lua on the Select language mode. Click Lua and boom you're done. If you want to save the Lua file press [Commans + S] choose the file path to be saved and click [Ok].

### Differences
Lua in Psych Engine is different compared to the original Lua. Mainly when coding the code should nested inside the Callback templates except for variables, functions, operators, and predefined functions these can work outside the Callback templates. Printing a value is also different instead of using `print()` you should use `debugPrint()`, it works the same as the `print()` function.

Example:
```lua
local stupidVar = 318983
function onCreate()
     debugPrint(stupidVar)
end
```

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
function hello()    -- a 'hello' function
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
Control Structures are a block code which analyzes values and decide whether to execute the code or not. Also i'm only mentioning the `for` loop statement and not `while`, `repeat` loop statements becuase no one ever uses these 2 loops.

### If Else Statements
These are a type of control structures that specifys whether or not to execute the block code. They are the most common control structures to use. There are only 3 if else statements the `if`, `else`, `elseif` statments.


#### If Statement
If statement checks if the condition of the statement is `true`. It's define with the `if` keyword and the specified condition to execute the code block followed by the `then` keyword.

Example:
```lua
local getDateWeekDay = os.date('*t').wday -- checks the current day of week
function onCreate()
     if getDateWeekDay == 6 then -- checks if the day is 'friday'
          debugPrint('it is friday my dudes time to get funky')
     end
end
```

#### Else Statement
Else statement checks if the condition of the statement fails then this function will be called. It's defined with `else` that's it nothing else <!-- Comedy genius --> to say about. This statement should be placed under the `if` or `elseif` statements, example shown below.

Example:
```lua
local getDateWeekDay = os.date('*t').wday -- checks the current day of week
function onCreate()
     if getDateWeekDay == 6 then -- checks if the day is 'friday'
          debugPrint('it is friday my dudes time to get funky')
     else                        -- checks if the day is not 'friday'
          debugPrint('it is not friday my dudes :(')
     end
end
```

#### ElseIf statement
ElseIf statement checks is an alternative condition for the `if` statement, if the `if` or another `elseif` condition fails then this statement will be called. It's define with the `elseif` keyword with the same syntax for the `if` statement.

Example:
```lua
local getDateWeekDay = os.date('*t').wday -- checks the current day of week
function onCreate()
     if getDateWeekDay == 2 then     -- checks if the day is 'monday'
          debugPrint('it is monday, i hate school')
     elseif getDateWeekDay == 4 then -- checks if the day is 'wednesday'
          debugPrint('it is wednesday my dudes')
     elseif getDateWeekDay == 6 then -- checks if the day is 'friday'
          debugPrint('it is friday my dudes time to get funky')
     end
end
```

### For Loop Statement
For loop statement allows you to loop a specific number of times. This loop is commonly used for `setPropertyFromGroup()` and `getPropertyFromGroup()` functions for note modification, modcharts, or something. And used for reading a table values or performing on numeric values. There are 2 types of loops Generic loop or Numeric Loop.

#### Numeric Loop
Numeric Loop are a type of loop that use numeric values to increment or to decrement the value. This loop is usually the most common loop to use for `setPropertyFromGroup()` and `getPropertyFromGroup()` functions. There are 3 attributes when declaring a Numeric loop `exp1`, `exp2`, and an optional `exp3` attributes. <!-- Don't ask why they're called 'exp' -->

- `exp1` - The local variable for the numeric loop with the minimum number value to start.
- `exp2` - The maximum number value of numeric loop to stop at.
- `exp3` - An optional attribute, Whether will be an increment `1` or decrement `-1` loop; Defualt value: `increment`.

Example:
```lua
function onCreate()
     for index = 0, 5, 1 do  -- Increment loop
          debugPrint(index)  -- will return '0, 1, 2, 3, 4, 5'
     end
     for index = 5, 0, -1 do -- Decrement loop
          debugPrint(index)  -- will return '5, 4, 3, 2, 1, 0'
     end
end

```

#### Generic Loop
Generic Loop are a type of loop that uses pair functions to read all the table values. This is just an alternative loop for reading every table values. There are 3 attributes when declaring a Generic loop `exp1`, `exp2`, and `pair` attributes.

- `exp1` - The key name of the table, you can name how you want; Example: `key`.
- `exp2` - The value name of the table, you can name how you want; Example: `value`.
- `pair` - The specified pair functions such as `pairs()` or `ipairs()`.

Example:
```lua
function onCreate()
     local tableThingy = {num1 = 231, num2 = 345, num3 = 234}
     for key, value in pairs(tableThingy) do
          debugPrint(key, value)  -- will return 'num1 = 231, num2 = 345, num3 = 234'
     end
end
```

### Return Statement
Return statement as the name suggests returns the results from the function. And stops the execution of the function. It must be relative at the end of the function or conditional statement.

Example:
```lua
function getMidpointNum(ope1, ope2)
     return (ope1 + ope2) / 2  -- returns the middle value between 'ope1' and 'ope2'
end 

function onCreate()
     debugPrint(add(9 + 10))   -- will return '9.5'
end
```

### Break Statement
Break statement stops the loop statements from looping. You can use this for specific conditions for the loop to ends. It must be relative at the end of the function or conditional statement.

Example:
```lua
function onCreate()
     for index = 0, 10 do
          debugPrint(index) -- will return '0, 1, 2, 3, 4, 5'

          if index == 10 / 2 then -- checks if the 'index' value is '5'
               break -- ends the loop
          end
     end 
end
```

### Do Statement <!-- Useless information but okay; I don't where to place this lol -->
Do statement has no specified conditions for the code block to execute. So it will just run perfectly fine, they are only serve for scoping variables or functions.

***

# Scope
Scope in programming determines whether the function or variable is available within the code block of the conditional statement or function. They can be set to `global` or `local` types, although they all start as `global` type by default. But it's recommended they should be set into a `local` type because Lua accesses them faster than `global` types.

- `global` - Makes the function or variable available anywhere at any scope.
- `local` - Makes the function or variable available only to that specific scope, if called outside the scope returns a `nil` value; Declared with the `local` keyword.

Syntaxes:
```lua
glo = 345          -- global variable
local loc = 232.2  -- local  variable

function myGFunc() end         -- global function
local function myLFunc() end   -- local  function
```

Example:
```lua
function onCreatePost()
     do       -- Do statement
          do  -- Nested Do statement (Don't over nest statements it's a bad habit)
               isAvailable = true      -- global
               local isUnfunny = false -- local
               local folders = {'homework', 'images', 'downloads'}
               debugPrint(folders[1]) -- will return 'homework'
               debugPrint(folders[2]) -- will return 'images'
          end
          getUserName = os.getenv("USERNAME")
          local fish = 'hate'     -- local keyword is used
          debugPrint(fish)        -- will return 'hate'
          debugPrint(folders[3])  -- will return 'downloads'
          debugPrint(getUserName) -- will return the username
     end
     debugPrint(fish)        -- will return 'nil'
     debugPrint(isAvailable) -- will return 'true'
     debugPrint(getUserName) -- will return the username
end
```

***

# Modules
Modules are a code library these contain mostly functions or variables. They can help you maintain a code-base and break your code into different Lua files. For functions or variables that you use them reguraly when coding.

To create your custom module make a seperate Lua file for your own module. You can placed the Lua file in any location and not outside the `Psych Engine` folder not to be confused with the `mod` folder. Name the Lua file to anything you want, so let's just say you named it `ModuleMath`. Inside the Lua file should have a `local` table variable with no values inside of it; Example: `local ModuleMath = {}`.

Before creating your own functions or variables the name should have the `local` table variable at the start and between them has a dot `.` character; Example: `ModuleMath.name`. At the end of Lua file should have `return` statement with the `local` table variable name, this is really important when making modules; Example `return ModuleMath`.

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

### require(moduleName:String)
Requires the module name and imports the functions or variables. To declare a `require` function either use the function itself or use it inside the value of the variable. This is the only few functions that you can add without the parenthesis `()` characters.

- `moduleName` - The location of the Lua script module file to be used; Starts outside the `mods` folder.

Syntaxes:
```lua
require 'mods/modules/ModuleMath'                     -- least use
local moduleName = require 'mods/modules/ModuleMath'  -- most use
```

To call the `require` function, get the specified module name to use; if it is contained inside a variable, get the variable name; if not get the module name. Add a dot `.` character followed by the function or variable name inside the Lua module file.

Example:
```lua
local math = require('mods/modules/ModuleMath') -- gets the module
function onCreatePost()
     debugPrint(math.round(3.7)) -- will return '4'
     debugPrint(math.round(3.2)) -- will return '3'
end
```

***

# Predefined Functions
### dofile(path:String)
Gets the `global` functions or variables on other Lua files.

- `path` -  The location of the Lua script module file to be used;

### type(value:Dynamic)
Gets the specific value type of the value. Can be used to check the value type iside the conditional statments; Return either: `string`, `boolean`, `number`, `table`, `function`.

- `value` - The value to be used.

### tostring(num:String)
Convers any number into a string to prevent errors.

- `num` - The real number to be converted.

Example: `'Cheese count: '..tostring(34)`, it will return `Cheese count: 34`.

### tonumber(num:Float)
Convers a number inside a string into a real number. If the value contains any characters other than digits, it will return `nil` value.

- `num` - The string number to be converted.

Example: `tonumber('34'..'23')`, it will return `3423`.

### pairs(tab:Table)
Returns every key-value pairs inside a table and is typically used in table dictionarys. It can return as an unorganized table sort; Not to be confused with `ipairs()` functions.

- `tab` - The table to be used.

Example:
```lua
local function read(tab) -- read through a table
     local results = ''
     for key, values in pairs(tab) do -- pair function
          results = results .. key..'\t'..values..'\n'
     end
     return results
end

function onCreate()
     local tableArry = {123, 567, 134}
     local tableDict = {a = 123, b = 567, c = 134}

     debugPrint(read(tableArry)) -- will return '123, 567, 123'
     debugPrint(read(tableDict)) -- will return 'c = 134, a = 123, b = 567'
end
```

### ipairs(tab:Table)
Returns every index-value pairs inside a table and is typically used in table arrays or with numeric keys within a table dictionary. If the table value has `nil` it will stop executing the loop there.

- `tab` - The table to be used.

Example:
```lua
local function read(tab) -- read through a table
     local results = ''
     for key, values in ipairs(tab) do -- ipair function
          results = results .. key..'\t'..values..'\n'
     end
     return results
end

function onCreate()
     local tableArry = {123, 567, 134}
     local tableDict = {a = 123, b = 567, c = 134}

     debugPrint(read(tableArry)) -- will return '123, 567, 123'
     debugPrint(read(tableDict)) -- will return 'nil' cuz it's a dictionary
end
```