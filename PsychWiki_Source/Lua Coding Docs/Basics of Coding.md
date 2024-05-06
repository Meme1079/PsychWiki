# Introduction
Lua is a lightweight, high-level, dynamically typed, multi-paradigm scripting language, created in 1993, Brazil It was designed to improve its speed, portability, extensibility, and ease of use in development. Which is why it is used in Psych Engine; this allows you to execute Lua code without compiling the game over and over again, unlike doing source code in Haxe.

## Differences
Coding in Psych Engine has some "minor differences" compared when coding in vanilla Lua. This is due to HaxeFlixel, the main engine used by Psych Engine and LuaJIT a tracing just-in-time compiler for Lua. Anyways uuuuhhhhh here's a list of minor differences that you should 100% totally know about:

1. If you want your code to execute on a specific event during the game, you should use callback templates to do that; Examples: `onCreate()`, `onUpdate()`, `onEvent()` just to name a few of them. But variables, functions, and built-in Lua functions can be declared outside of any Callback Templates.

> [!TIP]
> In update <kbd>0.7.1h</kbd> of Psych Engine you can now put code outside of any Callback Templates, which is the best feature to be ever be implemeted in years, but this will only execute once tho.

2. Printing is also different instead of using the `print()` function it's replaced by the `debugPrint()` function. The arguments passed on the `debugPrint()` function will appear at the top-left of the screen. And will fade out in a couple of second

3. Psych Engine uses LuaJIT for it's Lua programming language, it also uses Lua version <kbd>5.1</kbd> which has some missing features. But it has extensions you might probably use like bitwise operations, FFI library, etc.

## Source-Code Editors
You don't know they're basically a text editor program designed specifically for editing source code of computer programs. They usually add such as syntax highlighting, indentation, autocomplete and brace matching. To make your programming experience more easier to code, the most popular source-code editors are [Visual Studio Code](https://code.visualstudio.com/), [Notepad++](https://notepad-plus-plus.org/downloads/), [Vim](https://www.vim.org/download.php), [Sublime Text](https://www.sublimetext.com/), etc. You can use any source-code editors that you're comfortable to use.

If you install Visual Studio Code there are extensions which makes your coding experience even more better. Like supporting a new programming language, adding custom snippets, etc.

- [Lua Snippets](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) - Adds snippets when coding in Lua.
- [Funkin Script AutoCompleter](http://127.0.0.1:5501/source/html/lua_coding_docs/basics_of_coding.html#:~:text=Funkin%20Script%20AutoCompleter) - Adds variables, functions, and callback templates from Psych Engine when coding in Lua.

***

# Comments
Comments are used to explain the context of code and what its purpose is, or to disable the execution of code. This won't affect anything inside the Lua program because it will be completely ignored.

To define a comment, they start with double hyphen characters <kbd>--</kbd> for singular comments. You can place them at the start or end of any line of code, and Lua will ignored them as usually. For multi-line comments they also start with double hyphen characters <kbd>--</kbd>, dollowed by both a opening and closing square brackets <kbd>[[]]</kbd> with the code in-between them.

Example:
```lua
-- Creating a sprite
function onCreate() -- Triggered at the start of the Lua script
     makeLuaSprite('tag', 'imagePath', 0, 0) -- initializes the lua sprite
     addLuaSprite('tag', true)               -- Adds the lua sprite
end

--[[
function onCreatePost()
end ]]
```

> [!TIP]
> You can also nest comments, this is only for multi-line comments tho. To do this, between the two opening and closing square brackets each must be supplying a specified number of equal characters <kbd>=</kbd>. This is very useful in cases where commenting out blocks of code which themselves contain more comments.

Example:
```lua
--[=[
function onCreate()
     --[[
     makeLuaText('textStuff', 'Hi', 0, 100, 100)
     setTextSize('textStuff', 20)
     setObjectCamera('textStuff', 'camHUD')
     addLuaText('textStuff')
     ]]
end

function onUpdate(elapsed)
     -- code here or something, idk
end
]=]
```

***

# Variables
Variables are abstract manipulable containers for storing data values; they can be used throughout the Lua program. They're paired with an associated name, which contains the data value of the variable to be used. The data from the variable can be updated when you assign a new value to it.

## Declaring & Assigning
To declare a variables you should assign the `scope`, `identifier`, and `data` value. The `scope` determins the scope level for the variable to have. It could be a `global` scope which is the default for all variables, or a `local` scope which is define with the `local` keyword. This is will have a limited scope to the block where they are declared. The `identifier` which is the name of the variable, to be referenced or used later.

Now you can assign the variable by using the assignment <kbd>=</kbd> operator to specify the `data` value to hold. If the assigning isn't present, the variable will just have a `nil` value as a replacement. But you could later initialize the variable later on another line of code somewhere. This only works for `local` variables not for `global` ones.

> [!IMPORTANT]
> I highly recommend to use `local` variables instead of `global` variables. It helps avoid cluttering the global environment with unnecessary identifiers, better performance, and are genarally faster than `global` variables. Why there faster because `local` variables are stored in a memory stack while `global` variables are stored in a global environment.

Examples:
```lua
local object_cost1 = 20
local object_cost2 = 12
local object_price = object_cost1 + object_cost2 -- adds two object values

function onCreate()
     debugPrint(object_price) --> 22
end
```
```lua
local object_cost1 -- declaring a variable without any assigning
local object_cost2
function onCreate()
     object_cost1 = 34 -- assigning a local variable
     object_cost2 = 44

     debugPrint(object_cost1) --> 34
     debugPrint(object_cost2) --> 44
end
```

You can also re-assign variable's `data` value to an existing variable. If you want to change the current `data` value, it's just the same as assigning but with a different `data` value to hold.

Example:
```lua
local object_cost1 = 100 -- initial value
function onCreate()
     object_cost1 = 30   -- re-assign a new value
     debugPrint(object_cost1) --> 100
end
```
You can also declare multiple variables in one line if you want to reduce the lines of code for some reason. To do this, each variable's identifier and data values should be separated by a comma. Each comma <kbd>,</kbd> character of them should be equal.

Examples:
```lua
local pi, euler     = 3.14, 2.71     -- multiple variable declaration
function onCreate()
     debugPrint(pi)    --> 3.14
     debugPrint(euler) --> 2.71
end
```
```lua
local lua, haxe, js = 'easy', 'hard' -- missing variable assigning
function onCreate()
     debugPrint(lua)  --> easy
     debugPrint(haxe) --> hard
     debugPrint(js)   --> nil
end
```

### Naming Conventions
Naming conventions are a set of special rules when you're naming an `identifier`, here are following rules to abide to:
- Identifiers can have a combinations of characters e.g. digit, alphabetical, or undescore characters.
- Identifiers cannot have digit characters at the start of the name.
- Identifiers cannot have special characters e.g. <kbd>$</kbd>, <kbd>,</kbd>, <kbd>=</kbd>, etc.
- Identifiers cannot be named after Lua keywords.
- Identifiers are case-sensitive so variable a and A are completely different to each-other.
- Identifiers should have descriptive names like (`health`, `misses`, `alpha`) to make the code more understandable.

Example:
```lua
varname   = 'Hi'   -- a variable (lower case)
varName   = 'Hi'   -- a variable with a capitalize letter (camel case)
var_name  = 'Hi'   -- a variable with an underscore '_' character (snake case)
_var_name = 'Hi'   -- a variable with an underscore '_' character at the start
VARNAME   = 'Hi'   -- a variable that is all capitalize letters (upper case)
varname2  = 'Hi'   -- a variable with a number
_______   = 'Hi'   -- a variable with all underscores (this is real)

1varName = 'Error' -- a variable with a number at the start
var-name = 'Error' -- a variable with a minus '-' character (kebab case)
var name = 'Error' -- a variable with a space ' ' character
var$name = 'Error' -- a variable with a special '$' character
```

***

# Data Types
## Strings
Strings are a sequence of characters containing any characters; they could be either alphabetical, digital, punctuation, etc. Their main purpose is to store human-readable text, like words and sentences. They're commonly surrounded by either single-quotes <kbd>''</kbd>, double-quotes <kbd>""</kbd>, or even double-brackets <kbd>[[]]</kbd> for multi-line strings.

Example:
```lua
local textString1 = 'Hello' -- a single quote
local textString2 = "World" -- a double quote, this is optional to use
function onCreate()
     debugPrint(textString1) --> Hello
     debugPrint(textString2) --> World
end
```

### Escape Characters
Escape characters are a special characters used within a string, they are an alternate interpretation of the characters in the following character sequence, it basically allows you to insert illegal characters inside a string. For instance a single-quote character <kbd>'</kbd> that is surrounded by single-quote string, which will cause an error on the Lua program. They are define with the backslash character <kbd>\\</kbd> followed by the specified character to use after that; they're listed below.

Example:
```lua
function onCreate()
     debugPrint('Don\'t press \'Alt + F4\'') --> Don't press 'Alt + F4'
     debugPrint("dead \"(in a cool way)\"")  --> dead \(in a cool way)"
     debugPrint('C:\\Windows\\System32')     --> C:\Windows\System32
end
```

- <kbd>\'</kbd> - Single-quote character
- <kbd>\"</kbd> - Double-quote character
- <kbd>\\</kbd> - Backslash character
- <kbd>\n</kbd> - New line character
- <kbd>\r</kbd> - Carraige return character
- <kbd>\t</kbd> - Horizontal tab character
- <kbd>\v</kbd> - Vertical tab character

## Numbers
Numbers are arithmetic values that represent the quantity or amount of something, it can have a positive or a negative value. Numbers can be expressed as integers (Int) which uses whole numbers, or floating-point (Float) which uses a number with decimal-point.

Example:
```lua
local int   = 47  -- integer number
local float = 2.2 -- floating-point number
function onCreate()
     debugPrint(int)   --> 47
     debugPrint(float) --> 2.2
end
```

### Notations
Notations are used used to represent numbers in an alternative way. There is only 2 notations to alternative represent numbers.

| Notations | Descriptions | Example |
|-----------|--------------|---------|
| Scientific notation | Scientific notation allows you to represent extremely large or small<br/>numbers with the e notation. | <code>34e+4</code> or <code>34e4</code><br/><code>43e-3</code> |
| Hexadecimal | Hexadecimal, a type of numbering system base on 16. Each starts<br/>with <code>0x</code> followed by the preceding hexadecimal number. Obviously<br/>used for hex coloring to objects. | <code>0xff0000</code><br/><code>0xbe20ab</code> |

## Booleans
Booleans, often shortened to "Bools", are data types that can have two possible values: `true` or `false`. This is commonly used for conditional statements, which allow for different actions by modifying control flow based on whether the condition is `true` or `false`.

## Nil
Nil represents the nothingness or non-existence of a value. This can be used to destroy a variable or table element if it is not used anymore. Or use conditional statements to check if the value is a `nil` or not.

## Tables
Tables are data structuring mechanism and the only one in Lua, it consist a collection of values that it stores like strings, numbers, booleans, and even themselves except `nil` values. These are commonly used for storing values, making modules, metatables, and classes which are useful in some cases. They are constructed with curly braces characters <kbd>{}</kbd> and can represent as an Array or Dictionary.

If you try to attempt to call a table it will return the table's memory address; Example: `table: 0x55557885d670`. But in Psych Engine it returns the table elements with brackets surrounding it. If you want to read a specific element from a table, use the indexing access operation `[ind]` for that.

> [!IMPORTANT]
> Lua uses based-1 indexing for tables, unlike some programming languages. So basically instead of using `[0]` you use this `[1]`. If you asky why they did this? Becuase the Lua libraries prefer to use indices which start at `1`.

Example:
```lua
function onCreate()
     debugPrint({}) --> []
end
```

### Arrays
Arrays are an ordered list of elements and the most common type of table to define. Each elements are separated by a comma <kbd>,</kbd> character with a pair of curly-braces <kbd>{}</kbd> characters surrounding it.

To read the table's array element, add a indexing access operation which is a pair of bracket <kbd>[]</kbd> characters. With the given index number inside, if the index isn't present or just invalid it returns a nil value as a result of it.

Examples:
```lua
local tableGroup1 = {'string', true, nil} -- a table with string, boolean, and nil values
local tableGroup2 = {{45, 13}, {34, 76}}  -- a table with nested tables
function onCreate()
     debugPrint(tableGroup1)       --> ['string', true, null]
     debugPrint(tableGroup1[1])    --> string
     debugPrint(tableGroup2[1][2]) --> 13
end
```
```lua
local sillyNumbers = {29, 63, 12}
function onCreate()
     sillyNumbers[4] = 83 -- inserting
     sillyNumbers[1] = 30 -- re-assinging
     debugPrint(sillyNumbers) --> [30, 63, 12, 83]
end
```

### Dictionary
Dictionaries use key-value pairs for storing elements instead of the index-value pairs that a table array uses. It basically uses names or keys to reference the elements inside a table dictionary. The keys from the dictionary could be either surrounded by a pair of brackets <kbd>[]</kbd> characters with the name to be given; Example: `['name']`. If the name has a special character inside of it or not.

To read the table's dictionary element, add a dot <kbd>.</kbd> character with the given name of the key. Or add a pair of brackets <kbd>[]</kbd> characters with the given name. Really just depends what your comfortable to use when coding; Example: `table.name` or `table.['name']`.

Example:
```lua
local stupidData = {FM = 46, PCM = 12, DA = 25}
function onCreate()
     debugPrint('FM: ' ..stupidData.FM..', PCM: '..stupidData.PCM..', DA: ' ..stupidData.DA)
     --> FM: 46, PCM: 12, DA: 25
end
```
```lua
local stupidData = {FM = 46, PCM = 12, DA = 25}
function onCreate()
     stupidData.FM  = 12 -- inserting
     stupidData.LVL = 4  -- re-assigning
     debugPrint(stupidData) --> ["FM" => 46, "PCM" => 12, "DA" => 25, "LVL" => 4]
end
```

***

# Operators
Operators are unique symbols that are used to carry out operations on operands. For the conditional statements to use to determine if the value is true or false before executing the code block. They can be represented as Arithmetic, Relational, Logical, and Miscellaneous operators.

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

## Conditions Statements
These are a type of control structure that specifies whether or not to execute the block code. They are the most common control structures to use. There are only 3 conditional statements: `if`, `else`, and `elseif` statements.

### If Statement
The If statement checks the condition if it's `true` or not. They are define with the `if` keyword followed by the specified condition to execute the statement with the `then` keyword.

Example:
```lua
local BFScore  = 354
local DADScore = 100
function onCreate()
     if BFScore > DADScore then
          debugPrint('Win!') --> Win!
     end
end
```

### Elseif Statement
The Elseif statement checks if the other conditions failed and allows multiple conditions to be evaluated in a sequence. They are define with the `elseif` keyword with the specified condition to execute, followed by the `then` keyword.

Example:
```lua
local BFScore  = 245
local DADScore = 473
function onCreate()
     if BFScore > DADScore then
          debugPrint('Win!')
     else
          debugPrint('Lose!') --> Lose!
     end
end
```

### Else Statement
The Else statement checks if all of the other conditions failed, if all them failed this will execute. They are defined with the `else` keyword and it should be declared at the bottom of singular or multiple conditions of the `if` or `elseif` statements.

Example:
```lua
local BFScore  = 250
local DADScore = 250
function onCreate()
     if BFScore < DADScore then
          debugPrint('Win!')
     elseif BFScore == DADScore then
          debugPrint('Draw!') --> Draw!
     else
          debugPrint('Lose!')
     end
end
```

## Iterative Statements
Iterative statements allows statements to execute zero or more times, until the condition is met or it breaks the loop. They are commonly used for repeating code or iterating a table. There are only 3 iterative statements: `for`, `while`, and `repeat-until` loop.

### For Loop
For loop statement allows you to loop a specific number of times. This loop is commonly used for `setPropertyFromGroup()` and `getPropertyFromGroup()` functions for note modification, modcharts, or something. And used for reading a table values or performing on numeric values. There are 2 types of `for` loops: Generic loop and Numeric Loop.

#### Numeric
Numeric Loop uses numeric values to increment or decrement a value. This loop is usually the most common loop to use for `setPropertyFromGroup()` and `getPropertyFromGroup()` functions. They are defined with the for keyword followed by 3 expressions: `initializer`, `maximum`, and `iteration`. With the do keyword last.

- `initializer` - The initial variable for the numeric loop to use.
- `maximum` - The maximum number for the numeric loop to stop at.
- `iteration` - The iterator for the numeric loop to use you can either increment or decrement the value. This expression doesn't need to be initialized it will default, to add `1` after each loop.

Example:
```lua
function onCreate()
     for index = 0, 5 do     -- Incrementing loop
          debugPrint(index)  --> 0, 1, 2, 3, 4, 5
     end
     for index = 5, 0, -1 do -- Decrementing loop
          debugPrint(index)  --> 5, 4, 3, 2, 1, 0
     end
end
```

#### Generic
Generic Loop are another type of loop that allows you to traverse all values from a table; return from a iterator function from the `in` keyword. This is just an alternative loop for iterating every table elements. The defining of this loop is the same as the numeric loop, but the there are only 2 expressions: `initializer` and `iteration`.

- `initializer` - The initial variable for the generic loop to use. The amount of variables depends on the iterator function that you're using, `pairs()`, `ipairs()`, and `next()` function only uses `1` or `2` variables. But the `string.gmatch()` functions depends on the captures from the string.
- `iteration` - The iterator for the generic loop to use; iterators to use here are already listed above of this description. You can also use custom iterators function, if you want to, but we're not gonna talk about it. _(Don't even dare)_

Example:
```lua
local characters = {bf = 'boyfriend', dad = 'dad', gf = 'girlfriend'}
function onCreate()
     for k,v in pairs(characters) do
          debugPrint({k,v}) --> ["bf" => 'boyfriend'], ["dad" => 'dad'], ["gf" => 'girlfriend']
     end
end
```

### While Loop
While loop statement will loop infinitely until the condition returns `false`. This is rarely used but if it is, it's only used if you're iterating based on a condition rather than number of times, the use this loop. It is declared with the `while` keyword followed by the condition to loop over until it returns `false`, with the `do` keyword last.

> [!CAUTION]
> Please make sure to check the condition of the while loop. Becuase it might loop infinitely and crash or softlock your game! I'd suggest you testing it [here](https://onecompiler.com/lua) before implementing into your Lua script.

Example:
```lua
local counter   = 5
local factorial = 1
function onCreate()
     while counter > 0 do
          factorial = factorial * counter
          counter   = counter - 1
     end
     debugPrint(factorial) --> 120
end
```

### Repeat-until Loop
Repeat until statement works similarly as the `while` loop, but has a major differences. The block of code has a guaranteed to be executed at least once, before checking if the condition is `true`, it will repeat the loop until its condition is met. It is declared with the `repeat` keyword followed by the body of code, with the `until` keyword next to the condition to loop over.

> [!CAUTION]
> Please make sure to check the condition of the while loop. Becuase it might loop infinitely and crash or softlock your game! I'd suggest you testing it [here](https://onecompiler.com/lua) before implementing into your Lua script.

Example:
```lua
function onCreate()
     repeat -- me getting paid
          money = money + 1
     until money >= 10
     debugPrint(money)
end
```

## Jump Statements
Jump statements allows the manipulate the flow of the program, if the condition is met. They are used to manage the control flow of iterative statements and functions. There are only 2 jump statements: `return` and `break` statements.

### Return Statement
Return statement causes the function to terminate its execution and returns with or without the value. If the return statement didn't provide any values to return, it actually returns nothing, no `nil` values, it's just nothing. They are define with the `return` keyword obviously with the optionally provided value.

Example:
```lua
function stupid()
     return 'bf'
end

function onCreate()
     debugPrint(stupid()) --> bf
end
```

They can also return multiple values each must be separated by comma characters <kbd>,</kbd>; Example: `return 3, 4, 6`. If you want to get the values convert it into a table, it will only get the first value if you didn't do it. If you don't like it using this method, you could use variables by using multiple assigning of variables depending of the returning values.

Examples:
```lua
function numbers()
     return 3.14, 420
end

local numbers = {numbers()} -- converts it into a table
function onCreate()
     debugPrint(numbers) --> 3.14, 420
end
```
```lua
function numbers()
     return 3.14, 420
end

function onCreate()
     pi, drugs      = numbers()     -- pi = 3.14, drugs = 420
     pi             = numbers()     -- pi = 3.14, drugs = nil
     pi, drugs, idk = numbers()     -- pi = 3.14, drugs = 420  (idk is discarded)
     pi, drugs, idk = numbers(), 47 -- pi = 3.14, drugs = 420, idk = 47
end
```

### Break Statement
Break statement forcefully stops any iterative statements from looping. This mainly used to forcefully break the loop on a specific condition that is set on. This is define with the `break` keyword obviously.

Example:
```lua
function onCreate()
     for index = 0, 30 do
          if index > 10 then
               break
          end
          debugPrint(index)
     end
end
```

***

# Functions
Functions are collections of code that are designed to perform a specific task. They can enable reusable code across your Lua program, which reduces the duplication of code. And carry out a specific task procedure or subroutine in other languages or compute and return values.

Functions are defined with the `function` keyword followed by the `identifier` of the function. With the calling operation <kbd>()</kbd> to declare with or without the given parameters. Also The `identifier` of function follows the same rules as the naming convetion of variables. _(Just to let you know!)_

To call a function, get the function's identifier, followed by the calling operation <kbd>()</kbd> for the arguments to be passed, if the function has parameters. If the calling operation is not present, it will return the memory address of the given function; Example: `function: 0x5616d89c0770`.

> [!TIP]
> Functions are hoisted; once declared, the function is moved to the top of the scope before code execution. This means that you can call a function before the line of code that is declared in. But it should be a global type function.

Example:
```lua
function hello()
     debugPrint('Hello Function')
end

function onCreate()
     hello() --> Hello Function
end
```

Another special rule when calling a function. If the function has one single argument and this argument is either a literal string or a table constructor, then the parentheses are optional to use here. You could probably used this for named arguments when calling a function for organization purposes.

Example:
```lua
function print(args)
     debugPrint(args.text, args.color)
end

function onCreate()
     print{text = 'FATAL ERROR', color = 'ff0000'} --> FATAL ERROR
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

In addition, they serve as `local` variables, initialized with the parameters that were provided in the function call. A function can be called with a different number of arguments than parameters. Lua adjusts the number of arguments to the number of parameters, as it does in a multiple assignment. Extra arguments are thrown away; additional parameters receive a `nil` value.

Example:
```lua
function choose(a, b)
     debugPrint(a or b)
end

function onCreate()
     choose(3)       --> 3 -- a = 3, b = nil
     choose(3, 4)    --> 3 -- a = 3, b = 4
     choose(3, 4, 5) --> 3 -- a = 3, b = 4   (5 is discarded)
end
```

Parameters can have infinite parameter definied with the ellipsis <kbd>...</kbd> character at the end of its argument list. This enables an indefinite number of arguments to pass after the preceding parameters. I'd recommended to declare a local variable containing the ellipsis <kbd>...</kbd> character surrounded by curly-braces <kbd>{}</kbd>. To convert the arguments into a table to iterate.

Example:
```lua
function average(...)
     local sum = ({...})
     local result = 0
     for i = 1, #sum do
          result = result + sum[i]
     end
     return result / #sum
end

function onCreate()
     debugPrint(average(1, 2, 3))                            --> 2.0
     debugPrint(average(45, 32, 29, 34, 23, 12))             --> 29.166666666667
     debugPrint(average(43, 91, 23, 54, 38, 23, 12, 90, 34)) --> 45.333333333333
end
```

## Anonymity
Anonymous Functions are a special way to declare a function. It doesn't include any `identifiers`, it only include the start and end with the function and `end` keywords, with some parameters if it even has one. This is only used for callbacks for specific built-in functions or a specific parameter requires a function to execute.

Example:
```lua
function onCreate()
     createTimer('timer', 3.0, function() -- anonymous function at use
          debugPrint('You\'re too slow!') --> 3.0
     end)
end

local timers = {}
function createTimer(tag, timer, callback)
     table.insert(timers, {tag, callback})
     runTimer(tag, timer)
end
     
function onTimerCompleted(tag, loops, loopsLeft)
     for _,v in pairs(timers) do
          if v[1] == tag then v[2]() end
     end
end
```

***

# Modules
Modules are collection of encapsulate data mostly variables or functions. They can be pretty useful in reusing library code in different parts of your Lua scripts and help you maintain a code base. It avoids duplication of code and organize code to make it easy to share and reuse code across different Lua scripts.

Modules are simple to create, it uses table dictionaries for its modular system containing libraries to store; functions or variables, as seen below. With the return statement, returning the table at the last line of code. If you want to import said module, you'll use the `require()` function to import your modules.

Path:
```txt
mods
└─scripts
  ├─modules
  │ └─test_modules.lua
  └─script.lua
```

Example:
```lua
local myModule = {} -- table to contain code, important

myModule.red   = 'ff0000'     -- variables
myModule.green = '00ff00'
myModule.blue  = '0000ff'

function myModule.isEven(num) -- function; same as "myModule.isEven = function() .. end"
     return num % 2 == 0
end

return myModule -- returning the table, important
```
```lua
local mod = require 'mods.scripts.modules.test_modules' -- imports the module

function onCreate()
     debugPrint(mod.red)        --> ff0000
     debugPrint(mod.isEven(23)) --> false
end
```