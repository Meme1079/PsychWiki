# Variables
Variables are manipulable storage spaces that can contain a variety of values.

When creating a value you should name it once you name the variable use `=` afterwards and put anything you want after `=`, it could be a String, Boolean, Int, Etc. And you can not put a keywords in lua when naming a variable or tokens.

Keywords in Lua:
```lua
and       or       not       local     true       break    
false     nil      if        else      elseif     goto    
then      for      in        repeat    until      
while     do       return    end       function
```

Tokens in Lua:
```lua
+     -     *     /     %     ^     #
==    ~=    <=    >=    <     >     =
(     )     {     }     [     ]
;     :     ,     .     ..    ...
```

Example:
```lua
-- Valid --

Var1 = 'string1' -- a string variable                             
Var_Space = 'string2' -- a variable that has a underscore         
_Space = true -- a variable with the word underscore before its name
_ = 69.6 -- a variable that is only an underscore, strange right? 

-- Invalid --

if = true -- a variable named after a keyword     
~= = 'yes'  -- a variable named after a token                  
18.1and1*dv/> = 'cool' -- a variable spammed                      
Val 3 = 45.3 -- a variable with a space                           
13 = 'no' -- a variable that has a Int (Works the same all types of variables) 
```

## Types of Variable

- `String` - A sequence of characters that can contain `''`, `""`, `[[]]`
- `Int` - A integer number
- `Float` - A decimal number
- `Nil` - A type of variable that has no value and it is used to destroy a variable if you're not using it anymore
- `Boolean` - A type of variable that has two possible values, `true` and `false`
- `Table` - A type of variable and table that can store a `String`, `Boolean`, `Int`, `Float`, and even a `Table`. There are 2 types of Table, `Table Array` and `Table Dictionary`; `Table Array` is a type of table formatted to resemble an array; while `Table Dictionary` is a type of table formatted to resemble a list

Example:
```lua
ExVar1 = 'string' -- string
ExVar2 = 5 -- int
ExVar3 = 0.5 -- float
ExVar4 = true -- boolean
ExVar5 = nil -- nil

multvar1, multvar2 = 'Pop', 'Tart' -- a multi variable

table1 = {'Psych', 'Engine', 'is', 'Amazing'} -- a table
-- to access a table use debugPrint(table[3]) will print 'Amazing'

table2 = {a = 'string', b = 24, c = {'123', '456', '789'}} -- a table with variables
--[[ Use tableName.Variable to access it!
     Example1: table2.a will print 'string'
     Example2: table2.c[1] will print '123' ]]

table4 = { -- a table dictionary with more tables
     {'apple', 'banana', 'grape'}, -- don't forget to add a comma!
     {24, 36, 13},
     {true, false, nil}  -- don't add a comma at the end!
}
--[[ Use tableName[array][pos] to access it!
     Example1: table4[1][2] will print 'banana' 
     Example2: table4[3][1] will print 'true'   ]]

table5 = { -- a table dictionary works the same as a table
     25, 
     93, 
     49  
} 
```

## Global and Local variables
- `Global variables` - A type of variable that is available everywhere
- `Local variables` - A type of variable that is only available in the function they are made in, you can do this in a `variable` and `function`

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

# Operators
An operator is a symbol that tells the interpreter to perform specific mathematical or logical statements

### Arithmetic
- `+` - Addition
- `-` - Subtraction
- `*` - Multiplication
- `/` - Division
- `^` - Exponent / To the power to
- `%` - [Modulus](https://www.calculatorsoup.com/calculators/math/modulo-calculator.php)

### Relational
- `==` - Checks whether the left is equivalent to the right
- `~=` - Checks whether the left IS NOT equivalent to the right
- `>` - Checks whether the left is greater than the right **(MUST BE DONE WITH NUMBERS)**
- `>=` - Checks whether the left is greater than OR EQUAL TO the right **(MUST BE DONE WITH NUMBERS)**
- `<` - Checks whether the left is smaller than the right **(MUST BE DONE WITH NUMBERS)**
- `<=` - Checks whether the left is smaller than OR EQUAL TO the right **(MUST BE DONE WITH NUMBERS)**

### Logical
- `and` - Combines two conditions together; will return true if BOTH sides are true
- `or` - Combines two conditions together; will return true if EITHER left or right are true
- `not` - Reverses the condition; if it is equivalent to false, then the not operator will set it to true, and vice versa

### Miscellaneous
- `..` - Used to concatenate two or more variable's
- `#` - Returns the length of a string or the number of items in a table

***

# Comments
Comments are used to give context of the line of a code.

And they won't interact with the code

- `--` - A single comment
- `--[[]]--` - A multi comment

***

# Control Structures
Control Structures allow to perform tasks if the condition is `true`

## Non-Loops 
Non-Loops are control structures that don't loop and only execute once

### if-then
A common statement that used for executing a block of code if a specific condition is true

Example:
```lua
b = 45 -- a int
function onCreate()
     if 35 < b then -- if below 35
          debugPrint('Greater than 35!') -- will print 'Greater than 45!'
     end
end
```

### else
It is used to execute the opposite statement.

Example:
```lua
b = 15 -- a int
function onCreate()
     if 35 < b then -- if above 35
          debugPrint('Greater than 35!') -- will not print
     else -- if below 35
          debugPrint('Lesser than 35!') -- will print 'Lesser than 45!'
     end
end
```

### elseif-then
It works the same way as `if-then`, but it is used to verify alternate conditions.

Example:
```lua
b = 55 -- a int
function onCreate()
     if 50 <= b then -- if above than 55
          debugPrint(b..' is Greater than 55!') -- will print '55 is Greater than 55!'
     elseif 35 <= b then -- if above than 35
          debugPrint('Greater than 45!') -- won't print
     else -- lesser than 35
          debugPrint('Lesser than 45!') -- won't print
     end
end
```

## Loops
Loops are opposite of `Non-Loops` they can execute code multiple times

Also are only going to mention `for-do` loop and not `while-do`, `repeat-until`. Because these loops are broken when using it and can be recreated in Funkin lua. If you know what you're doing.

### for-do
It enables you to run a collection of commands, primarily used in `setPropertyFromGroup()` and `getPropertyFromGroup()` for notes. 

- `control` - A variable inside of the `for-do` and the start of the loop
- `end` - The end of the loop
- `increment` - An optional value that takes a step on every loop

Example 1:
```lua
function onCreatePost()
     for i = 0, getProperty('unspawnNotes.length')-1 do -- get's every note in the chart then subtracts one
	  setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true) -- when hit it doesn't play an animation
          setPropertyFromGroup('unspawnNotes', i, 'noMissAnimation', true) -- when miss it doesn't play an animation
     end
end
```

Example 2:
```lua
function onCreate()
     for i = 1, 10, 2 do -- will take 2 steps
          debugPrint(i) -- will print '1, 3, 5, 7, 9'
     end
end
```

***

# Others

### function(parameter)
A function is a collection of code that cooperates to complete a task.

- `parameter` - They are a named variable that is passed into a function and used to import arguments. Using `,` you can create more of them.

Example:
```lua
function onCreatePost()
     ezTimer('tag', 3, function() -- waits for 3 seconds
          setProperty('health', 0.1) -- sets the health to near death
     end)
end

-- mayo78 made this function
timers = {}
function ezTimer(tag, timer, callback) -- tag: the tag, timer: seconds, callback: put function()
     table.insert(timers,{tag, callback})
     runTimer(tag, timer)
end

function onTimerCompleted(tag)
     for k,v in pairs(timers) do
          if v[1] == tag then
               v[2]()
          end
     end
end
```

### return
It must appear below and inside a function and return a value that is primarily used on that function.

Example:
```lua
function onCreate()
     debugPrint(onThingy(5, 6, 7)) -- will print 5.83
end

function onThingy(num1, num2, num3)
     local divide = num1 / num2 -- divide
     local answer = divide * num3 -- multiply
     return round(answer, 2) -- returns the answer and rounds it
end

-- round function that modify the decimal
function round(num, dp) -- num: the Int you want to round, dp: how many decimal you want
     local mult = 10^(dp or 0);
     return math.floor(num * mult + 0.5)/mult; 
end
```

### break
Used to forcefully stop a loop

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

### in
An optional part of the Generic `for-do` loop flow control

Example:
```lua
fruits = {'banana', 'orange', 'apple', 'grape'} -- a table
function onCreate()
     for k,v in pairs(fruits) do -- gets the value inside of the table
          debugPrint(v) -- prints every value in the table
     end
end
```

***

# Library Manipulation
These are use to manipulate lua function in lua

## String Manipulation
They are used to manipulate strings

### string.lower(string)
Converts any upper case alphabet into lower case

- `string` - The string you want

### string.upper(string)
Converts any lower case alphabet into upper case

- `string` - The string you want

### string.byte(char, pos)
Creates a numeric code from the character code or string

- `char` - The character code or string
- `pos` -  An optional value that get the position of the character

Example: `string.byte('a')` will return 97

### string.char(byte)
Creates a character code from the numeric code

- `byte` - the numeric code

Example: `string.char(97)` will return 'a'

### string.gsub(string, find, rep, limit)
Returns a copy of a string and replaces it with a new string

- `string` - The string you want
- `find` - Part of the string you want to replace
- `rep` - The string that will be replacing the previous one 
- `limit` - An Optional value that limits on replacing the new string

### string.len(string)
Returns the length of the string

- `string` - The string you want

Example: `string.len('words')` will return 5

### string.rep(string, limit, sep)
Repeats the string

- `string` - The string you want
- `limit` - The limit of repeating it
- `sep` - The separation between the repeated string

### string.reverse(string)
Reverses the string

- `string` - The string you want

### string.find(string)
Finds the string works the same with `stringStartsWith()` and `stringEndsWith()` but has no limit

- `string` - The string you want

***

## Table Manipulation
They are used to manipulate tables

### table.insert(table, pos, val)
Inserts a new value inside of a table

- `table` - The table you want
- `pos` - The position in each array of the table
- `val` - The value that you want to insert

### table.remove(table, pos)
Removes a value inside of a table

- `table` - The table you want
- `pos` - The position in each array of the table

### table.concat(table, sep)
Converts a table into a string

- `table` - The table you want
- `sep` - The separation between the value in the table

### table.sort(table)
Makes the table sorted in an alphabetical order

- `table` - The table you want

### table.getn{table}
Gets the length of the table

- `table` - The table you want

Example: `table.getn{'a', 'b', 'c'}` will return 3

***

## Math Manipulation
They are used to manipulate numbers and used for modcharts I think

### math.max(num)
Returns the highest value that it could find

- `num` - Multiple array of numbers

Example: `math.max(12, 34, 1)` will print 34 because it's the largest value

### math.min(num)
Returns the lowest value that it could find 

- `num` - Multiple array of numbers

Example: `math.min(12, 34, 1)` will print 1 because it's the lowest value

### math.ceil(num)
Rounds a number to its highest value

- `num` - The decimal number you want

Example: `math.ceil(5.1)` will print 6

### math.floor(num)
Rounds a number to its lowest value

- `num` - The decimal number you want

Example: `math.floor(5.9)` will print 5

### math.sin(num)
Returns the sine of the number

- `num` - The number you want

### math.cos(num)
Returns the cosine of the number

- `num` - The number you want

### math.tan(num)
Returns the tangent of the number

- `num` - The number you want

### math.sqrt(num)
Returns the square root of the number

- `num` - The number you want

Example: `math.sqrt(5)` will print `2.2360679775`

### math.abs(num)
Makes a negative number into a positive one

- `num` - The negative number you want

Example: `math.abs(-5)` will convert it to positive 5

### math.pow(num, expo)
Another alternate exponent operator that returns the result of the exponent

- `num` - The number you want
- `expo` - The number that will be the exponent

### math.pi
Returns pi length of 13 digits

### math.huge
Returns the largest numerical value which is infinite