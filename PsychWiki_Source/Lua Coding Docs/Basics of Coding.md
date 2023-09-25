# Introduction
Lua is a lightweight, high-level, dynamically typed, multi-paradigm scripting language that originated in 1993. It was designed to improve its speed, portability, extensibility, and ease of use in development. Which is why it is used in Psych Engine; this allows you to execute Lua code without compiling the game over and over again, unlike doing source code in Haxe.

## Source-Code Editors
You don't know they're basically a text editor program designed specifically for editing source code of computer programs. They usually add such as syntax highlighting, indentation, autocomplete and brace matching. To make your programming experience more easier to code, the most popular source-code editors are [Visual Studio Code](https://code.visualstudio.com/), [Notepad++](https://notepad-plus-plus.org/downloads/), [Vim](https://www.vim.org/download.php), [Sublime Text](https://www.sublimetext.com/), etc. You can use any source-code editors that you're comfortable to use.

If you install Visual Studio Code there are extensions which makes your coding experience even more better. Like supporting a new programming language, adding custom snippets, etc.

- [Lua snippets](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) - Adds lua snippets when coding in Lua.
- [Funkin Script AutoCompleter](https://marketplace.visualstudio.com/items?itemName=Snirozu.funkin-script-autocompleter) - Adds the Psych engine functions when coding in Lua.

## Differences
They are some minor differences when coding in Psych Engine Lua. This is due to HaxeFlixel, the main engine used by Psych Engine. Anyways uuuuhhhhh here's a list of minor differences that you should 100% totally know about:

1. The code should be located inside any of the Callback Templates which are special functions. That uses the games mechanics like note types, custom events, countdowns, etc to execute the code; Examples: `onCreate()`, `onUpdate()`, `onEvent()` just to name a few of them. Note that variables, functions, and built-in Lua functions can be declared outside of any Callback Templates.
     - In update `0.7.1h` of Psych Engine you can now put code outside of any Callback Templates, which is the best feature to be ever be implemeted in years, but this will only execute once tho.
2. Printing is also different instead of using the `print()` function it's replaced by the `debugPrint()` function. The arguments passed on the `debugPrint()` function will appear at the top-left of the screen. And will fade out in a couple of seconds.
3. Psych Engine uses Lua version <kbd>5.1</kbd>, and there are some missing features that Lua <kbd>5.1</kbd> doesn't have. Examples: include floor division, bitwise operators, a basic UTF-8 library, support for both 64-bit and 32-bit platforms, and other new functions.

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
Comments are used to explain the context of code and what its purpose is, or to disable the execution of code. This won't affect anything inside the Lua program because it will be ignored. Comments start with a double minus <kbd>--</kbd> character as the syntax for a single-line comment. For multi-line comments, they should have double brackets <kbd>[[]]</kbd> characters with the double minus <kbd>--</kbd> characters before them.

Example:
```lua
function onCreate() -- Triggered at the start of the Lua script
     makeLuaSprite('tag', 'imagePath', 0, 0) -- initializes the lua sprite
     addLuaSprite('tag', true)               -- Adds the lua sprite
end
```
```lua
function onCreate()
     debugPrint('colon') -- will print > 'colon'
end

--[[ function onUpdate(elapsed)
     debugPrint('lag')
end ]]
```

***

# Variables
Variables are abstract manipulable containers for storing data values; they can be used throughout the Lua program. They're paired with an associated name, which contains the data value of the variable to be used. The data from the variable can be updated when you assign a new value to it.

## Declaring & Reassigning
To declare a variable, you must specify the variable's `scope`, `identifier`, and `data` values. The `scope` determines what scope the variable should have. It could be `global` type by default in Lua or `local` type by using the `local` keyword.

This is followed by the variable's `identifier`, or in layman's terms, the "name", for the variable to be referenced and used later. Assigning the `data` value for the variable to store by using an equal <kbd>&equals;</kbd> character. If you want to reassign a variable, it's basically the same as declaring a variable, but the `data` value should be a different value or data type.

Example:
```lua
local object_cost1 = 20
local object_cost2 = 12
local object_price = object_cost1 + object_cost2 -- adds to two object values

function onCreate()
     debugPrint(object_price) -- will print > 32
end
```
```lua
local object_cost = 30 -- too expensive
object_cost = 15       -- changes the costs value, cuz its black friday

function onCreate()
     debugPrint(object_cost) -- will print > 15
end
```

Variables can be assigned with multiple variables in one line if you want to reduce the lines of code for some reason. To do this, each variable's `identifier` and `data` values should be separated by a comma. Each comma <kbd>,</kbd> character of them should be equal.

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

***

# Scope
Scope, in programming, refers to the variables or functions accessibility in certain parts of the code. This can be determined by either declaring them as having a `global` or `local` scope. Scoping helps prevent name collisions by using the same variables or functions names for different things. By allowing the same name to be used in different scopes of the program, which is cool, I guess.

## Global scope
Global variables allows you to call variables outside the scope of block, at any time throughout the program. This is only recommended if you're getting a variable on another Callback Templates or using to export/import a variable to another Lua script.

Example:
```lua
do -- do block
     stupidVar = 24 -- a global scope
end

function onCreate()
     debugPrint(stupidVar) -- will print > 24
end
```

## Local scope
Local variables are declared with the `local` statement, unlike `global` variables their scope is limited to the block where they are declared. If you attempted to call them it will only return a `nil` value. This is a relativly good programming style becuase they avoid cluttering the global environment with unnecessary names. And are more faster to call than to global ones.

Example:
```lua
do -- do block
     local stupidVar = 24 -- a local scope
end

function onCreate()
     debugPrint(stupidVar) -- will print > 24
end
```

***

# Data Types
## Strings
Strings are a sequence of characters containing any characters; they could be either alphabetical, digital, punctuation, etc. Their main purpose is to store human-readable text, like words and sentences. They're commonly surrounded by either single-quotes <kbd>''</kbd>, double-quotes <kbd>""</kbd>, or double-brackets <kbd>[[]]</kbd> for multi-line strings.

Examples:
```lua
local textString1 = 'Hello' -- a single quote
local textString2 = "World" -- a double quote, this is optional to use
function onCreate()
     debugPrint(textString1) -- will print > 'Hello'
     debugPrint(textString2) -- will print > "World"
end
```
```lua
local textString3 = [[
     Culturae organicae te capiet ad loca quae numquam 
     expectata non visere!
]]                          -- a double bracket, used this for longer texts
function onCreate()
     debugPrint(textString3) --[=[ will print > [[
          Culturae organicae te capiet ad loca quae numquam
          expectata non visere!
     ]] ]=]
end
```

### Escape Characters
Escape characters are special characters used within a string. They are an alternate interpretation of the characters in the following character sequence. It allows you to insert illegal characters inside a `string`, for instance, a single-quote <kbd>'</kbd> that is surrounded by single-quotes. Each escape character starts with a backslash <kbd>\\</kbd> character, followed by the character to use after that.

Example:
```lua
function onCreate()
     debugPrint('Don\'t press \'Alt + F4\'') -- will print > 'Don't press 'Alt + F4''
     debugPrint("dead \"(in a cool way)\"")  -- will print > "dead "(in a cool way)""
     debugPrint('C:\\Windows\\System32')     -- will print > 'C:\Windows\System32'
end
```

- `\'` - Single-quote Character
- `\"` - Double-quote Character
- `\\` - Backslash Character
- `\n` - New Line
- `\r` - Carriage Return
- `\t` - Horizontal Tab
- `\v` - Vertical tab 

## Numbers
Numbers are arithmetic values that represent the quantity or amount of something. It can have positive or negative values, and numbers can be expressed as integers (Int) or floating-points (Float). Int only uses whole numbers, while Float uses decimal numbers.

Numbers can also be represented in scientific (exponential) notation. They are a way of expressing numbers that are too large or too small to be conveniently written in float form. You could also represent it as a hexadecimal number system for colors, just to let you know.

Example:
```lua
local myNumInt = 32  -- integer number
local myNumFlt = 2.1 -- floating-point number

function onCreate()
     debugPrint(myNumInt) -- will print > 32
     debugPrint(myNumFlt) -- will print > 2.1
end
```
```lua
function onCreate()
     debugPrint(263e+4)   -- will print > 2630000.0
     debugPrint(326e-5)   -- will print > 0.00326
     debugPrint(0xFF0000) -- will print > 16711680
end
```

## Booleans
Booleans, often shortened to Bools, are data types that can have two possible values: `true` or `false`. This is commonly used for conditional statements, which allow for different actions by modifying control flow based on whether the condition is `true` or `false`.

## Nil
Nil represents the nothingness or non-existence of a value. This can be used to destroy a variable or table element if it is not used anymore. Or use conditional statements to check if the value is a `nil` or not.

## Tables
Tables are the only data structuring mechanism in Lua. They can store multiple types of values, like strings, numbers, booleans, and even themselves. This is a better alternative than listing them in each variable and makes it easier to access each element of the table. And for making modules, metatables, and classes, which is useful in some cases, tables can be represented as an Array or Dictionary.

If you try to attempt to call a table it will return the table's memory address; Example: `table: 0x55557885d670`. But in PsychLua it will return the table elements with brackets surrounding it. The only way to read the table's element is to use indexing access operation which only gets a single element. Or to iterate a table from a numeric or generic `for` loop.

Example:
```lua
function onCreate()
     debugPrint({}) -- will print > table: 0x55b55a287670
end
```

### Array
Arrays is an ordered list of elements and the most common type of table to define. Each elements are separated by a comma <kbd>,</kbd> character with a pair of curly-braces <kbd>{}</kbd> characters surrounding it.

To read the table's array element, add a indexing access operation which is a pair of bracket <kbd>[]</kbd> characters. With the given index number inside, if the index isn't present or just invalid it returns a `nil` value as a result of it.

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
Dictionaries use key-value pairs for storing elements instead of the index-value pairs that a table array uses. It basically uses names or keys to reference the elements inside a table dictionary. The keys from the dictionary could be either surrounded by a pair of brackets <kbd>[]</kbd> characters with the name to be given; Example: `['name']`. If the name has a special character inside of it or not.

To read the table's dictionary element, add a dot <kbd>.</kbd> character with the given name of the key. Or add a pair of brackets <kbd>[]</kbd> characters with the given name. Really just depends what your comfortable to use when coding; Example: `table.name` or `table.['name']`.

Example:
```lua
local tableGroup1 = {isFatherless = false, hasTouchGrass = true}
local tableGroup2 = {['air'] = 'Oxygen', ["food"] = 'potato', ["love"] = 'carbon monoxide'}
function onCreate()
     debugPrint(tableGroup1)                  -- will print > {isFatherless => false, hasTouchGrass => true}
     debugPrint(tableGroup1.isFatherless)     -- will print > false
     debugPrint(tableGroup1['hasTouchGrass']) -- will print > true

     debugPrint(tableGroup1.air)              -- will print > 'Oxygen'
     debugPrint(tableGroup2['food'])          -- will print > 'potato'
     debugPrint(tableGroup2["love"])          -- will print > 'carbon monoxide'
end
```

### Element Manipulation
| Methods                  | Description                                                                                                        |
|--------------------------|--------------------------------------------------------------------------------------------------------------------|
| Setting element values   | Get the given existing element inside a table, followed by a equal <kbd>&equals;</kbd> character with a new value. |
| Inserting element values | Get the given table with a new element that isn't present inside the table with the specified value to hold.       |
| Removing element values  | Get the given table element and replace the value with a <code>nil</code> value.                                   |

Examples:
```lua
local myStupidNums = {24, 81, 42}
myStupidNums[3] = 34  -- setting elements
myStupidNums[4] = 95  -- inserting elements
myStupidNums[2] = nil -- removing elements

function onCreate()
     debugPrint(myStupidNums) [23, 34, 95]
end
```

***

# Functions
Functions are collections of code that are designed to perform a specific task. They can enable reusable code across the Lua program, which reduces the duplication of code. Functions are defined with the `function` keyword followed by the `identifier`. Or the name of the function with the calling operation <kbd>()</kbd> to declare parameters.

To call a function, get the function's `identifier`, followed by the calling operation <kbd>()</kbd> for the arguments to be passed, if the function has parameters. If the calling operation is not present, it will return the memory address of the given function; Example: `function: 0x5616d89c0770`. 

> **Note**: _Functions are hoisted; once declared, the function is moved to the top of the scope before code execution. This means that you can call a function before it has been declared._

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
Parameters are special types of variables that are located inside the calling operation <kbd>()</kbd> of the given function. Each parameter must be separated by a comma <kbd>,</kbd> character if there are two or more of them. Their main purpose is to add more functionality to the given function for the arguments to be passed.

Example:
```lua
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

### Infinite Parameters
Parameters can be defined as an infinite parameter with the ellipsis <kbd>...</kbd> character. It enables an indefinite number of arguments to pass. If there are no parameters present, they must be the last parameters on the list.

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

## Anonymity
Anonymous functions that are defined are not bound to an identifier. So it only uses the `function` keyword and calling operation <kbd>()</kbd> characters. They're pretty often used in arguments being passed to functions like the `table.sort()` function or being used for closures in some cases.

This can only be called once or more if the anonymous function is declared inside a variable. The use case of anonymous functions is that they could reduce the Lua file size. But the downside is that they are not hosted like regular functions.

Example:
```lua
local grades = {93, 72, 100, 84, 76, 81, 74}
table.sort(grades, function(a,b) -- anon function
     return a < b
end)

function onCreate()
     for _,v in pairs(grades) do
          debugPrint(v) -- will print > 100, 93, 84, 81, 76, 74, 72
     end
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
Control Statements allow you to control the execution of other statements. Which analyzes the statement's condition and decides whether to execute the code if it's `true` or not.

## Conditional Statements
These are a type of control structure that specifies whether or not to execute the block code. They are the most common control structures to use. There are only 3 if-else statements: the `if`, `else`, `elseif` statements.

### If Statement
The If statement checks the condition if it's `true` or not. They are define with the `if` keyword followed by the specified condition to execute the statement with the `then` keyword.

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
The Else statement checks if the condition fails, then this statement will be executed. They are defined with the `else` keyword at the bottom of the `if` or `elseif` statement. That's it, nothing else <!-- Comedy genius --> to say about it.

Example:
```lua
local getWeekDay = os.date('*t').wday -- checks the current day of week
function onCreate()
     if getWeekDay == 6 then -- checks if the current day is 'Friday'
          debugPrint('Day: Friday')
     else                    -- if the condition returns 'false'
          debugPrint('Not Friday')
     end
end
```

### ElseIf Statement
The Elseif statement is an alternative condition if the other condition returns `false`. They are define with the `elseif` keyword with the new condition to execute a new condition followed by the `then` keyword.

Example:
```lua
local getWeekDay = os.date('*t').wday -- checks the current day of week
function onCreate()
     if getWeekDay == 7 then     -- checks if the day is 'Saturday'
          debugPrint('Day: Saturday')
     elseif getWeekDay == 1 then -- checks if the day is 'Sunday'
          debugPrint('Day: Sunday')
     else                        -- checks if both of the condition fails
          debugPrint('Day: Weekdays')
     end
end
```

## For Loop Statement
For loop statement allows you to loop a specific number of times. This loop is commonly used for `setPropertyFromGroup()` and `getPropertyFromGroup()` functions for note modification, modcharts, or something. And used for reading a table values or performing on numeric values. There are 2 types of loops Generic loop or Numeric Loop.

### Numeric
Numeric Loop uses numeric values to increment or to decrement a value. This loop is usually the most common loop to use for `setPropertyFromGroup()` and `getPropertyFromGroup()` functions. There are 3 expressions when declaring a Numeric loop `initializer`, `condition`, and `iteration`.

- `initializer` - The initial variable for the loop to use.
- `condition` - The condition of the loop to execute the code block.
- `iteration` - An optional expression, The iterator for the loop to use you can either increment <kbd>+</kbd> or decrement <kbd>-</kbd> the value; Default value: `incremented`.

Example:
```lua
function onCreate()
     for index = 0, 5, 1 do  -- Increment loop
          debugPrint(index)  -- will print > 0, 1, 2, 3, 4, 5
     end
     for index = 5, 0, -1 do -- Decrement loop
          debugPrint(index)  -- will print > 5, 4, 3, 2, 1, 0
     end
end
```
```lua
function onCreate()
     for index = 0, 300, 50 do -- Increment Loop with each value incremented by 50 
          debugPrint(index)    -- will print > 0, 50, 100, 150, 200, 250, 300
     end
end
```

### Generic
Generic Loop are another type of loop that allows you to traverse all values from a table; return from a `iterator` function from the `in` keyword. This is just an alternative loop for iterating every table elements. There are 2 expressions when declaring a Generic Loop `initializer` and `iterator`.

- `initializer` - The initial variable for the loop to use. The amount of variables depends on the `iterator` function; `pairs()`, `ipairs()`, and `next()` function only uses 1 or 2 variables. But the `gmatch()` function really depends of the captures from the string.
- `iterator` - The iterator for the loop to use, already listed from the `initializer` description.

Example:
```lua
function onCreate()
     local tableThingy = {num1 = 231, num2 = 345, num3 = 234}
     for key, value in pairs(tableThingy) do
          debugPrint(key, value) -- will print > 'num1 = 231, num2 = 345, num3 = 234'
     end
end
```

## While Loop
While Loop statement will loop through a block of code infinitely until the specified condition returns `false`. To declare a while loop, Make an `if` statement but just replace the `if` keyword with the `while` keyword and the `then` keyword with the `do` keyword.

> **Warning**: _Check the condition when making a `while` loop statement. Because it might loop infinitely and crash your game! I'd suggest you test it [here](https://www.mycompiler.io/new/lua) before implementing into the Lua script._

Example:
```lua
local counter   = 5
local factorial = 1
function onCreate()
     while counter > 0 do
          factorial = factorial * counter
          counter   = counter - 1
     end

     debugPrint(factorial) -- will print > 120
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
     for i = 1, 10 do
          debugPrint(i) -- will print > 1, 2, 3, 4, 5
          if i >= 5 then break end
     end
end
```

***

# Modules
Modules are collections of code that is mostly contain functions, classes, variables, and other types of code. These can be reused in different parts of your Lua scripts and help you maintain a code base. They are commonly used to organize code to make it easy to share and reuse code across different Lua scripts.

Most programming languages use `import` and `export` statements; Lua uses table dictionaries for their modular system. To contain code and where the module's shared functions and variables or classes can be stored. With the `return` statement—returning the value of the table for the `require()` function to use.

Example:
```lua
local myModule = {} -- table to contain code, important

myModule.red   = 'ff0000' -- variable
myModule.green = '00ff00'
myModule.blue  = '0000ff'

function myModule.isEven(num) -- function
     return num % 2 == 0
end

return myModule     -- returning the table, important
```
```lua
local mod = require('mods/scripts/modules/myModule')

function onCreate()
     debugPrint(mod.red)        -- will print > 'ff0000'
     debugPrint(mod.isEven(23)) -- will print > false
end
```