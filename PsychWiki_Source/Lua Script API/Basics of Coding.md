# Introduction
Lua is a scripting language used in Psych Engine modding. It is very similar to Python but it's more faster to run and more simple than Python. The current version of Lua that Psych Engine is using is (5.1).

To start of your epic coding you must download [VSCode](https://code.visualstudio.com/) it's available in Windows, Mac, and Linux. It will make your coding easier very recommended.

To create your dumb first lua file press [Command + N] this will create a new file. Then click [Select a language] now type lua and press enter boom you're done. If you want to save your lua file just press [Command + S] now select to path to be save.

# Variables
Variables in programming is a manipulable storage area that holds the Data type. To create a variable type the name of the variable to be used. Between the name and the Data type put the equal sign `=` after that put the data type you want.

Example:
```lua
function onCreate() -- The start of lua script
     local greet = 'Hello' -- greet variable
     debugPrint(greet) -- will print 'hello'
end
```

You can do multiple Variables in a single line. In each Variable/Data types they should be separated by a comma `,`. If the there is more Variables than Data types it will assign the missing Data types into `nil`.

Example:
```lua
function onCreate()
     local a, b, c = 12, 14, 13 -- Complete 
     local d, e, f = 12, 14     -- Incomplete Data Types
     debugPrint(a, b, c) -- will print '12 14 13'
     debugPrint(d, e, f) -- will print '12 14 nil'
end
```

## Naming Variables Rules
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

## Global and Local Scope
- `Global` - The variable or function that is accessible globally
- `Local` - The variable or function that is only accessible on the current scope that is located to

Example:
```lua
fish = 'love' -- global
function onCreate()
     local fish = 'hate' -- keyword local is used
     local thing = 'thing'
     debugPrint(fish) -- will print 'hate' 
end

function onCreatePost()
     debugPrint(thing) -- won't print anything (nil)
     debugPrint(fish) -- will print 'love'
end
```

***

# Data Types
### Strings
Strings are a sequence of texts, they are usually surrounded by single-quote `''`, double-quote `""`, and double-brackets `[[]]`. Single-quote `''` and double-quotes `""` are the same when executed. But double-brackets `[[]]` are use in multiline strings for longer texts example shown below.

Example:
```lua
function onCreate()
     local str1 = 'Hello'
     local str2 = "World"
     local str3 = [[Culturae organicae te 
     capiet ad loca quae numquam 
     expectata non visere!]]

     debugPrint(str1)
     debugPrint(str2)
     debugPrint(str3)
end
```

If you want to add quotes inside of string don't do it. Because Lua will think the string ends there, thus causing an error but you can avoid this problem with escape characters.

Escape character are constructed with a backslash character `\`. Lua will convert the special character into string characters.

- `\'` - Single-quote
- `\"` - Double-quote
- `\\` - Backslash
- `\[` - Left Bracket
- `\]` - Right Bracket

### Numbers
Numbers is quantity or amount of value they can negative or positive value. Numbers can be represented as an Int or Float. Int is a type of Number that doesn't support decimal-point. Float on the other hand supports the decimal-point.

Example:
```lua
function onCreate()
     local num1 = 1 -- Int
     local num2 = 2.12 -- Float

     debugPrint(num1)
     debugPrint(num2)
end
```

### Booleans
Booleans are simple there are two values which it can be represented as `true` or `false`. You can use Booleans to check if the condition is `true` or not.

### Nil
Nil data type represents nothingness or nonexistent. You can use this for checking if the value is `nil` with control structures or destroying a data type inside of a variable.

### Tables
Tables are used to store multiple or different data types, Tables are always constructed with curly braces `{}`. You make Tables act like an Array or Dictionary.

Array are sorted in a list of values there are each separated with commas `,`. To read an Array add a pair of brackets `[]` next to the Variable name and the position number inside of the brackets `[]`. Unlike every programming language that starts with `0` Lua starts with `1`.

Example:
```lua
function onCreate()
     local a = {'string1', true, nil}
     debugPrint(a[1]) -- will print 'string1'
end
```

Dictionary are sorted in a key and value list. To create a Dictionary type the key followed by a equal character `=` and a value each separated with commas `,`. There are two different ways to read a Dictionary either add a dot character `.` followed by the name of key next to the Variable name. Or a brackets with single/double quotes `['']`/`[""]` followed by the name of key inside of it.

Example:
```lua
function onCreate()
     local d = {a = 'guh', b = false, c = 34.69}
     debugPrint(d.a) -- will print 'guh' (first method) [recommended]
     debugPrint(d.['c']) -- will print '34.69' (second method)
end
```

### Function
A function is a collection of code that performs a specific task.

You can put a function on a variable but don't put the name of the function only `function()`. And accessing it, put the variable name with a parentheses `()`, same works with Tables.

If you want add more functionality to the function. You can add parameters, parameter are a special type of variable passed inside of the function. If called outside of the function it will cause an error or a Nil value.

Example:
```lua
function onCreatePost()
     setPos('boyfriend', {100, 500}) -- Changes the position to x = 100 and y = 500
end

-- function created by Mayo78
function setPos(obj, pos) -- Concatenates setProperty x and y
     if pos[1] ~= nil then
          setProperty(obj..'.x', pos[1])
     end
     if pos[2] ~= nil then
          setProperty(obj..'.y', pos[2]) 
     end
end
```

***

# Comments
Comments are used to explain the code and how they work. They can't interact the code and won't cause an error. Example shown on other examples.

- `--` - A single comment.
- `--[[]]` - A multi comment.

***

# Operators
Operators are unique symbols that are used to carry out operations on operands within a statement.

### Arithmetic
- `+` - Addition
- `-` - Subtraction
- `*` - Multiplication
- `/` - Division
- `^` - Exponent / To the power to
- `-` - Unary Negation
- `%` - [Modulus](https://www.calculatorsoup.com/calculators/math/modulo-calculator.php)

### Relational
- `==` - Checks if the condition is equal to the right.
- `~=` - Checks if the condition is not equal to the right.
- `>` - Checks if the condition is greater than the right. _(Only do this with Numbers)_
- `<` - Checks if the condition is lesser than the right. _(Only do this with Numbers)_
- `>=` - Checks if the condition is greater or equal to the right. _(Only do this with Numbers)_
- `<=` - Checks if the condition is lesser or equal to the right. _(Only do this with Numbers)_

### Logical
- `and` - Combines two conditions together; will return `true` if BOTH sides are `true`.
- `or` - Combines two conditions together; will return `true` if EITHER left or right are `true`.
- `not` - Reverses the condition; if it is equivalent to `false`, then the not operator will set it to `true`, and vice versa.

### Miscellaneous
- `..` - Used to concatenate two or more Strings.
- `#` - Returns the current length of the String or Table.

***

# Control Structures
Control Structures are a block code which analyzes values and decide where to execute or not.

Also am only going to mention `for` loop and not `while`, `repeat`. Because there are rarely used in scripts but they do work tho.

### If/Else/Else-If Statement
These are typical basic statements that check to see if the condition is `true` before running the code. 

The `if` statement is simple, it checks if the condition is `true`. You can add a `elseif` statement as an optional statement inside of the `if` statement. You can use this as an alternate condition if the `if` statement returns to `false`.

Another optional statement you can add is `else` statement if the `if` or `elseif` statements return `false` then this statement will be called.

```lua
function onCreate()
     makeLuaText('textTag', ' ', nil, 0, 0)
     addLuaText('textTag', true)
end

function onUpdate(elapsed)
     local health = getProperty('health') -- gets the current health
     if 2 <= health then -- if above or equal than 2
          setTextString('textTag', health..' is Full')
     elseif 1 <= health then -- if above or equal than 1
          setTextString('textTag', health..' is Mid Full')
     else -- lesser than 1
          setTextString('textTag', health..' is Low')
     end
end
```

### For Loop
The `for` loop allows you to loop the number of times to execute the loop. Either a you can do a numeric value or Table values. This loop is generally used in `setPropertyFromGroup()` and `getPropertyFromGroup()` functions for note manipulation or other stuff. The `for` loop can be either a Numeric Loop or Generic Loop.

Numeric Loop is the default loop for the `for` loop. The loop is declared with the `index1`, `index2`, and an optional `increment` value.

- `index1` - The starting index value of the loop, Default value: `1`.
- `index2` - The ending index value of the loop.
- `increment` - Whether of not will be negative or positive value.

Example:
```lua
function onCreate()
     for i = 10, 0, -1 do -- The negative increment
          debugPrint(i) -- this will countdown to 10 to 0
     end
end
```

Generic Loop does not iterate over a series of numbers; rather, it iterates over items in a collection. The `in` keyword is used by the loop to iterate through a sequence. From the `pairs()` or `ipairs()` functions of the loop for more information check the Lua Built-in Functions section.

Example:
```lua
fruits = {'banana', 'orange', 'apple', 'grape'} -- a table
function onCreate()
     for i,v in ipairs(fruits) do -- gets the key and value inside of the table
          debugPrint(i, v) -- prints every key and value in the table
     end
end
```

### Return
The `return` statement ends the currently execution of a code and returns the result of code. If there is any code below the `return` statement it will cause an error.

Example:
```lua
function onCreatePost()
     debugPrint(mathMulti(4, 5)) -- will print '9'
end

function mathMulti(x, y)
     return x * y
end
```

### Break
The `break` statement ends the loop immediately when the condition is met. 

Example:
```lua
function onCreate()
     for i = 1, 50 do -- 1 to 50
          debugPrint(i)
          if i == 25 then 
               break -- ends the loop
          end
     end
end
```

***

# Lua Built-in Functions
### dofile(path:String)
This execute a chunk of code inside of the lua file.

- `path` - The path to the lua file.

Example: `dofile(mods/scripts/other/luaFile.lua)`

### type(data:Value)
Returns the data type of the object.

- `data` - The object to be used.

Example: `debugPrint(type('str'))` This will print 'string' 

### pairs(tab:Table)
Returns the keys and values from the Table in a unorganized order.

### ipairs(tab:Table)
Returns the keys and values from the Table in a numerical order. Table Dictionary that uses key numbers or Table Arrays can be used here. If the value has a `nil` value then it will stop executing the loop.

Example:
```lua
function onCreate()
     local t = {[2] = '2d', [4] = '4d', [1] = '1d', [3] = '3d', [5] = nil, [6] = '5d'}
     for i,v in ipairs(t) do
          debugPrint(i, v)
     end
end
```

### tostring(num:Float)
Converts the Number data type into a String.

### tonumber(str:String)
Converts any Number inside of String into a real Number data type. If any letter is converted in this function it will cause an error.

***

# Lua Data Type Manipulation
## String Functions
### string.lower(str:String)
Converts any <ins>upper case</ins> letters into lower case.

- `str` - The string you want.

### string.upper(str:String)
Converts any <ins>lower case</ins> letters into upper case.

- `str` - The string you want.

### string.byte(str:String, pos:Int)
Converts any letters into <ins>UTF-8 numeric code</ins>.

- `str` - The character code or string.
- `pos` -  An optional value that get the position of the character.

Example: `string.byte('a')` will return '97'

### string.char(num:Int)
Converts any UTF-8 numeric code into <ins>alphabet character</ins>.

- `num` - the numeric code.

Example: `string.char(97)` will return 'a'

### string.gsub(str:String, pattern:String, replacement:String, limit:Int)
Returns a copy of a string and <ins>replaces it with a new string</ins>.

- `str` - The string you want.
- `pattern` - Part of the string you want to replace.
- `replacement` - The string that will be replacing the previous one.
- `limit` - An Optional value that limits on replacing the new string.

### string.rep(str:String, limit:Int, seperation:String)
<ins>Repeats</ins> the string.

- `str` - The string you want.
- `limit` - The limit of repeating it.
- `seperation` - The separation between the repeated string.

### string.reverse(str:String)
<ins>Reverses</ins> the string, that's it.

- `str` - The string you want.

### string.find(str:String)
<ins>Finds</ins> the string works the same with `stringStartsWith()` and `stringEndsWith()` but has no limit.

- `str` - The string you want.

***

## Table Functions
### table.insert(tab:Table, pos:Int, val:Value)
<ins>Inserts</ins> a new value inside of a table.

- `tab` - The table you want.
- `pos` - The position in each array of the table.
- `val` - The value that you want to insert.

### table.remove(tab:Table, pos:Int)
<ins>Removes</ins> a value inside of a table.

- `tab` - The table you want.
- `pos` - The position in each array of the table.

### table.concat(tab:Table, sep:String)
<ins>Concatenate</ins> the value inside of the table into a string.

- `tab` - The table you want.
- `sep` - The separation between the value in the table.

### table.sort(tab:Table)
Makes the table <ins>sorted in an alphabetical order</ins>.

- `tab` - The table you want.

***

## Mathematical Functions
### math.max(num:Float)
Returns the <ins>highest value</ins> that, it could find.

- `num` - Multiple array of numbers.

Example: `math.max(12, 34, 1)` will print '34' because it's the largest value.

### math.min(num:Float)
Returns the <ins>lowest value</ins> that, it could find.

- `num` - Multiple array of numbers.

Example: `math.min(12, 34, 1)` will print '1' because it's the lowest value.

### math.ceil(num:Float)
Rounds a Float to its <ins>highest value</ins>.

Example: `math.ceil(5.1)` will print '6'.

### math.floor(num:Float)
Rounds a Float to its <ins>lowest value</ins>.

Example: `math.floor(5.9)` will print '5'.

### math.sin(num:Float)
Returns the <ins>sine</ins> of the number.

### math.cos(num:Float)
Returns the <ins>cosine</ins> of the number.

### math.tan(num:Float)
Returns the <ins>tangent</ins> of the number.

### math.sinh(num:Float)
Returns the <ins>hyperbolic sine</ins> of the number.

### math.cosh(num:Float)
Returns the <ins>hyperbolic cosine</ins> of the number

### math.tanh(num:Float)
Returns the <ins>hyperbolic tangent</ins> of the number.

### math.asin(num:Float)
Returns the <ins>arccosine sine</ins> of the number, Goes from `-1` to `1`.

### math.acos(num:Float)
Returns the <ins>arccosine cosine</ins> of the number, Goes from `-1` to `1`.

### math.atan(num:Float)
Returns the <ins>arccosine tangent</ins> of the number, Goes from `-1` to `1`.

### math.sqrt(num:Float)
Returns the square root of the number.

Example: `math.sqrt(5)` will print `2.2360679775`.

### math.abs(num:Float)
Returns the absolute of the number.

Example: `math.abs(-5)` will convert it to positive `5`.

### math.pi
Returns pi length of 13 digits.

### math.huge
Returns the <ins>largest numerical value</ins> which is infinite.