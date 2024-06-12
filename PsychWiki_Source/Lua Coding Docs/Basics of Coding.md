# Introduction
Lua is a lightweight, high-level, dynamically typed, multi-paradigm scripting language designed for speed, portability, extensibility, and ease of use in development. In the year 1993, three people in Brazil created Lua. Psych Engine uses Lua due to its portability and flexibility, allowing you to execute Lua code without compiling the game repeatedly, unlike the primary language of Psych Engine—Haxe.

## Differences
Coding in Psych Engine has some "minor differences" compared to vanilla Lua. Psych Engine differentiates from vanilla Lua due to HaxeFlixel, the main engine used by Psych Engine, and LuaJIT, a tracing just-in-time compiler for Lua. Below is a list of minor differences you should know about:

1. If you want your code to execute on a specific event during the game, you should use callback templates. Some standard callbacks are: `onCreate()`, `onUpdate()`, `onEvent()`. Some exceptions are variables, functions, and built-in Lua functions since they can be declared anywhere.

> [!TIP]
> In update <kbd>0.7.1h</kbd> of Psych Engine, you can put code outside of any callback template, which is the best feature to be added in years, but this will only execute once.

2. Unlike standard Lua, which uses the `print()` function to print, Psych Engine uses the `debugPrint()` function. The arguments passed through the `debugPrint()` function will appear at the top-left of the screen and will fade out in six seconds.

3. Psych Engine uses LuaJIT for its Lua programming language. It also uses Lua version <kbd>5.1</kbd>, which has some missing features, but it has extensions you might use, such as bitwise operations, FFI library, etc.

## Source-Code Editors
A source code editor is an IDE designed to edit computer code. They usually add syntax highlighting, indentation, autocomplete, and brace matching. Some popular source code editors include [Visual Studio Code](https://code.visualstudio.com/), [Notepad++](https://notepad-plus-plus.org/downloads/), [Vim](https://www.vim.org/download.php), and [Sublime Text](https://www.sublimetext.com/). You can use any source code editor you’re comfortable with.

If you install Visual Studio Code, extensions that can improve your workflow have been listed below.

- [Lua Snippets](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) - Adds snippets when coding in Lua.
- [Funkin Script AutoCompleter](http://127.0.0.1:5501/source/html/lua_coding_docs/basics_of_coding.html#:~:text=Funkin%20Script%20AutoCompleter) - Adds variables, functions, and callback templates from Psych Engine when coding in Lua.

***

# Comments
Comments are snippets of code that won’t run when running a script. Typical uses of comments include explaining code, excluding code, etc.

To define a single-line comment, you type two hyphen characters <kbd>--</kbd> together. You can place them at the start or end of any line of code, and Lua will ignore them. To define multi-line comments, you type two hyphen characters <kbd>--</kbd> followed by two closed square brackets <kbd>[[]]</kbd> with the code in between them.

Example:
```lua
-- Creating a sprite
function onCreate() -- Triggered at the start of the Lua script
     makeLuaSprite('tag', 'imagePath', 0, 0) -- initializes the lua sprite
     addLuaSprite('tag', true)               -- Adds the lua sprite
end

--[[
function onCreatePost()
end 
]]
```

> [!TIP]
> You can also nest comments; however, nesting only applies to multi-line comments. Add an equal sign character <kbd>=</kbd> between each square bracket, leaving the middle blank. Nesting comments are helpful in cases where commenting out blocks of code contains multi-line comments.

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
Variables are abstract manipulable containers used for storing data values. Variables are essential as they store data throughout the entire Lua language. They are assigned a name, which identifies the variable. The data from most variables can be updated when you assign a new value to the variable.

## Declaring & Assigning
To declare a variable, you should assign the scope, identifier, and the `data` value. The `scope` determines the diversity of a variable. A `global` scope allows other scripts to access the variable, while a `local` scope binds the variable to a single script. To define a `local` scope, you need to use the `local` keyword at the start of a variable. Defining a `global` scope doesn’t require any keyword. The `identifier`—also referred to as the variable name—is used to assign an identity to a variable, which gives scripts accessibility to that variable.

You can assign the variable using the assignment <kbd>=</kbd> operator to specify the `data` value the variable will hold. If the assigning is missing, the variable will have a `nil` value as a placeholder. You can always initialize the variable later on another line of code; however, this only works for `local` variables, not `global` ones.

> [!IMPORTANT]
> Using `local` variables instead of `global` variables is highly recommended. `Global` variables clutter the global environment by appending unnecessary identifiers. Using `local` variables provides better performance and is overall faster than `global` variables. `Local` variables are quicker than global variables because `local` variables are stored in a memory stack, while unlike `local` variables, the global environment stores `global` variables.

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

You can also reassign a variable's `data` value to an existing variable. If you want to change the current `data` value, it's the same as assigning but with a different `data` value to hold.

Example:
```lua
local object_cost1 = 100 -- initial value
function onCreate()
     object_cost1 = 30   -- reassign a new value
     debugPrint(object_cost1) --> 100
end
```
You can also declare multiple variables in one line. If you want to declare multiple variables in one line, separate each variable's identifier and data values with a comma <kbd>,</kbd>.

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
Naming conventions are a set of special rules when naming an `identifier`. Here are the following rules to follow:
- Identifiers can have a combination of characters, such as digit, alphabetical, and underscore characters.
- Identifiers can not have digit characters at the start of the name.
- Identifiers can not have special characters such as <kbd>$</kbd>, <kbd>,</kbd>, <kbd>=</kbd>, etc.
- Naming an Identifier after a Lua keyword is not allowed.
- Identifiers are case-sensitive, so a variable with all capital letters and a variable with all lowercase letters are entirely different.
- Identifiers should have descriptive names like (`health`, `misses`, and `alpha`) to make the code more understandable.

The most common types of naming conventions are `camel case`, `snake case`, and `pascal case`.
- Camel case will always have the first letter lowercase. All words after the first word will start with an uppercase letter. Camel case is the naming convention Psych Engine uses. (`camelCase`, `oneTwoThree`, `helloWorld`).
- Snake case will have every single letter lowercase. When there is a new word, it is separated using an underscore <kbd>_</kbd>. (`snake_case`, `one_two_three`, `hello_world`).
- Pascal case is similar to camel case. Instead of having every word start with a lowercase after the first word, pascal case makes every word start with a capital letter. (`PascalCase`, `OneTwoThree`, `HelloWorld`).

Example:
```lua
varname   = 'Hi'   -- a variable using lowercase
VARNAME   = 'Hi'   -- a variable using uppercase
varName   = 'Hi'   -- a variable using camel case
var_name  = 'Hi'   -- a variable using snake case
VarName   = 'Hi'   -- a variable using pascal case

_var_name = 'Hi'   -- a variable with an underscore '_' character at the start
varname2  = 'Hi'   -- a variable with a number
_______   = 'Hi'   -- a variable with all underscores (this is real)

1varName = 'Error' -- a variable with a number at the start
var-name = 'Error' -- a variable using kebab case
var name = 'Error' -- a variable with a space ' ' character
var$name = 'Error' -- a variable with a special '$' character
```

***

# Data Types
## Strings
Strings are a sequence of characters containing any characters; they could be either alphabetical, digital, punctuation, etc. Their main purpose is to store human-readable text, like words and sentences. They're commonly surrounded by either single-quotes <kbd>''</kbd>, double-quotes <kbd>""</kbd>. Multi-line strings are surrounded with double square brackets <kbd>[[]]</kbd>.

Example:
```lua
local textString1 = 'Hello' -- a single quote string
local textString2 = "World" -- a double quote string

function onCreate()
     debugPrint(textString1) --> Hello
     debugPrint(textString2) --> World
end
```

### Escape Characters
Escape characters are special characters used within a string. They are an alternate interpretation of the characters in the following character sequence. Escape characters allow you to insert illegal characters inside a string. For instance, a single-quote character <kbd>'</kbd> surrounded by a single-quote string will cause an error in the Lua program. Escape characters are defined with the backslash character <kbd>\\</kbd> followed by the specified character to use.

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
Numbers are arithmetic values that represent the quantity or amount of something. It can have a positive or a negative value. Numbers can be an integer (Int), which uses whole numbers, or a floating-point (Float), which uses a number with decimal.

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
Notations are used to represent numbers in an alternative way. There are only two notations to alternatively represent numbers.

| Notations | Descriptions | Example |
|-----------|--------------|---------|
| Scientific notation | Scientific notation allows you to represent extremely large or small<br/>numbers with the “e” notation. | <code>34e+4</code> or <code>34e4</code><br/><code>43e-3</code> |
| Hexadecimal | Hexadecimal is a type of numbering system base on 16. Each starts<br/>with <code>0x</code> followed by the preceding hexadecimal number. Obviously<br/>used for hex coloring to objects. | <code>0xff0000</code><br/><code>0xbe20ab</code> |

## Booleans
Booleans, often shortened to "Bools," are data types that can only receive and output `true or false`. Booleans are used for conditional statements, which allow for different actions by modifying control flow based on whether the condition is `true` or `false`.

## Nil
Nil represents the nothingness or non-existence of a value. A nil value can destroy a non-utilized variable or table element. A standard use for a nil value is using conditional statements to check if the value is a `nil`.

## Tables
Tables are a data structuring mechanism and the only one in Lua. It consists of a collection of values that it stores, such as strings, numbers, booleans, and even themselves—except `nil` values. Tables can store values and make modules, metatables, and classes, which can be helpful in some cases. They are constructed with curly braces characters <kbd>{}</kbd> and can be an array or dictionary.

If you attempt to call a table, it will return its memory address; Example: `table: 0x55557885d670`. In Psych Engine, it returns the table elements with brackets surrounding it. If you want to read a specific element from a table, use the indexing access operation `[ind]` for that.

> [!IMPORTANT]
> Lua uses based-1 indexing for tables, unlike other programming languages. Instead of using `[0]` as the first index, you use `[1]`.

Example:
```lua
function onCreate()
     debugPrint({}) --> []
end
```

### Arrays
Arrays are an ordered list of elements and the most common table type to define. Each item in the array separates using a comma <kbd>,</kbd> character with a pair of curly-braces <kbd>{}</kbd> characters surrounding it.

To read a table's array element, add an indexing access operation, which is a pair of bracket <kbd>[]</kbd> characters. With the given index number inside, if the index isn't present or invalid, it returns a nil value instead.

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
     sillyNumbers[1] = 30 -- reassinging
     debugPrint(sillyNumbers) --> [30, 63, 12, 83]
end
```

### Dictionary
Dictionaries use key-value pairs for storing elements instead of the index-value pairs that a table array uses. It uses names or keys to reference the elements inside a table dictionary. The keys from the dictionary could be either surrounded by a pair of brackets <kbd>[]</kbd> characters with the name inside; Example: `['name']`.

To read a table's dictionary element, add a period <kbd>.</kbd> character with the given name of the key. Additionally, you can add a pair of brackets <kbd>[]</kbd> characters with the given name. The format depends on what you are comfortable using; for Example: `table.name` or `table['name']`.

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
Operators are unique symbols used to carry out operations on operands. Operators assist with conditional statements to determine if the value is true or false before executing a code block. They can be arithmetic, relational, logical, and miscellaneous operators.

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
Relational operators are used to compare multiple operands inside a condition for the code block to execute.

| Operators | Description                                                          | Example  | Returns |
|:---------:|----------------------------------------------------------------------|:---------|:--------|
|   `==`    | Checks if the condition is <ins>equal to</ins> the right.            | `a == b` | `false` |
|   `~=`    | Checks if the condition is <ins>not equal to</ins> the right.        | `a ~= b` | `true`  |
|    `>`    | Checks if the condition is <ins>greater than</ins> the right.        | `4 > 5`  | `false` |
|    `<`    | Checks if the condition is <ins>lesser than</ins> the right.         | `4 < 5`  | `true`  |
|   `>=`    | Checks if the condition is <ins>greater or equal to</ins> the right. | `7 >= 7` | `true`  |
|   `<=`    | Checks if the condition is <ins>lesser or equal to</ins> the right.  | `2 <= 5` | `true`  |

## Logical
Logical operators are for combining multiple conditions and to specify what conditions need to be `true`.

| Operators | Description                                                                                    | Example                    | Returns |
|:----------|------------------------------------------------------------------------------------------------|:---------------------------|---------|
| `and`     | Returns `true` if both statements are `true`;<br> Combines multiple conditions.       | `a == false and b == true` | `false` |
| `or`      | Returns `true` if one of the statements are `true`;<br> Combines multiple conditions. | `a == false or b == true`  | `true`  |
| `not`     | Reverses the condition. If the condition is `false`<br> it will return `true` and vice versa.  | `not false`                | `true`  |

## Miscellaneous
Miscellaneous operators only feature two operators—the length and concatenate operators.

| Operators | Description                                                               | Example          |
|:---------:|---------------------------------------------------------------------------|------------------|
| `#`       | The length operator. The length operator checks the maximum length size of a `string` or `table`. | `#'sussy'`       |
| `..`      | The concatenate operator. The concatenate operator merges multiple `strings` or `numbers` together.     | `'snow'..'ball'` |

***

# Control Statements
Control statements allow you to control the execution of other statements, which analyzes the statement's condition and decides whether to execute the code if it's `true` or not.

## Conditions Statements
These are a type of control structure that specifies whether or not to execute the block code. They are the most common control structures to use. There are only three conditional statements: `if`, `else`, and `elseif` statements.

### If Statement
The `If` statement checks if a condition is `true` or not. An `if` statement is defined with the `if` keyword followed by the specified condition to execute the statement with the `then` keyword at the end.

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
The `elseif` statement checks if the other condition(s) has failed and allows multiple conditions to trigger. These statements are defined with the `elseif` keyword with the specified condition to execute, followed by the `then` keyword at the end.

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
The `else` statement checks if the other condition(s) failed. If they fail, the inner code will execute. `Else` statements use the `else` keyword, and the `else` statement should be declared at the bottom of singular or multiple conditions of the `if` or `elseif` statements.

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
> Please make sure to check the condition of the while loop. Because it might loop infinitely and crash or softlock your game! I'd suggest you testing it [here](https://onecompiler.com/lua) before implementing into your Lua script.

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
> Please make sure to check the condition of the while loop. Because it might loop infinitely and crash or softlock your game! I'd suggest you testing it [here](https://onecompiler.com/lua) before implementing into your Lua script.

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
Functions _(also called subroutine or procedure)_ are sequence of code that are designed to perform a specific task, and be called anywhere in the throughout program. They can enable reusable code across your Lua program, which reduces the duplication of code. Functions have the attributes to values such as strings, numbers, etc, which can be stored in variables.

Functions are defined with the `function` keyword followed by the `identifier` of the function. The `identifier` of function follows the same rules as the naming convetion of variables. Afterwards, the calling operation <kbd>()</kbd> to declare with or without the given parameters. With the function body for the code to execute when called, along with the `end` keyword to mark the end of a block of code.

Since functions are values that a variable can hold, the `local` keyword can be optionally used here. This is because we're using a syntactic sugar when defining a function. And it is always recommended to make a local type, to improve performance and stuff.

> [!WARNING]
> _Just in case, if you decide to declare a local type on callbacks it will not work properly. So please don't do it; it's stupid._

<details><summary><b>Syntax:</b></summary>
<p>

Syntactic Sugar Syntax:
```lua
function name(parameter1, parameter2, parameterX)
     -- function code
end
```

Non-Sugar Syntax:
```lua
local name = function(parameter1, parameter2, parameterX)
     -- function code
end
```

</p>
</details>

Example:
```lua
local function hello()
     debugPrint('Hello Function')
end
```

## Calling
To call a function, get the function's said identifier, followed by the calling operation <kbd>()</kbd> for the arguments to be passed, if the function has parameters. If the calling operation is not present for some reason, it will return the memory address of the given function; Example: `function: 0x5616d89c0770`.

> [!TIP]
> _Functions are hoisted; once declared, the function is moved to the top of the scope before code execution. This means that you can call a function before the line of code that is declared in. This will not work if it is declared with the `local` keyword._

Example:
```lua
local function hello()
     debugPrint('Hello Function')
end

function onCreate()
     hello() --> Hello Function
end
```

When calling a function most of the time it will include the calling operation <kbd>()</kbd>. However there is a special rule for this, if there is only one argument to passed and it's either a literal string or a table constructor. Then the calling operation <kbd>()</kbd> is optional to use here, only requiring a space. Useful in some cases due to looks or for named arguments when calling a function for organization purposes.

Example:
```lua
function onCreate()
     debugPrint "Wow, so cool"     --> Wow, so cool
     debugPrint {3.14, 3.14, 3.14} --> [3.14, 3.14, 3.14]
end
```

## Parameters
Parameters are special types of variables that are located inside the calling operation <kbd>()</kbd> of the given function. Since they're variables locally inside a function, they hold any value you could use a indexing access operation for tables, seen below or calling operation for functions. Each parameter must be separated by a comma <kbd>,</kbd> character if there are two or more of them. Their main purpose is to add more functionality to the given function for any arguments to be passed on.

> [!NOTE]
> _The word parameters and arguments are used interchangeably but they're not the same. Parameters are a special variable in a function definition, while arguments are the values to be passed on the parameters._

Example:
```lua
local function setPos(obj, pos)  -- concatenates setProperty x and y
     if pos[1] ~= nil then       -- makes pos parameter acts like a table
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

Lua adjusts the number of arguments to the number of parameters, as it does in a multiple assignment. Any extra arguments that are not assigned to any parameters are thrown away. If a parameter doesn't receive any arguments it will recieve a `nil` value.

Example:
```lua
local function choose(a, b)
     debugPrint(a or b)
end

function onCreate()
     choose(3)       --> 3 -- a = 3, b = nil
     choose(3, 4)    --> 3 -- a = 3, b = 4
     choose(3, 4, 5) --> 3 -- a = 3, b = 4   (5 is discarded)
end
```

## Special Types
### Variadic
Variadic functions _(also called vararg functions)_ are a special type of function that accepts the number of arguments. It is indicated by a ellipsis character <kbd>...</kbd> at the end of its parameter list. The number of arguments from the ellipsis character <kbd>...</kbd>, will return multiple results. So it's recommended to contain it inside a table constrcutore <kbd>{}</kbd>; Example: `{...}`. 

Example:
```lua
local function average(...)
     local sum = {...}
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

### Anonymous
Anonymous functions are a special way to declare a function. It doesn't include any `identifiers`, it only include the start and end with the function and `end` keywords, with some parameters if it includes one. This is only used for callbacks for specific built-in functions or a specific parameter requires a function to execute.

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
Modules are a collection encapsulate data mostly variables and functions. Which uses a table to wrapped around the functions and variables within, it acts as the namespace. This is pretty useful because it avoids duplication of code by creating a reusable library code across every Lua script. And helps organization of code to maintain your little code base of yours. Lua offers a built-in modules in their language, which are: `string`, `table`, and `math`.

A simple way to create your own modules, we use tables as I mentioned before. You declare `local` variable that holds a table, which acts as a prefix for each object in the module. With each objects inserted into the table, as seen below. Followed by the return statement, returning the table at the last line of code.

> [!IMPORTANT]
> This should be in a separate Lua file, and it should located where this file isn't executed.

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

After you created your own modules, you want your module to import into your Lua scripts. It offers a higher-level function to load and run libraries, called the `require()` function, it returns a table from the given module. To use it make a `local` variable at the top of the code, with a `require()` function. The argument it should receive is the path to the module starting outside the `mods` folder. You could use the slash character <kbd>/</kbd> or a period character <kbd>.</kbd> as a separator.

Example:
```lua
local mod = require 'mods.scripts.modules.test_modules' -- imports the module

function onCreate()
     debugPrint(mod.red)        --> ff0000
     debugPrint(mod.isEven(23)) --> false
end
```

Path Reference:
```txt
mods
└─scripts
  ├─modules
  │ └─test_modules.lua
  └─script.lua
```
