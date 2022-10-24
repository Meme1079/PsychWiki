# Variables
Variables are manipulable storage spaces that can contain a variety of values. You can use these for <ins>storing values and shortening the code</ins>.

You can used them for <ins>shortening a line of functions and not repeating the code over and over again</ins>.

When creating a Variable put a name, afterwards put equal `=` then put anything you want after equal `=`, it could be a **String**, **Boolean**, **Numbers**, Etc. And you <ins>can not put a keywords in lua when naming a variable</ins>.

Reserved Keywords:
```lua

and       or       not       local     true       break    
false     nil      if        else      elseif     goto    
then      for      in        repeat    until      
while     do       return    end       function

```

Example of naming a Variable:
```lua
-- Valid --

Var1 = 'string1' -- a string variable                             
Var_Space = 'string2' -- a variable that has a underscore         
_Space = true -- a variable with the word underscore before its name
_ = 69.6 -- a variable that is only an underscore, strange right? 
Var2 = 'Corn'..' Lover' -- a variable with concatenate operator (Same works with other operators)

-- Invalid --

if = true -- a variable named after a keyword     
~= = 'yes'  -- a variable named after a token                  
18.1and1*dv/> = 'cool' -- a variable spammed                      
Val 3 = 45.3 -- a variable with a space                           
13 = 'no' -- a variable that has a Int (Same works with other variables)
```

You can also make multiple variables inside of a line by each <ins>separating the name and value with the comma `,`</ins>.

Example:
```lua
a, b, c = 3, 23.23, true

function onCreate()
     debugPrint(a, b, c) 
     -- a = 3, b = 23.23, c = true
end
```

## Types of Values
- `Strings` - A sequence of characters, you can put the characters around with single apostrophe `''` or double apostrophe `""`. You can also do double brackets `[[]]` for multi line **Strings**.
- `Booleans` - A type of value it can be two possible values `true` or `false`.
- `Numbers` - A numerical value used only to count or measure objects. **Numbers** can be represented as a **Int** where the number with no decimal point. Or it can be a **Float** where the number has a decimal point.
- `Nil` - Zero or nonexistent, used to destory a value in a variable.
- `Tables` - A type of value that stores multiple types of values. Tables can be either **Arrays** or **Dictionary**. Most programming language at the start of every value in a **Array** or **Dictionary** are always in `0` but in Lua it should be `1`.
     - `Arrays` - A collection of different values. When accessing this type of table put the variable name then brackets `[]` and inside must be a position number of the table.
     - `Dictionary` - They define each value with a key, then a value it’s the same as creating a variable. When accessing this type of table put the variable name then brackets `[]` and inside must be a key name then apostrophe single `''` or double `""`. Or put a dot `.` then the key name.

Example:
```lua
ExVar1 = 'string' -- String (String)
ExVar2 = "string" -- String (Double [Optional])
ExVar3 = [[
     Look a multi line string
     does it look cool?
]]                -- String (Brackets)
ExVar4 = 5 -- Number (Int)
ExVar5 = 0.5 -- Number (Float)
ExVar6 = true -- Boolean
ExVar7 = nil -- Nil
ExVar8 = {value} -- Table Array      (Empty)
ExVar9 = {       -- Table Dictionary (Empty)
     key = value
} 

-- Table Section --

TabArray1 = {'Psych', 'Engine', 'is', 'Amazing'} -- a table array
--[[ Use tableName[pos] to access it!
     Example: TabArray1[3] will print 'is' ]]

TabArray2 = {'Psych', {'Engine', 'is', 'Amazing'}} -- a table array with a table
--[[ Use tableName[pos1][pos2] to access it! 
     Example: TabArray2[2][3] will print 'Amazing' ]]

TabDict1 = { -- a table dictionary
     a = 'banana',
     b = 'corn',
     c = 'eggplant'
}
--[[ Use tableName.key or tableName['key'] to access it! 
     Example: TabDict1.a will print 'banana'
     Example: TabDict1['c'] will print 'eggplant' ]]

TabDict2 = { -- a table dictionary with a table
     num = {-1, -0.5, 0, 0.5, 1},
     boo = {true, false},
     str = {'FNF', 'Psych', 'Engine'}
}
--[[ Use tableName.key[pos] or tableName['key'][pos] to access it! 
     Example: TabDict1.num[3] will print '0'
     Example: TabDict1['boo'][1] will print 'true' ]]
```

## Global and Local Variables
- `Global variables` - A type of variable that is accessible globally.
- `Local variables` - A type of variable that is not for looks, **Local** are only accessible on the current scope that is located to, you can do this on a `function` too.

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

# Comments
Comments are used to give <ins>context to the line of a code</ins>; they won't interact with the code.

- `--` - A single comment.
- `--[[]]` - A multi comment.

***

# Operators
An operator is a symbol that tells the interpreter to perform <ins>specific mathematical or logical statements</ins>.

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
- `..` - Used to concatenate two or more **Strings**.
- `#` - Returns the length of a string or the number of items in a **Table**.

***

# Control Structures
Control Structures allow to perform tasks if the condition is `true`. 

Also am only going to mention `for-do` loop and not `while-do`, `repeat-until`. Because there are rarely used in scripts but they do work.

### If Statement
A common basic statement to test if the condition is `true` it will execute the code.

You can add a `elseif` statement as an optional statement inside of the `if` statement. You can use this as a alternate conditions if the `if` statement returns to `false`.

Another statement you can add is `else` this statement allow you to execute opposite condition of `if` or `elseif` statements and will only activate if the `if` or `elseif` returns `false`.

Example:
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
It enables you to run a collection of commands, primarily used in `setPropertyFromGroup()` and `getPropertyFromGroup()` for notes.

This loop can be a **Numeric** which is constructed by `start value`, `end value`. And an optional `increment` on the loop. Or it can be **Generic** are generally paired by `in` keyword and `pairs()` or `ipairs()`. This loop is used for getting the keys or values inside of the **Table**.

- `start value` - A variable inside of the `for-do` and the start of the loop.
- `end value` - The end of the loop value.
- `increment` - An optional value that takes a step on every loop.

Example of a Numeric Loop:
```lua
function onCreatePost()
     for i = 0, getProperty('unspawnNotes.length')-1 do -- get's every note in the chart then subtracts one
          setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true) -- when hit, doesn't play an animation
          setPropertyFromGroup('unspawnNotes', i, 'noMissAnimation', true) -- when miss, doesn't play an animation
     end
end
```

Example of a Numeric Loop with the increment:
```lua
function onCreate()
     for i = 1, 10, 2 do -- will take 2 steps
          debugPrint(i) -- will print '1, 3, 5, 7, 9'
     end
end
```

Example of a Generic Loop:
```lua
fruits = {'banana', 'orange', 'apple', 'grape'} -- a table
function onCreate()
     for k,v in pairs(fruits) do -- gets the value inside of the table
          debugPrint(v) -- prints every value in the table
     end
end
```

***

# Keywords Functions
### function(parameter)
A function is a collection of code that cooperates to complete a task.

You can put a function on a variable but don't put the name of the function only `function()`. And accessing it, put the variable name with a parentheses `()`, same works with tables.

- `parameter` - They are a named variable that is passed into a function and used to import arguments. Using `,` you can create more of them.

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

### return
Returns the finish result of the function or a value.

Example:
```lua
function onCreatePost()
     debugPrint(mathMulti(4, 5)) -- will print '9'
end

function mathMulti(x, y)
     return x * y
end
```

### break
This will finish the loop early.

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

# Basic Functions
### dofile(file)
This execute a chunk of code on a another lua file. This can get variables and functions if there not <ins>local</ins>.

Example: `dofile(mods/scripts/other/luaFile.lua)`

### type(value)
Gets the type of value of the variable.

Example: `debugPrint(type(true))` This will print 'boolean'.

### pairs(table)
This will get <ins>each key and value inside of the table</ins>. This will sort it randomly.

Example:
```lua 
fruits = {'banana', 'orange', 'apple', 'grape'} -- a table array
function onCreate()
     for k,v in pairs(fruits) do -- gets the value inside of the table
          debugPrint(k..'|'..v) -- prints every value and key in the table
     end
end
```

### ipairs(table)
This works the same as `pairs()` but if the table is dictionary. <ins>The key must be a number and be surrounded by brackets `[]`</ins>. And will sort it in chronological order. If the value is **Nil** <ins>then the loop will stop at there</ins>. 

If you decided to put an alphabet in the brackets `[]` then it will not work and will print nothing.

Example:
```lua
fruits = {[4] = 'banana', [1] = 'orange', [3] = 'apple', [2] = 'grape'} -- a table dictionary
function onCreate()
     for k,v in ipairs(fruits) do -- gets the value inside of the table
          debugPrint(k..'|'..v) -- prints every value and key in the table
     end
end
```

***

# Lua Value Manipulation
These are functions that can manipulate values.

## String Functions
### string.lower(str:String)
Converts any <ins>upper case</ins> alphabet into lower case.

- `str` - The string you want.

### string.upper(str:String)
Converts any <ins>lower case</ins> alphabet into upper case.

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
Returns a copy of a string and replaces it with a new string.

- `str` - The string you want.
- `pattern` - Part of the string you want to replace.
- `replacement` - The string that will be replacing the previous one.
- `limit` - An Optional value that limits on replacing the new string.

### string.rep(str:String, limit:Int, seperation:String)
Repeats the string.

- `str` - The string you want.
- `limit` - The limit of repeating it.
- `seperation` - The separation between the repeated string.

### string.reverse(str:String)
Reverses the string, that's it.

- `str` - The string you want.

### string.find(str:String)
Finds the string works the same with `stringStartsWith()` and `stringEndsWith()` but has no limit.

- `str` - The string you want.

***

## Table Functions
### table.insert(tab:Table, pos:Int, val:Value)
Inserts a new value inside of a table.

- `tab` - The table you want.
- `pos` - The position in each array of the table.
- `val` - The value that you want to insert.

### table.remove(tab:Table, pos:Int)
Removes a value inside of a table.

- `tab` - The table you want.
- `pos` - The position in each array of the table.

### table.concat(tab:Table, sep:String)
Concatenate the value inside of the table into.

- `tab` - The table you want.
- `sep` - The separation between the value in the table.

### table.sort(tab:Table)
Makes the table sorted in an alphabetical order.

- `tab` - The table you want.

***

## Math Functions
### math.max(num:Float)
Returns the <ins>highest value</ins> that, it could find.

- `num` - Multiple array of numbers.

Example: `math.max(12, 34, 1)` will print '34' because it's the largest value.

### math.min(num:Float)
Returns the <ins>lowest value</ins> that, it could find.

- `num` - Multiple array of numbers.

Example: `math.min(12, 34, 1)` will print '1' because it's the lowest value.

### math.ceil(num:Float)
Rounds a float to its <ins>highest value</ins>.

Example: `math.ceil(5.1)` will print '6'.

### math.floor(num:Float)
Rounds a float to its <ins>lowest value</ins>.

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
Note: The `num` parameter value should be `-1` to `1`.

Returns the <ins>arccosine sine</ins> of the number.

### math.acos(num:Float)
Note: The `num` parameter value should be `-1` to `1`.

Returns the <ins>arccosine cosine</ins> of the number

### math.atan(num:Float)
Note: The `num` parameter value should be `-1` to `1`.

Returns the <ins>arccosine tangent</ins> of the number.

### math.sqrt(num:Float)
Returns the square root of the number.

Example: `math.sqrt(5)` will print `2.2360679775`.

### math.abs(num:Float)
Returns the absolute of the number.

Example: `math.abs(-5)` will convert it to positive `5`.

### math.pi
Returns pi length of 13 digits.

### math.huge
Returns the largest numerical value which is infinite.