# Introduction
> **Note**: _You can skip this section if you want just to let ya' know._

Lua is a lightweight, high-level, dynamically typed, multi-paradigm scripting language that is mainly used in Psych Engine. This allows you to execute Lua code without compiling the game over and over again. And it's simple and easy scripting language that an 8 year old can understand easily. The only cons that Lua has are, global scopes are always in default, limited error handling, limited pattern matching, no unicode support, no default parameter values just to name a few.

## Source-Code Editors
You don't know they're basically a text editor program designed specifically for editing source code of computer programs. They usually add such as syntax highlighting, indentation, autocomplete and brace matching. To make your programming experience more easier to code, the most popular source-code editors are [Visual Studio Code](https://code.visualstudio.com/), [Notepad++](https://notepad-plus-plus.org/downloads/), [Vim](https://www.vim.org/download.php), [Sublime Text](https://www.sublimetext.com/), etc. You can use any source-code editors that you're comfortable to use.

## Differences
When coding with Lua in Psych Engine, there are some minor differences. This is due to HaxeFlixel, the main engine used by Psych Engine. Anyways uuuuhhhhh here's a list of minor differences that you should 100% totally know about:

1. The code should be located inside any of the Callback Templates which are special functions. That uses the games mechanics like note types, custom events, countdowns, etc to execute the code; Examples: `onCreate()`, `onUpdate()`, `onEvent()` just to name a few of them. Note that variables, functions, and built-in Lua functions can be declared outside of any Callback Templates.
2. Printing is also different instead of using the `print()` function it's replaced by the `debugPrint()` function. The arguments passed on the `debugPrint()` function will appear at the top-left of the screen. And will fade out in a couple of seconds.
3. Psych Engine uses Lua version <kbd>5.1</kbd> which there are missing features that Lua <kbd>5.1</kbd> doesn't has; Examples: Floor division, Bitwise operators, basic utf-8 library, support for both 64-bit and 32-bit platforms, and new functions.

Example:
```lua
local vary1 = 'hamburgers are cool'
local vary2 = 'potatoes are also cool, i think'
     
function onCreate()
     debugPrint(vary1) -- will print > 'hamburgers are cool'
     debugPrint(vary2) -- will print > 'potatoes are also cool, i think'
end
```

***

# Comments
Comments are used to explain the context of code and prevent the execution on a specific code; Lua will just ignore them. Comments starts with a double minus <kbd>--</kbd> characters as the syntax for single-line comment. For multi-line comments should have double brackets <kbd>[[]]</kbd> characters with the double minus <kbd>--</kbd> characters before it.

Example:
```lua
function onCreate() -- Triggered at the start of the Lua script
     makeLuaSprite('tag', 'imagePath', 0, 0) -- initializes the lua sprite
     addLuaSprite('tag', true)               -- Adds the lua sprite
end

--[[
function onCreatePost()
     setProperty('iconP1.visible', false)
     setProperty('iconP2.visible', false)
end
]]
```

You can also nest multi-line comments just add an equal <kbd>=</kbd> character between the double brackets <kbd>[[]]</kbd> characters of the comment; Example: <kbd>--[=[]=]</kbd>. The amount of equal <kbd>=</kbd> character determines how many levels of nesting will be created.

Example:
```lua
--[=[
     Here's a multi-line comment with the equal
     sign to prevent the double bracket strings [] 
     inside the comment to break

     debugPrint([[ hi ]])
]=]
```

***

# Variables
Variables are an abstract manipulable containers for storing data values they can be used throughout the Lua program. They're paired with an associated name which contains the data value of the variable to be used. The data from the variable can be updated when you assigned a new value from it.

## Declaring
To declare the variable, you must specify the variable's `type`, `name`, and `data` value. The `type` determines what scope the variable should have. It could be `global` type by default in Lua or `local` type by using the `local` keyword. Followed by the `name` of your variable name it what-ever you want it, but there are some rules to follow when declaring them. The variable's specified `data` value is then assigned using an equal <kbd>&equals;</kbd> character.

Example:
```lua
local foo = 73
local bar = 29
local baz = foo - bar

function onCreate()
     debugPrint(baz) -- will print > 44
end
```

You can also assign multiple variables in one line, if you want to reduce the lines of code for some reason. Each variable's `names` and `values` should be separated by a comma <kbd>,</kbd> character. But if the names list is not equal to the values list then the other values will be asign into `nil` value. If the opposite happens then the other extra `values` will be ignore, making them impossible to call them.

Example:
```lua
local foo, bar, baz = 134, 72, 722    -- 'name and value lists' are equal
local plu, clu, zur = 'Hello', 'Bye'  -- 'value list' is greater than 'name list'
local qux, quy = true, true, false    -- 'name list' is greater than 'value list'

function onCreate()
     debugPrint(foo, bar, baz) -- will print > 134, 72, 722
     debugPrint(plu, clu, zur) -- will print > 'Hello', 'Bye', nil
     debugPrint(qux, quy)      -- will print > true, true
end
```

### Naming Conventions
- Variable names can only have alphanumeric `Ab12` and underscore <kbd>_</kbd> characters.
- Variable names cannot have numbers at the start of the name.
- Variable names are case-sensitive so variable a and A are completely different to each-other.
- Variable names are recommended to have descriptive name like (`health`, `misses`, `alpha`) to make the code more readable.
- Variable names cannot be named after <a href="https://www.lua.org/manual/5.1/manual.html#:~:text=2.1%20%E2%80%93-,Lexical%20Conventions,-Names%20(also%20called">Lua keywords</a>.

Example: (Valid)
```lua
varname   = 'Hi'   -- a variable (lower case)
varName   = 'Hi'   -- a variable with a capitalize letter (camel case)
var_name  = 'Hi'   -- a variable with an underscore '_' character (snake case)
_var_name = 'Hi'   -- a variable with an underscore '_' character at the start 
VARNAME   = 'Hi'   -- a variable that is all capitalize letters (upper case)
varname2  = 'Hi'   -- a variable with a number
_______   = 'Hi'   -- what the hell is this variable???
```

Example: (Invalid)
```lua
1varName = 'Error' -- a variable with a number at the start
var-name = 'Error' -- a variable with a minus '-' character (kebab case)
var name = 'Error' -- a variable with a space ' ' character
var$name = 'Error' -- a variable with a special '$' character
```

## Types
### Global
Global variables allows you to call them outside a Callback Templates or block, at any time throughout the program. But it's only recommended if you're getting a variable on another Callback Templates or block for data checking or something.

Example:
```lua
function onCreate()
     globalTextTag = 'myText' -- global variable

     makeLuaText(globalTextTag, 'This is a dumb text!', nil, 0, 0) -- initialize the text
     setTextSize(globalTextTag, 30)  -- sets the text size
     addLuaText(globalTextTag)       -- adds the text in the game
end

function onBeatHit()      -- checks every beat hit
     if curBeat == 5 then -- checks if the 'curBeat' is equal to '5'
          setProperty(globalTextTag..'.alpha', 0.5) -- sets the text opacity into '0.5'
     end
end
```

### Local
Local variables can only be called within a function or block; if you attempted to call them outside it will return a `nil` value because there only local within that function block. They're more faster to call because they're integrated into the environment in which they are created.

Example:
```lua
function onCreatePost()
     local localOpacity = 0
     setProperty('camHUD.alpha', localOpacity) -- sets the camera HUD elements opacity into '0'
end

function onSongStart()
     debugPrint(localOpacity) -- will print > nil
     doTweenAlpha('HUDTween', 'camHUD', 1, 3, 'linear') -- will tween the camera HUD elements to '1'
end
```

***

# Data Types
## Strings
Strings are a sequence of characters it can either represent an alphabetical, digital, punctuation, or all of them. Their main purpose is to store human-readable text, like words and sentences. They're commonly surrounded by single-quotes <kbd>''</kbd>, double-quotes <kbd>""</kbd>, or double-brackets <kbd>[[]]</kbd> for multi-line strings.

Example:
```lua
local textString1 = 'Hello' -- a single quote
local textString2 = "World" -- a double quote, this is optional to use
local textString3 = [[
     Culturae organicae te capiet ad loca quae numquam 
     expectata non visere!
]]                          -- a double bracket, used this for longer texts

function onCreate()
     debugPrint(textString1) --   will print 'Hello'
     debugPrint(textString2) --   will print "World"
     debugPrint(textString3) --[=[ will print [[
          Culturae organicae te capiet ad loca quae numquam
          expectata non visere!
     ]]]=]
end
```

## Numbers
Numbers are arithmetic values that represent the quantity or amount of something. It can have positive or negative values, and numbers can be expressed as Float or Int; Float numbers support decimal numbers, whilst Int numbers only uses whole numbers.

Example:
```lua
local numInt = 81       -- integer number
local numFlt = 23.42    -- floating-point number

local numAltFlt1 = 12.
local numAltFlt2 = .56
function onCreate()
     debugPrint(numInt, numFlt)         -- will print > 81, 23.42
     debugPrint(numAltFlt1, numAltFlt2) -- will print > 12.0, 0.56
end
```

Numbers can also be represented in Scientific (Exponent) Notation. They are a way to expressing numbers that are too large or too small to be conveniently written in float form.

Example:
```lua
function onCreate()
     debugPrint(263e+4) -- will print > 2630000.0
     debugPrint(326e-5) -- will print > 0.00326
end
```

## Booleans
Booleans, often shortened to Bools, are data types that can have two possible values: `true` or `false`. This is commonly used for conditional statements, which allow for different actions by modifying control flow based on whether the condition is `true` or `false`.

## Nil
Nil represents nothingness or non-existence of a value. This can be used for destroying a variable or table values if not used anymore. Or use conditional statements to check if the value is a `nil` or not.

## Tables
Tables are a data structuring mechanism in Lua the only one in fact. They can store multiple types values like strings, numbers, booleans, even its self. This is a better alternative than listing them in each variables and makes it easy to access each element of the Table. Tables can be represented as an Array or Dictionary

### Array
Array are the most common way to declare a Table, they're are always listed in ordered. To declare a Table Array add a pair of curly-braces <kbd>{}</kbd> characters with the elements each separated by a comma <kbd>,</kbd> character.

To read a Table Array element get the name of it followed by a pair of bracket <kbd>[]</kbd> characters. With the referring to the index number inside the pair of bracket <kbd>[]</kbd> characters for specified element to get.

> **Warning**: _Lua uses 1-based index rather than 0-based index like other programming languages. In other words, the first index position always start at 1_.

Example:
```lua
local tableGroup1 = {'string', true, nil} -- a table with string, boolean, and nil values
local tableGroup2 = {{45, 13}, {34, 76}}  -- a table with nested tables
function onCreate()
     debugPrint(tableGroup1)       -- will print > ['string', true, nil]
     debugPrint(tableGroup1[1])    -- will print > 'string'
     debugPrint(tableGroup2[1][2]) -- will print > 13
end
```

### Dictionary
Dictionaries uses key-value pairs for storing elements instead of index-value pairs that Table Arrays uses. It basically uses names for reffering the elements inside the Table Dictionary. The key from the Table Dictionary can be surrounded by bracket <kbd>[]</kbd> characters with single-quoted <kbd>''</kbd> or double-quoted <kbd>""</kbd>. This is only used if the key name has a special character inside of it.

To read a Table Dictionary get the name of it followed by a dot <kbd>.</kbd> character with the name of the key to be used. Or used the bracket method as an alternative or if it has a special key name.

Example:
```lua
local tableDict1 = {isFatherless = false, hasTouchGrass = true}
local tableDict2 = {['air'] = 'Oxygen', ["food"] = 'potato', ["love"] = 'carbon monoxide'}
function onCreate()
     debugPrint(tableDict1)                   -- will print > {isFatherless => false, hasTouchGrass => true}
     debugPrint(tableDict1.isFatherless)      -- will print > false
     debugPrint(tableDict1['hasTouchGrass'])  -- will print > true

     debugPrint(tableDict1.air)               -- will print > 'Oxygen'
     debugPrint(tableDict2['food'])           -- will print > 'potato'
     debugPrint(tableDict2["love"])           -- will print > 'carbon monoxide'
end
```

### Inserting
Tables can insert elements in any given position of the table. You can do this by calling the table with the referring to the index number or key name. followed by the element that is then assigned using an equal <kbd>&equals;</kbd> character. Or alternative you can use the `table.insert()` function to forcefully insert an element from the table without changing the element's value.

Example:
```lua
local tableGroup1 = {'luz', 'erm', 'duq'}
local tableGroup2 = {foo = 93, bar = 23, baz = 74}
function onCreate()
     tableGroup1[4] = 'rod'
     tableGroup1[5] = 'xur'
     tableGroup2['muz'] = 91
     tableGroup2['quz'] = 32

     debugPrint(tableGroup1) -- will print > {foo => 93, bar => 23, baz => 74, muz => 91, quz => 32}
     debugPrint(tableGroup2) -- will print > ['luz', 'erm', 'duq', 'rod', 'xur']
end
```
***

# Functions
Functions are a collection of code that is designed perform a specific task. They can enable reusable code across the Lua program and reduces the duplication of code. functions are defined with the `function` keyword followed by the name of the function with the pair of parentheses <kbd>()</kbd> characters.

To call a function get the function name followed by the parentheses <kbd>()</kbd> characters. If the parentheses are not present it will return the function's memory address; Example: `function: 0x5616d89c0770`.

Example:
```lua
function hello()
     debugPrint('Hello Function')
end

function onCreate()
     hello() -- will print > 'Hello Function'
end
```

## Parameters
Parameters are special type of variables inside the functions parentheses <kbd>()</kbd> characters. If there are two or more parameters they must be separated by a comma <kbd>,</kbd> character. Their main purpose is to add more functionality to the function. If you're calling a function you must values or "arguements" which in each parameters, this is a requirement.

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

Parameters can be defined as an infinite parameter with the ellepsis <kbd>...</kbd> character. It enables an indefinite number of arguments to pass. If there are non parameters present, it must be the last parameters from the list.

Example:
```lua
function table.pack(...)
     return {...}
end

function onCreate()
     debugPrint(table.pack(34, 23, 12, 343)[1])
     debugPrint(table.pack(true, false, true, true)[4])
end
```

***

# Operators
Operators are unique symbols that are used to carry out operations on operands. For the conditional statements to use to determine if the value is `true` or `false` before executing the code block. They can be represented as Arithmetic, Relational, Logical, and Miscellaneous operators.

## Arithmetic
Arithmetic operators are mathematical operators used to perform calculations for numeric values.

| Operators | Name                                                                             | Example | Returns |
|:---------:|----------------------------------------------------------------------------------|:--------|:--------|
|    `+`    | Addition                                                                         | `5 + 5` |  `10`   |
|    `-`    | Subtraction                                                                      | `8 - 3` |   `5`   |
|    `*`    | Multiplication                                                                   | `5 * 3` |  `15`   |
|    `/`    | Division                                                                         | `9 / 2` |  `4.5`  |
|    `%`    | [Modulus](https://www.calculatorsoup.com/calculators/math/modulo-calculator.php) | `8 % 4` |   `0`   |
|    `^`    | Exponentiation                                                                   |  `2^4`  |  `16`   |
|    `-`    | Unary Negation                                                                   |  `-8`   |  `-8`   |

## Relational
Relational operators are used to compare multiple operands inside a condition in order for the code block to execute.

| Operators | Description                                                          | Example  | Returns |
|:---------:|----------------------------------------------------------------------|:---------|:--------|
|   `==`    | Checks if the condition is <ins>equal to</ins> the right.            | `a == b` | `false` |
|   `~=`    | Checks if the condition is <ins>not equal to</ins> the right.        | `a ~= b` | `true`  |
|    `>`    | Checks if the condition is <ins>greater than</ins> the right.        | `4 > 5`  | `false` |
|    `<`    | Checks if the condition is <ins>lesser than</ins> the right.         | `4 < 5`  | `true`  |
|   `>=`    | Checks if the condition is <ins>greater or equal to</ins> the right. | `7 >= 7` | `true`  |
|   `<=`    | Checks if the condition is <ins>lesser or equal to</ins> the right.  | `2 <= 5` | `true`  |

## Logical
Logical operators are used to combine multiple conditions and to specify on what conditions needs to be `true`.

| Operators | Description                                                                                    | Example                    | Returns |
|:----------|------------------------------------------------------------------------------------------------|:---------------------------|---------|
| `and`     | Returns `true` if both statements are `true`;<br> Combines multiple conditions together.       | `a == false and b == true` | `false` |
| `or`      | Returns `true` if one of the statements are `true`;<br> Combines multiple conditions together. | `a == false or b == true`  | `true`  |
| `not`     | Reverses the condition; If the condition is `false`<br> it will return `true` and vice versa.  | `not false`                | `true`  |

## Miscellaneous
Miscellaneous operators only features two operators the Length and Concatenate operators.

| Operators | Description                                                               | Example          |
|:---------:|---------------------------------------------------------------------------|------------------|
| `#`       | Length operator, Checks the maximum length size of a `string` or `table`. | `#'sussy'`       |
| `..`      | Concatenate operator, Merges multiple `string` or `numbers` together.     | `'snow'..'ball'` |

***

# Control Statements
Control Statements allows you to control the execution of other statements. Which analyzes the statements condition and decide whether to execute the code if it's `true` or not.

## Conditional Statements
These are a type of control structures that specifies whether or not to execute the block code. They are the most common control structures to use. There are only 3 if else statements the `if`, `else`, `elseif` statements.

Conditional Statements are a type of Control Statements that whether or not to execute the block code return `true`. They are the most common control structures to use; Lua only has 3 Conditional Statements which are `If`, `Else`, and `ElseIf` Statements.

### If Statement
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

### Else Statement
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

### ElseIf Statement
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

## For Loop Statement
For loop statement allows you to loop a specific number of times. This loop is commonly used for `setPropertyFromGroup()` and `getPropertyFromGroup()` functions for note modification, modcharts, or something. And used for reading a table values or performing on numeric values. There are 2 types of loops Generic loop or Numeric Loop.

### Numeric Loop
Numeric Loop are a type of loop that use numeric values to increment or to decrement a value. This loop is usually the most common loop to use for `setPropertyFromGroup()` and `getPropertyFromGroup()` functions. There are 3 expressions when declaring a Numeric loop `initialize`, `condition`, and `iteration`.

- `initialize` - The initial variable for the loop to use.
- `condition` - The condition of the loop to execute the code block.
- `iteration` - An optional expression, The iteration of the loop you can either incremented <kbd>+</kbd> or decremented <kbd>-</kbd> the value; Defualt value: `incremented`.

Example:
```lua
function onCreate()
     for index = 0, 5, 1 do  -- Increment loop
          debugPrint(index)  -- will print > '0, 1, 2, 3, 4, 5'
     end
     for index = 5, 0, -1 do -- Decrement loop
          debugPrint(index)  -- will print > '5, 4, 3, 2, 1, 0'
     end

     for index = 0, 300, 50 do -- Increment Loop with each value incremented by 50 
          debugPrint(index)    -- will print > '0, 50, 100, 150, 200, 250, 300'
     end
end
```

### Generic Loop
Generic Loop are a type of loop that commonly uses pair functions to read all the table values. This is just an alternative loop for reading every table values. There are 3 expressions when declaring a Generic loop `key`, `value`, and `iteration`.

- `key` - The key values from the table, you can name how you want; Example: `key`.
- `value` - The value types from the table, you can name how you want; Example: `value`.
- `iterate` - The iteration for the loop to use, can be either the `pair` functions or `gmatch` function.

Example:
```lua
function onCreate()
     local tableThingy = {num1 = 231, num2 = 345, num3 = 234}
     for key, value in pairs(tableThingy) do
          debugPrint(key, value)  -- will print > 'num1 = 231, num2 = 345, num3 = 234'
     end
end
```

#### Pair Functions
- `pairs()` - Returns every key-value pairs inside a table for table dictionaries; Returns as an unorganized table sort; Not to be confused with `ipairs()` functions.
- `ipairs()` - Returns every index-value pairs inside a table for table arrays. If the table value has `nil` it will stop executing the loop there.

## While Loop
While Loop statement will loop through a block of code infinitely until the specified condition returns `false`. To declare a while loop, Make an `if` statement but just replace the `if` keyword with the `while` keyword and the `then` keyword with the `do` keyword.

> **Warning**: _Check the condition when making a `while` loop statement. Because it might loop infinitely and crash your game! I'd suggest you test it [here](https://www.mycompiler.io/new/lua) before implementing into the Lua script._

Example:
```lua
function onCreate()
     local counter   = 5
     local factorial = 1

     while counter > 0 do
          factorial = factorial * counter
          counter   = counter - 1
     end

     debugPrint(factorial) -- will print > '120'
end
```

## Return Statement
Return statement as the name suggests returns the results from the function. And stops the execution of the function. It must be relative at the end of the function or conditional statement.

Example:
```lua
function getMidpointNum(ope1, ope2)
     return (ope1 + ope2) / 2  -- returns the middle value between 'ope1' and 'ope2'
end 

function onCreate()
     debugPrint(getMidpointNum(9 + 10))   -- will print > '9.5'
end
```

## Break Statement
Break statement stops the loop statements from looping. You can use this for specific conditions for the loop to end. It must be relative at the end of the function or conditional statement.

Example:
```lua
function onCreate()
     local nums = {1, 3, 9, 5, 7, 4, 19, 13}
     for i = 1, #nums do
          if i > #nums / 2 then
               break
          else
               debugPrint(nums[i])
          end
     end
end
```

***

# Modules
Modules are a code library these mostly contain functions or variables. They can help you maintain a code-base and break your code into different Lua files. If you're using them frequently when coding your weird Lua scripts. 

Instead of using `import` or `export` statements, Lua uses a Table "Dictionary" which can consist variable or functions that you frequently and, thus creating a your very own simple module. With the `return` statement at the last line of code to export the module to other files to use.

> **Warning**: _Declaring a `local` variable or function won't work because it will not export any of them from other Lua files. And might cause an error or something, I dunno haven't check._

<details><summary><b>Module Location (Path Visualizer):</b></summary>
<p>

```txt
mods/
├╴ scripts/
│  ├╴ main.lua
│  └╴ modules/
│     └╴ global.lua
```

</p>
</details>

Example:
```lua
local modules = {}

modules.red   = 'ff0000'
modules.green = '00ff00'
modules.blue  = '0000ff'

function myGamingModules.tobool(boo)     -- boolean to string
     local boo = boo:lower()
     if boo:match('true') or boo:match('false') then -- check if it's actually true of false
          return boo == 'true' and (true or false)   -- ternary operator > "cond ? exp1 : exp2"
     end
     return 'Not a boolean value'
end

function modules.setPos(obj, pos) -- Concatenates setProperty x and y
     if pos[1] ~= nil then        -- makes pos parameter acts like a table
          setProperty(obj..'.x', pos[1])
     end
     if pos[2] ~= nil then
          setProperty(obj..'.y', pos[2]) 
     end
end

return modules
```

## Requiring
You want to require or import the desired module file you created, use the `require()` function. And will controls whether a file has already been run to avoid duplicating the work. The arguements should have the location of the Lua module file to be used; Starts outside the `mods` folder.

Example:
```lua
local moduleName = require('mods/scripts/modules/global') -- gets the module
function onCreate()
     debugPrint(type(moduleName.tobool('true'))) -- will print 'boolean'
     
     debugPrint(moduleName.red)   -- will print 'ff0000'
     debugPrint(moduleName.green) -- will print '00ff00'
     debugPrint(moduleName.blue)  -- will print '0000ff'
end
```

## _G
The Global Variable `_G` is special type of table dictionary that holds the global environment. This allows you to insert variables and functions across all of your Lua scripts. If you want to call the variable you must use the `getGlobalFromScript()` function or if you want to set the value, you use `setGlobalFromScript()` function. 

This will work only if the lua file from which the variable is being requested is currently executing. Or alternatively you can use this for getting multiple global variables from a loop and modify the values easily.

> **Note**: _You can't declare a `local` type variable, it must be `global` type._

Example 1 (Module):
```lua
-- Path: mods/scripts/test.lua
_G.hi = 'hello'
```
```lua
-- Path: mods/scripts/main.lua
function onCreate()
     local hi = getGlobalFromScript('scripts/test', 'hi')
     debugPrint(hi) -- will print > 'hello'
end
```

Example 2 (Iterating):
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