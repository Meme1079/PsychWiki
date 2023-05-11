# Introduction
Lua is a lightweight, high-level, multi-paradigm scripting language that is mainly used in Psych Engine modding. Which is a better alternative to Haxe, the main language that FNF is built-in. Because you have to manually download the source code, modify the specific Haxe file, and then compile it. As for Lua just insert a Lua into any script folders to modify something and pressed "Restart Song" that's it; that's how simple it is. The current version of Lua that Haxe is using is <kbd>5.1</kbd>.

### Creating
To create your own epic Lua file, copy and paste any <code>txt</code> file remove the contents inside of it. And replace the file format into <code>lua</code>; Example <code>test.lua</code>. Or even a better solution is to download any source-code editors like VSCode it's available in Windows, Mac, and Linux.

You can chose any other source-code editors if you don't like VSCode and that's fine. Anyways after you download VSCode or other epic source-code open it and press <kbd>Command + N</kbd> this will create a new file. Select the language type to use now select Lua becuase this is a Lua tutorial. Now add some code there if you're done press <kbd>Command + S</kbd> to save it and placed it somewhere inside the script(s) folder. Boom you've got yourself a Lua script it's that simple.

### Differences
Lua in Psych Engine is minor different becuase of HaxeFlixel the main engine that FNF uses. Mainly when coding the code should located inside any of the Callback Templates like <code>onCreate()</code>, note that <code>variables</code> and <code>functions</code> can be placed outside of them. Printing also different instead of the <code>print()</code> function it uses <code>debugPrint()</code> function. This will appear at the top-left of the screen and will fade out in a couple of seconds.

Example (Lua):
```lua
local vary1 = 'hamburgers are cool'
local vary2 = 'potatoes are also cool, i think'
     
print(vary1) -- will print 'hamburgers are cool'
print(vary2) -- will print 'potatoes are also cool, i think'
```

Example (Psych Engine):
```lua
local vary1 = 'hamburgers are cool'
local vary2 = 'potatoes are also cool, i think'
     
function onCreate()
     debugPrint(vary1) -- will print 'hamburgers are cool'
     debugPrint(vary2) -- will print 'potatoes are also cool, i think'
end
```

***

# Variables
Variables are an abstract manipulable storage space used for storing the variable's assigned value. It can be utilized at any location in the Lua file. The variable's value can be updated based on the condition or new value given by the variable.

### Declaring & Calling
To declare a variable assign the `scope` attribute of the variable this is optional to add, you can set to `global` or `local`; Default value: `global`. With the chosen `name` of your variable, name it what-ever you want. Followed by an equal <kbd>=</kbd> character with the specified `value` of the chosen variable.

Multi-line variables can also be declared, each name and value attributes of the variable must be separated with comma <kbd>,</kbd> character. They must be equal to each-other if not it will print a `nil` value or an error.

Syntax:
```lua
?scope name = value                -- single-line variables
?scope names, ... = values, ...    -- multi-line variables
```

To call a variable assign the chosen `name` of your variable to get the current `value` of the variable. If you want to set the variable `value` with a new one, assign the name, equal <kbd>=</kbd> character, and set the new value.

Example:
```lua
local foo = 0                      -- single-line
local bar1, bar2, bar3 = 1, 2, 3   -- multi-line
local bar4, bar5, bar6 = 4, 5      -- multi-line (missing)
function onCreate()
     debugPrint(foo)               -- will print '0'
     debugPrint(bar1, bar2, bar3)  -- will print '1 2 3'
     debugPrint(bar4, bar5, bar6)  -- will print '4 5 nil'

     foo = 12                           -- setting single variable
     bar4, bar5, bar6 = 543, 872, 923   -- setting multiple variables

     debugPrint(foo)               -- will print '12'
     debugPrint(bar4, bar5, bar6)  -- will print '543 872 923'
end
```

### Naming Variables Rules
- Variable names can have alphanumeric <code>Aa12</code> and underscore <kbd>_</kbd> characters. Note that digital characters can't be placed at the start of the name only at the middle or at the end.
- Variable names are case-sensitive so variable `a` and `A` are completely different to each-other.
- Variable names can't be named after `keywords`, `operators`, `control structures`, etc.

Reserved Keywords:
```lua
and       or       not       local     true       break    
false     nil      if        else      elseif     goto    
then      for      in        repeat    until      
while     do       return    end       function
```

Example (Valid):
```lua
var = 'string1'        -- a variable
var1 = 'string2'       -- a variable with a number behind it
var_name = false       -- a variable with a underscore
_nameVar = true        -- a variable with a underscore at the start
var2 = 'corn'..'lover' -- a variable with the operators as a value
```

Example (Invalid):
```lua
if = 'string3'         -- a variable named with a keyword
>= = false             -- a variable named with a operator
23 = 245               -- a variable named with a numeric value
val 3 = nil            -- a variable with a space
4val = 245             -- a variable with the number at the start
```

***

# Data Types
### Strings
Strings are a sequence of characters it can represent an alphabetical, digital, punctuation, etc. They are usually surrounded by single-quote <kbd>''</kbd> and double-quote <kbd>""</kbd> which are commonly used when creating a string. You can also surround it by double-brackets <kbd>[[]]</kbd>, this is only used for multi-line strings for longer texts.

Example:
```lua
local textString1 = 'Hello' -- a single quote
local textString2 = "World" -- a double quote, this is optional to use
local textString3 = [[Culturae organicae te
capiet ad loca quae numquam 
expectata non visere!]]     -- a double bracket, used this for longer strings

function onCreate()
     debugPrint(textString1) --   will print 'Hello'
     debugPrint(textString2) --   will print 'World'
     debugPrint(textString3) --[[ will print 
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
     debugPrint(intNumber1)      -- will print '81'
     debugPrint(floatNumber1)    -- will print '23.42'

     debugPrint(floatAltNumber1) -- will print '12.0'
     debugPrint(floatAltNumber2) -- will print '0.56'
end
```

### Booleans
Booleans, often shortened to Bools, are data types that can have two possible values: `true` or `false`. This is commonly used for conditional statements, which allow for different actions by modifying control flow based on whether the condition is `true` or `false`.

### Nil
Nil represents nothingness or non-existence of a value. This can be used for destroying a variable or table values if not used anymore. Or use conditional statements to check if the value is a `nil` or not.

### Tables
Tables are a data structuring mechanism in Lua the only one in fact. They are associative arrays, which means they hold a collection of key or value pairs. Tables can be used for to store multiple values of any kind except for `nil` values. To construct a table, use curly-braces <kbd>{}</kbd> characters rather than bracket <kbd>[]</kbd> characters like most programming languages use. Tables can be constructed as an Array or a Dictionary.

Example:
```lua
local tableGroup1 = {'string', true, nil} -- a table with string, boolean, and nil values
local tableGroup2 = {{45, 13}, {34, 76}}  -- a table inside with nested tables
function onCreate()
     debugPrint(tableGroup1[1])    -- will print 'string'
     debugPrint(tableGroup2[1][2]) -- will print '45'
end
```

#### Array
Arrays are the default table syntax; each value within an Array must be separated by a comma <kbd>,</kbd> character. To read an Array, put a pair of brackets <kbd>[]</kbd> around the index position of a table. Lua uses 1-based index rather than 0-based index like other programming languages. In other words, the first index position always start at `1`.

Example:
```lua
local tableArray = {'Correct', 'Incorrect', 'Maybe', 'Invalid'} -- a table with string values
function onCreate()
     debugPrint(tableArray[1]) -- will print 'Correct'
     debugPrint(tableArray[3]) -- will print 'Maybe'
end
```

#### Dictionary
Dictionaries are ordered by key-value pairs; each value in a Dictionary must be defined by a key, which is the value's name followed by an equal <kbd>=</kbd> character with the given value at the end. With the key-value pair separated by a comma <kbd>,</kbd> character. To read a dictionary, add a dot <kbd>.</kbd> character followed by the key name; Example: <code>tableName.keyName</code>. Or add a pair of brackets <kbd>[]</kbd> and quote <kbd>''</kbd> or <kbd>""</kbd> characters around the name of the key; Example: <code>tableName['keyName']</code> or <code>tableName["keyName"]</code>.

Example:
```lua
local tableDict1 = {isFatherless = false, hasTouchGrass = true}
local tableDict2 = {['air'] = 'Oxygen', ["food"] = 'potato', ["love"] = 'carbon monoxide'}
function onCreate()
     debugPrint(tableDict1.isFatherless)      -- will print 'false' (recommended syntax)
     debugPrint(tableDict1['hasTouchGrass'])  -- will print 'true'  (not recommended syntax)

     debugPrint(tableDict1.air)               -- will print 'Oxygen'
     debugPrint(tableDict2['food'])           -- will print 'potato'
     debugPrint(tableDict2["love"])           -- will print 'carbon monoxide'
end
```

***

# Function
Functions are a collection of code to perform a specific task. This is used the same functions multiple times to make the code reusable. Functions are defined with the `function` keyword followed by the name of your custom function. With the pair of parenthesis <kbd>()</kbd> characters. To call a function get the name of your custom function followed by a pair of parenthesis <kbd>()</kbd> characters.

Example:
```lua
function hello() -- a 'hello' function
     debugPrint('Hello Function')
end

function onCreate()
     hello()     -- calls the 'hello' function and will print 'Hello Function'
end
```

### Parameters
Parameters are a special type of variable declared inside the parenthesis <kbd>()</kbd> character. Their purpose is to add more functionality to the function when their is an <code>arguement</code> value. Which will be passed at the parameter that they're order in.

To add your own parameter just the any <code>name</code> you want like a <code>variable</code>. If you want to add more of them separate each of them  with a comma <kbd>,</kbd> character.

Example:
```lua
-- function created by Mayo78
function setPos(obj, pos)  -- concatenates setProperty x and y
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

You can also declare a infinite parameter <kbd>...</kbd> inside the parenthesis <kbd>()</kbd> character, just to let you know if you want it for some reason. But if there are non-infinite parameters declared it at the end of the parameter arrays.

Example:
```lua
function weirdMath(mathStuff, ...)
     local results = 0      -- the results
     local convert = {...}  -- converts the infinite parameter into a table
     for i = 1, #convert do -- alternative for loop through a table
         results = results + mathStuff + convert[i]
     end
     return results
end

function onCreate()
     local mainMath = ((5 % 6^2) / 2) * (5 % 23)
     debugPrint(weirdMath(mainMath, 3, 54, 64, 12, 94, 23, 56)) -- will print => '393.5'
end
```

***

# Comments
Comments are used to explain the context of code and prevent the execution on a specific code; Lua will just ignore them. Comments starts with a double minus <kbd>--</kbd> characters as the syntax for single-line comment. And for multi-line comment add double brackets <kbd>[[]]</kbd> characters.

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
| `==` | Checks if the condition is <ins>equal to</ins> the right. | `a == b`; Returns `false`. |
| `~=` | Checks if the condition is <ins>not equal to</ins> the right. | `a ~= b`; Returns `true`. |
| `>` | Checks if the condition is <ins>greater than</ins> the right. | `2 > 1`; Returns `true`. |
| `<` | Checks if the condition is <ins>lesser than</ins> the right. | `4 < 2`; Returns `false`. |
| `>=` | Checks if the condition is <ins>greater or equal to</ins> the right. | `3 >= 3`; Returns `true`. |
| `<=` | Checks if the condition is <ins>lesser or equal to</ins> the right. | `2 <= 23`; Returns `false`. |

### Logical
Logical operators are used to combine multiple conditions and to specify on what conditions needs to be `true`.

|Operators|Description|Example|
|---------|-----------|-------|
| `and` | Combines multiple conditions together; will print `true`,<br> if <ins>all the statements</ins> are `true`. | `a == true and b == true`; Returns `false` |
| `or` | Combines multiple conditions together; will print `true`,<br> if <ins>any of the statements</ins> are `true`. | `a == true or b == true`; Returns `true` |
| `not` | Reverses the condition; if the value is equivalent to `false`,<br> then the operator will set it into `true`, and vice versa. | `not true`; Returns `false`. |

### Miscellaneous
Miscellaneous operators only features two operators the Length and Concatenate operators.

|Operators|Description|Example|
|---------|-----------|-------|
| `#` | Length operator, Checks the maximum length size of a `string` or `table`. | `#('sussy')`; Returns `5`. |
| `..` |Concatenate operator, Merges multiple <code>string</code> or <code>numbers</code> together. | `'snow'..'ball'`; Returns `snowball`. | 

***

# Control Structures
Control Structures are a block code which analyzes values and decide whether to execute the code or not. Also i'm only mentioning the `for` loop statement and not `while`, `repeat` loop statements because no one ever uses these 2 loops.

### If Else Statements
These are a type of control structures that specifies whether or not to execute the block code. They are the most common control structures to use. There are only 3 if else statements the `if`, `else`, `elseif` statements.

#### If Statement
If statement checks if the condition of the statement is `true`. It's define with the `if` keyword and the specified condition to execute the code block followed by the `then` keyword.

Example:
```lua
local getDateWeekDay = os.date('*t').wday -- checks the current day of week
function onCreate()
     if getDateWeekDay == 6 then -- checks if the day is 'Friday'
          debugPrint('Day: Friday')
     end
end
```

#### Else Statement
Else statement checks if the condition of the statement fails then this function will be called. It's defined with `else` that's it nothing else <!-- Comedy genius --> to say about. This statement should be placed under the `if` or `elseif` statements, example shown below.

Example:
```lua
local getDateWeekDay = os.date('*t').wday -- checks the current day of week
function onCreate()
     if getDateWeekDay == 6 then -- checks if the day is 'Friday'
          debugPrint('Day: Friday')
     else                        -- checks if the day is not 'Friday'
          debugPrint('Not Friday')
     end
end
```

#### ElseIf statement
ElseIf statement checks is an alternative condition for the `if` statement, if the `if` or another `elseif` condition fails then this statement will be called. It's define with the `elseif` keyword with the same syntax for the `if` statement.

Example:
```lua
local getDateWeekDay = os.date('*t').wday -- checks the current day of week
function onCreate()
     if getDateWeekDay == 2 then     -- checks if the day is 'Monday'
          debugPrint('Day: Monday')
     elseif getDateWeekDay == 4 then -- checks if the day is 'Wednesday'
          debugPrint('Day: Wednesday')
     elseif getDateWeekDay == 6 then -- checks if the day is 'Friday'
          debugPrint('Day: Friday')
     end
end
```

### For Loop Statement
For loop statement allows you to loop a specific number of times. This loop is commonly used for `setPropertyFromGroup()` and `getPropertyFromGroup()` functions for note modification, modcharts, or something. And used for reading a table values or performing on numeric values. There are 2 types of loops Generic loop or Numeric Loop.

#### Numeric Loop
Numeric Loop are a type of loop that use numeric values to increment or to decrement the value. This loop is usually the most common loop to use for `setPropertyFromGroup()` and `getPropertyFromGroup()` functions. There are 3 attributes when declaring a Numeric loop `exp1`, `exp2`, and an optional `exp3` attributes. <!-- Don't ask why they're called 'exp' -->

- `exp1` - The local variable for the numeric loop with the minimum number value to start.
- `exp2` - The maximum number value of numeric loop to stop at.
- `exp3` - An optional attribute, How much the value will be incremented `1` or decremented `-1`; Default value: `1`.

Example:
```lua
function onCreate()
     for index = 0, 5, 1 do  -- Increment loop
          debugPrint(index)  -- will print '0, 1, 2, 3, 4, 5'
     end
     for index = 5, 0, -1 do -- Decrement loop
          debugPrint(index)  -- will print '5, 4, 3, 2, 1, 0'
     end

     for index = 0, 300, 50 do -- Increment Loop with each value incremented by 50 
          debugPrint(index)    -- will print '0, 50, 100, 150, 200, 250, 300'
     end
end
```

#### Generic Loop
Generic Loop are a type of loop that commonly uses pair functions to read all the table values. This is just an alternative loop for reading every table values. There are 3 attributes when declaring a Generic loop `exp1`, `exp2`, and `iterate` attributes.

- `exp1` - The key name of the table, you can name how you want; Example: `key`.
- `exp2` - The value name of the table, you can name how you want; Example: `value`.
- `iterate` - The values to iterate from the loop can be either the pair functions or other.

Example:
```lua
function onCreate()
     local tableThingy = {num1 = 231, num2 = 345, num3 = 234}
     for key, value in pairs(tableThingy) do
          debugPrint(key, value)  -- will print 'num1 = 231, num2 = 345, num3 = 234'
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
     debugPrint(getMidpointNum(9 + 10))   -- will print '9.5'
end
```

### Break Statement
Break statement stops the loop statements from looping. You can use this for specific conditions for the loop to end. It must be relative at the end of the function or conditional statement.

Example:
```lua
function onCreate()
     for index = 0, 10 do
          debugPrint(index) -- will print '0, 1, 2, 3, 4, 5'

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
Scope in programming determines whether a variable or function can be accessible outside that code block. They can be determine by either setting them into <code>global</code> or <code>local</code> scope. Declare them behind the <code>name</code> of the variable or <code>function</code> keyword for functions.

Global scope are the most common and the defualt scope for variables and functions. They can be called anywhere inside the Lua script or outside the Lua script with functions. Local scope are more faster to call than Global scope, they can be only call inside the specific scope of the code block.

Example:
```lua
function onCreate()
     do   -- do block
          myGlobalVar = false      -- Global
          debugPrint(myGlobalVar)  -- will print 'false'
     end
     do   -- do block
          local myLocalVar = true  -- Local
          debugPrint(myLocalVar)   -- will print 'true'
     end
     
     debugPrint(myGlobalVar) -- will print 'false'
     debugPrint(myLocalVar)  -- will print 'nil'
end
```

***

# Modules
Modules are a code library these mostly contain functions or variables. They can help you maintain a code-base and break your code into different Lua files. If you're using them frequently when coding your weird Lua scripts.

### Creating
To create your own custom module make a separate Lua script and placed the location of the script. Let's just say you placed them inside <code>mods/scripts/modules</code> folder and you named it <code>myGamingModules.lua</code>. Now inside of it declare a local table variable with the exact name of the Lua script module with no value(s) inside of it; Example: <code>local myGamingModules = {}</code>.

Before you declare your functions or variables each name should have the <code>local</code> table variable name followed by the dot <kbd>.</kbd> character. And at the end of the Lua script module should have the <code>return</code> statement on the <code>local</code> table variable name to export the modules to other Lua script; Example: <code>return myGamingModules</code>. (I Think)

> **Warning**: _DO NOT DECLARE `LOCAL` FUNCTIONS OR VARIABLES INSIDE THE MODULES BECUASE IT WILL NOT EXPORT THEM AND MIGHT CAUSE AN ERROR, IT MUST BE A `GLOBAL` ONE OKAY!?_

Example:
```lua
local myGamingModules = {}
     
myGamingModules.red   = 'ff0000'
myGamingModules.green = '00ff00'
myGamingModules.blue  = '0000ff'
     
function myGamingModules.switch(case, statement) -- goofy ahh switch-case statement
     if statement[case] ~= nil or not statement["default"] then
          return statement[case]()
     else
          return statement["default"]()
     end
end
     
function myGamingModules.setPos(obj, pos) -- Concatenates setProperty x and y
     if pos[1] ~= nil then                -- makes pos parameter acts like a table
          setProperty(obj..'.x', pos[1])
     end
     if pos[2] ~= nil then
          setProperty(obj..'.y', pos[2]) 
     end
end
     
return myGamingModules
```

### require(moduleName:String)
Requires the module name and <ins>imports the functions or variables</ins>. To declare the <code>require</code> function either use the <ins>function itself or use it inside the value of the variable to change the name of it</ins>. This is the only few functions that you can <ins>add without the parenthesis</ins> <kbd>()</kbd> character that I only trust.

- `moduleName` - The location of the Lua script module file to be used; Starts outside the <code>mods</code> folder.

Syntaxes:
```lua
require 'mods/scripts/modules/myGamingModules'                     -- uses the default name
local moduleName = require 'mods/scripts/modules/myGamingModules'  -- uses a custom name
```

To call the <code>require</code> function, get the specified module name to use; if it's contained inside a variable, <ins>get the variable name if not get the module name</ins>. Add a dot <kbd>.</kbd> character followed by the <ins>function or variable name inside the Lua module file</ins>.

Example:
```lua
local moduleName = require('mods/scripts/modules/myGamingModules') -- gets the module
function onCreatePost()
     moduleName.setPos('boyfriend', {500, 1200}) -- sets the boyfriend positions
     
     debugPrint(moduleName.red)   -- will print 'ff0000'
     debugPrint(moduleName.green) -- will print '00ff00'
     debugPrint(moduleName.blue)  -- will print '0000ff'
end
```

***

# Predefined Functions/Variables
### type(value:Dynamic)
Gets the <ins>specific value type of the argument</ins>. Can be used to check the value type inside the conditional statements; Returns either: <code>string</code>, <code>boolean</code>, <code>number</code>, <code>table</code>, <code>function</code>.

- <code>value</code> - The argument value to be check.

### tostring(numboo:Dynamic)
Converts any <ins>number or booleans</ins> into a real <code>string</code> value.

- <code>numboo</code> - The specified value to be converted.

### tonumber(num:String)
Converts any <ins>number inside of a string</ins> into a real number.

- <code>num</code> - The number to be converted.

### load(chunk:String)
Converts the code inside the string into real Lua code; Returns a <code>function</code>.

- <code>chunk</code> - The code to be converted.

Example:
```lua
function onCreate()
     local loadChunk1 = load('return 4 * 6')()
     local loadChunk2 = load('return 9 / 4')()

     debugPrint(loadChunk1) -- will print '24'
     debugPrint(loadChunk2) -- will print '2.25'
end
```

### dofile(path:String)
Imports <ins>any <code>global</code> variables or functions</ins> on other Lua files.

- <code>path</code> - The specified location of the Lua file to be used.

Example: _(Path: <code>PsychEngine/mods/scripts/modules/scriptFile.lua</code>)_
```lua
local myVar0 = nil  -- THIS WILL NOT WORK IF IT'S LOCAL!!!!!
myVar1 = 163        -- will work
myVar2 = true       -- will also work
```

Example: _(Path: <code>PsychEngine/mods/scripts/myGamingFile.lua</code>)_
```lua
dofile('PsychEngine/mods/scripts/modules/scriptFile.lua')
function onCreate()
     debugPrint(myVar0)  -- will print 'nil'
     debugPrint(myVar1)  -- will print '163'
     debugPrint(myVar2)  -- will print 'true'
end
```

### pairs(tab:Table)
Returns every <ins>key-value pairs</ins> inside a table and is <ins>typically used in table dictionaries</ins>. It can return as an <ins>unorganized table sort</ins>; Not to be confused with <code>ipairs()</code> functions.

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
Returns every <ins>index-value pairs</ins> inside a table and is <ins>typically used in table arrays or with numeric keys within a table dictionary</ins>. If the table value has <code>nil</code> it will <ins>stop executing the loop there</ins>.

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
     
     debugPrint(read(tableArry)) -- will print '123, 567, 123'
     debugPrint(read(tableDict)) -- will print 'c = 134, a = 123, b = 567'
end
```

***

### _G
The Global Variable is a special type of variable specifically a table dictionary. That gets every <code>global</code> variable and are saved inside the variable, it's defined with the <code>_G</code> keyword. Be careful when calling it because it can cause a crash. Changing its value does not affect any environment, nor vice versa.

You can use this for getting multiple global variables from a loop and modify the values easily. The original intended purpose of the global variable is get other global variables from other scripts. But it's broken when using it for some reason.

Example:
```lua
function onCreate()
     myGlobalVar0, myGlobalVar1 = 183, 231
     myGlobalVar2, myGlobalVar3 = 963, 263
     for nummys = 0, 3 do
          debugPrint(_G['myGlobalVar' .. nummys])         -- will print '183, 231, 963, 263'
          debugPrint(_G['defaultPlayerStrumX' .. nummys]) -- will print '732, 844, 956, 1068'
     end 
end
```