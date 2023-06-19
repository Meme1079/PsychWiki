# Introduction
Lua is a lightweight, high-level, dynamically typed, multi-paradigm scripting language that is mainly used in Psych Engine. This allows you execute Lua code without compiling the game over and over again. And its a simple and easy scripting language that an 8 year old can understand easily. The only cons that Lua has are, global scopes are always in defualt, limited error handling, limited pattern matching, no unicode support, no defualt parameter values just to name a few. The current version of Lua that Psych Engine is <kbd>5.1</kbd>.

### Creating
To create your own epic Lua file, copy and paste any `txt` file remove the contents inside of it. And replace the file format into `lua`; Example `test.lua`. Or even a better solution is to download any source-code editors like VSCode it's available in Windows, Mac, and Linux.

You can chose any other source-code editors if you don't like VSCode and that's fine. Anyways after you download VSCode or other epic source-code open it and press <kbd>Command + N</kbd> this will create a new file. Select the language type to use now select Lua becuase this is a Lua tutorial. Now add some code there if you're done press <kbd>Command + S</kbd> to save it and placed it somewhere inside the script(s) folder. Boom you've got yourself a Lua script it's that simple.

### Differences
Lua in Psych Engine has some minor difference becuase of HaxeFlixel the main engine that Psych Engine uses. Mainly when coding the code that you made should be located inside any of the Callback Templates which are special functions that modify the game like `onCreate()`, `onUpdate()`, `onEvent()`, etc. Note that variables, functions, and built-in Lua functions can be declared outside of any Callback Templates.

Printing is also different instead of using the `print()` function it's replaced by `debugPrint()` function. The text from the function will appear at the top-left of the screen and will fade out in a couple of seconds.

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
Variables are an abstract manipulable containers for storing data values they can be used throughout the Lua file. The data from the variable can be updated based on assigning a new value from it.

### Declaring
To declare a variable assign the specified `type` of the variable, it could be a `global` type by adding nothing or a `local` type by declaring with the `local` keyword before the variable `name`. After you determine the variable type add the `name` of the variable, name it what-ever you want but there are rules when naming variables. Followed by an equal <kbd>=</kbd> character to assign the specified `value` of the variable.

Example:
```lua
foo = true
bar = false
function onCreate()
     debugPrint(foo) -- will print 'true'
     debugPrint(bar) -- will print 'false'
end
```

You can also assign multiple variables in one line. To do this each `name` and `value` of a variable must be separated by comma <kbd>,</kbd> character. The `name` and `value` should be equal to each-other if not it will return a `nil` value or an error.

Example:
```lua
bar1, bar2, bar3 = 1, 2, 3   -- multi-line
bar4, bar5, bar6 = 4, 5      -- multi-line (missing)
function onCreate()
     debugPrint(bar1, bar2, bar3)  -- will print '1 2 3'
     debugPrint(bar4, bar5, bar6)  -- will print '4 5 nil'
end
```

### Naming Rules
- Variable names can only have alphanumeric `Ab12` and underscore <kbd>_</kbd> characters.
- Variable names cannot have numbers at the start of the name.
- Variable names are case-sensative so variable `a` and `A` are completely different to each-other.
- Variable names are recommended to have descriptive name like (`health`, `misses`, `alpha`) to make the code more readable.
- Variable names cannot be named after Lua keywords.

Reserved Lua Keywords:
```lua
and       or       not       local     true       break    
false     nil      if        else      elseif     goto    
then      for      in        repeat    until      self
while     do       return    end       function
```

Example (Valid):
```lua
varname   = 'Hi'   -- a variable
varName   = 'Hi'   -- a variable with a capitalize letter at the start
var_name  = 'Hi'   -- a variable with an underscore '_' character
_var_name = 'Hi'   -- a variable with an underscore '_' character at the start 
VARNAME   = 'Hi'   -- a variable that is all capitalize letters
varname2  = 'Hi'   -- a variable with a number
```

Example (Invalid):
```lua
1varName = 'Error' -- a variable with a number at the start
var-name = 'Error' -- a variable with a minus '-' character
var name = 'Error' -- a variable with a space ' ' character
var$name = 'Error' -- a variable with a special '$' character
```

### Types
They are two types of variables you can use that I mentioned before `Global` or `Local` variables. `Global` variables allows you to call them outside a Callback Templates or block, at any time throughout the program. But it's only recommended if you're getting a variable on another Callback Templates or block for data checking or something.

Example:
```lua
function onCreate()
     globalTextTag = 'myText' -- global variable

     makeLuaText(globalTextTag, 'This is a dumb text!', nil, 0, 0) -- initialize the text
     setTextSize(globalTextTag, 30)  -- sets the text size
     addLuaText(globalTextTag)       -- adds the text in the game
end

function onBeatHit() -- checks every beat hit
     if curBeat == 5 then -- checks if the 'curBeat' is equal to '5'
          setProperty(globalTextTag..'.alpha', 0.5) -- sets the text opacity into '0.5'
     end
end
```

`Local` variables can only be called within a function or block; if you attempted to call them outside it will return a `nil` value becuase there only local within that function or block. They're more faster to call becuase they're integrated into the environment in which they are created.

Example:
```lua
function onCreatePost()
     local localOpacity = 0
     setProperty('camHUD.alpha', localOpacity) -- sets the camera HUD elements opacity into '0'
end

function onSongStart()
     debugPrint(localOpacity) -- will print 'nil'
     doTweenAlpha('HUDTween', 'camHUD', 1, 3, 'linear') -- will tween the camera HUD elements to '1'
end
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

#### Escape Characters
Escape characters are special characters used within a string. They are an alternate interpretation of the characters in the following character sequence. It can be interpreted as a single <kbd>''</kbd>, double <kbd>""</kbd> quotes, or backslash <kbd>\\</kbd> character, they are constructed by backslash <kbd>\\</kbd> character with the specified character to useafter that; Example: <kbd>\\'</kbd>. And there is a reason for their existence, it's to avoid an error from occurring.

So, lets assume you constructed a string that is surrounded by double-quote <kbd>""</kbd> characters and you want to add a double-quote inside the string, so you inserted the double-quote <kbd>""</kbd> and itmresulted in an error. Because Lua thinks the string would finish there due to the inserted double-quote <kbd>""</kbd> character, it created an error. As a result, escape characters exist to solve this issue.

Example:
```lua
function onCreate()
     local textString1 = 'i can smell the "bitch" on you!!' 
     local textString2 = "that's racist i feel like"

     debugPrint(textString1) -- will print 'i can smell the "bitch" on you!!'
     debugPrint(textString2) -- will print 'that's racist i feel like'

     local textString3 = 'Don\'t press \'Alt + F4\'' -- single quote
     local textString4 = "dead \"(in a cool way)\""  -- double quote
     local textString5 = 'C:\\Windows\\System32'     -- backslash

     debugPrint(textString3) -- will print 'Don't press 'Alt + F4''
     debugPrint(textString4) -- will print "dead "(in a cool way)""
     debugPrint(textString5) -- will print 'C:\Windows\System32'
end
```

- `\'` - Single-quote Character
- `\"` - Double-quote Character
- `\\` - Backslash Character
- `\n` - New Line
- `\r` - Carriage Return
- `\t` - Horizontal Tab
- `\v` - Vertical tab 

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
Tables are a data structuring mechanism in Lua the only one in fact. That can store multiple types values like `strings`, `numbers`, `booleans`, etc; except for `nil` values. To construct a table, use curly-braces <kbd>{}</kbd> characters rather than bracket <kbd>[]</kbd> characters like most programming languages use; each value inside a Table must be separated by a comma <kbd>,</kbd> character. Tables can be constructed as an Array or a Dictionary.

> **Warning**: _Lua uses 1-based index rather than 0-based index like other programming languages. In other words, the first index position always start at `1`._

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
Arrays are constructed in an ordered indexes starting from `1`. To read an Array, get the variable name followed by a pair of brackets <kbd>[]</kbd> with the provided index number of a table inside the brackets. To obtain the value from the table values.

Example:
```lua
local tableArray = {'Correct', 'Incorrect', 'Maybe', 'Invalid'} -- a table with string values
function onCreate()
     debugPrint(tableArray)    -- will print '['Correct', 'Incorrect', 'Maybe', 'Invalid']'
     debugPrint(tableArray[1]) -- will print 'Correct'
     debugPrint(tableArray[3]) -- will print 'Maybe'
end
```

#### Dictionary
Dictionaries are constructed in an unordered key-value pairs. To construct a Dictionary just define the `key` which is the value's name followed by an equal <kbd>=</kbd> character with the given `value` at the end. 

To read a Dictionary get the variable name followed by a dot <kbd>.</kbd> character with the `key` name to get the value; Example: `tableVar.key`. Or add a pair of brackets <kbd>[]</kbd> with the `key` name inside of it that is quoted by single <kbd>''</kbd> or double <kbd>""</kbd> characters like a `string`; Example: `tableVar.['key']` or `tableVar.["key"]`.

Example:
```lua
local tableDict1 = {isFatherless = false, hasTouchGrass = true}
local tableDict2 = {['air'] = 'Oxygen', ["food"] = 'potato', ["love"] = 'carbon monoxide'}
function onCreate()
     debugPrint(tableDict1)                   -- will print '{isFatherless => false, hasTouchGrass => true}'
     debugPrint(tableDict1.isFatherless)      -- will print 'false' (recommended syntax)
     debugPrint(tableDict1['hasTouchGrass'])  -- will print 'true'  (alternative syntax)

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
Parameters are a special type of variable declared inside the parenthesis <kbd>()</kbd> character. Their purpose is to add more functionality to the function when their is an `arguement` value. Which will be passed at the parameter that they're order in.

To add your own parameter just the any `name` you want like a `variable`. If you want to add more of them separate each of them  with a comma <kbd>,</kbd> character.

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
     debugPrint(weirdMath(mainMath, 3, 54, 64, 12, 94, 23, 56)) -- will print '393.5'
end
```

***

# Comments
Comments are used to explain the context of code and prevent the execution on a specific code; Lua will just ignore them. Comments starts with a double minus <kbd>--</kbd> characters as the syntax for single-line comment. For multi-line comments should have double brackets <kbd>[[]]</kbd> characters.

You can also nest multi-line comments just add an equal <kbd>=</kbd> character between the double brackets <kbd>[[]]</kbd> characters of the comment; Example: `--[=[]=]`. The amount of equal <kbd>=</kbd> character determines how many levels of nesting will be created.

Example:
```lua
-- Here's a single-line comment nothing special

--[[
     Here's a multi-line comment for really
     long unnecessary comments, also hi.
]]

--[=[
     Here's a multi-line comment with the equal
     sign to prevent the double bracket strings [] 
     inside the comment to break

     debugPrint([[ hi ]])
]=]
```

***

# Operators
Operators are unique symbols that are used to carry out operations on operands. For the conditional statements to use to determine if the value is `true` or `false` before executing the code block. They can be represented as Arithmetic, Relational, Logical, and Miscellaneous.

### Arithmetic
Arithmetic operators are mathematical operators used to perform calculations for numeric values.

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
| `..` |Concatenate operator, Merges multiple `string` or `numbers` together. | `'snow'..'ball'`; Returns `snowball`. | 

***

# Control Statements
Control Statements allows you to control the execution of other statements. Which analyzes the statements condition and decide whether to execute the code if it's `true` or not.

### Conditional Statements
These are a type of control structures that specifies whether or not to execute the block code. They are the most common control structures to use. There are only 3 if else statements the `if`, `else`, `elseif` statements.

Conditional Statements are a type of Control Statements that whether or not to execute the block code return `true`. They are the most common control structures to use; Lua only has 3 Conditional Statements which are `If`, `Else`, and `ElseIf` Statements.

#### If Statement
If Statement checks the condition if it's `true` or not. They are define with the `if` keyword followed by the specified condition to execute the statement with the `then` keyword.

Example:
```lua
local getWeekDay = os.date('*t').wday -- checks the current day of week
function onCreate()
     if getWeekDay == 6 then -- checks if the current day is 'Friday'
          debugPrint('Day: Friday')
     end
end
```

#### Else Statement
Else statement checks if the condition fails then this statement will be executed. They are define with the `else` keyword at the bottom of the If or ElseIf Statement that's it nothing else <!-- Comedy genius --> to say about it.

Example:
```lua
local getWeekDay = os.date('*t').wday -- checks the current day of week
function onCreate()
     if getWeekDay == 6 then -- checks if the current day is 'Friday'
          debugPrint('Day: Friday')
     else -- if the condition returns 'false'
          debugPrint('Not Friday')
     end
end
```

#### ElseIf Statement
Elseif Statement is an alternative condition if the other condition returns `false`. They are define with the `elseif` keyword with the new condition to execute a new condition followed by the `then` keyword.

Example:
```lua
local getDateWeekDay = os.date('*t').wday -- checks the current day of week
function onCreate()
     if getDateWeekDay == 7 then     -- checks if the day is 'Saturday'
          debugPrint('Day: Saturday')
     elseif getDateWeekDay == 1 then -- checks if the day is 'Sunday'
          debugPrint('Day: Sunday')
     else                            -- checks if both of the condition fails
          debugPrint('Day: Weekdays')
     end
end
```

### For Loop Statement
For loop statement allows you to loop a specific number of times. This loop is commonly used for `setPropertyFromGroup()` and `getPropertyFromGroup()` functions for note modification, modcharts, or something. And used for reading a table values or performing on numeric values. There are 2 types of loops Generic loop or Numeric Loop.

#### Numeric Loop
Numeric Loop are a type of loop that use numeric values to increment or to decrement a value. This loop is usually the most common loop to use for `setPropertyFromGroup()` and `getPropertyFromGroup()` functions. There are 3 expressions when declaring a Numeric loop `initialize`, `condition`, and `iteration`.

- `initialize` - The initial variable for the loop to use.
- `condition` - The condition of the loop to execute the code block.
- `iteration` - An optional expression, The iteration of the loop you can either incremented <kbd>+</kbd> or decremented <kbd>-</kbd> the value; Defualt value: `incremented`.

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
Generic Loop are a type of loop that commonly uses pair functions to read all the table values. This is just an alternative loop for reading every table values. There are 3 expressions when declaring a Generic loop `key`, `value`, and `iteration`.

- `key` - The key values from the table, you can name how you want; Example: `key`.
- `value` - The value types from the table, you can name how you want; Example: `value`.
- `iterate` - The iteration for the loop to use, can be either the `pair` functions or `gmatch` function.

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

***

# Modules
Modules are a code library these mostly contain functions or variables. They can help you maintain a code-base and break your code into different Lua files. If you're using them frequently when coding your weird Lua scripts.

### Creating
To create your own custom module make a separate Lua script and placed the location of the script. Let's just say you placed them inside `mods/scripts/modules` folder and you named it `myGamingModules.lua`. Now inside of it declare a local table variable with the exact name of the Lua script module with no value(s) inside of it; Example: `local myGamingModules = {}`.

Before you declare your functions or variables each name should have the `local` table variable name followed by the dot <kbd>.</kbd> character. And at the end of the Lua script module should have the `return` statement on the `local` table variable name to export the modules to other Lua script; Example: `return myGamingModules`. (I Think)

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
Requires the module name and <ins>imports the functions or variables</ins>. To declare the `require` function either use the <ins>function itself or use it inside the value of the variable to change the name of it</ins>. This is the only few functions that you can <ins>add without the parenthesis</ins> <kbd>()</kbd> character that I only trust.

- `moduleName` - The location of the Lua script module file to be used; Starts outside the `mods` folder.

Syntaxes:
```lua
require 'mods/scripts/modules/myGamingModules'                     -- uses the default name
local moduleName = require 'mods/scripts/modules/myGamingModules'  -- uses a custom name
```

To call the `require` function, get the specified module name to use; if it's contained inside a variable, <ins>get the variable name if not get the module name</ins>. Add a dot <kbd>.</kbd> character followed by the <ins>function or variable name inside the Lua module file</ins>.

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
Gets the <ins>specific value type of the argument</ins>. Can be used to check the value type inside the conditional statements; Returns either: `string`, `boolean`, `number`, `table`, `function`.

- `value` - The argument value to be check.

### tostring(numboo:Dynamic)
Converts any <ins>number or booleans</ins> into a real `string` value.

- `numboo` - The specified value to be converted.

### tonumber(num:String)
Converts any <ins>number inside of a string</ins> into a real number.

- `num` - The number to be converted.

### load(chunk:String)
Converts the code inside the string into real Lua code; Returns a `function`.

- `chunk` - The code to be converted.

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
Imports <ins>any `global` variables or functions</ins> on other Lua files.

- `path` - The specified location of the Lua file to be used.

Example: _(Path: `PsychEngine/mods/scripts/modules/scriptFile.lua`)_
```lua
local myVar0 = nil  -- THIS WILL NOT WORK IF IT'S LOCAL!!!!!
myVar1 = 163        -- will work
myVar2 = true       -- will also work
```

Example: _(Path: `PsychEngine/mods/scripts/myGamingFile.lua`)_
```lua
dofile('PsychEngine/mods/scripts/modules/scriptFile.lua')
function onCreate()
     debugPrint(myVar0)  -- will print 'nil'
     debugPrint(myVar1)  -- will print '163'
     debugPrint(myVar2)  -- will print 'true'
end
```

### pairs(tab:Table)
Returns every <ins>key-value pairs</ins> inside a table and is <ins>typically used in table dictionaries</ins>. It can return as an <ins>unorganized table sort</ins>; Not to be confused with `ipairs()` functions.

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

     debugPrint(read(tableArry)) -- will print '123, 567, 123'
     debugPrint(read(tableDict)) -- will print 'c = 134, a = 123, b = 567'
end
```

### ipairs(tab:Table)
Returns every <ins>index-value pairs</ins> inside a table and is <ins>typically used in table arrays or with numeric keys within a table dictionary</ins>. If the table value has `nil` it will <ins>stop executing the loop there</ins>.

Example:
```lua
local function read(tab) -- reads through a table
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
The Global Variable is a special type of variable specifically a table dictionary. That gets every `global` variable and are saved inside the variable, it's defined with the `_G` keyword. Be careful when calling it because it can cause a crash. Changing its value does not affect any environment, nor vice versa.

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