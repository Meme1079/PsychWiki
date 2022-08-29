# Variables
Variables are manipulable storage spaces that can contain a variety of values.

When creating a value you should name it once you name the variable use `=` afterwards and put anything you want after `=`, it could be a String, Boolean, Int, Etc. And you can not put a keywords in lua when naming a variable.

Keywords in Lua:
```lua
and not or                    -- Logical Operators
local true false nil          -- Other
if elseif else then           -- Statements
for in repeat until while do  -- Loops
return end break function     -- Functions
```

Example:
```lua
-- Valid --

Var1 = 'string1' -- a string variable                             
Var_Space = 'string2' -- a variable that has a underscore         
_ = 69.6 -- a variable that is only an underscore, strange right? 

-- Invalid --

if = true -- a variable named after a keyword                     
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
a = 'string' -- a string
num = 5 -- a int
decNum = 0.5 -- a float
bool = true -- a boolean
nothing = nil -- a nil

multvar1, multvar2 = 'Pop', 'Tart' -- a multi variable

table1 = {'Psych', 'Engine', 'is', 'Amazing'} -- a table
-- to access a table use debugPrint(table[3]) will print 'Amazing'

table2 = { -- a table dictionary
     vegetable = 'cabbage', -- don't forget to add a comma!
     FavNum = 69,
     table3 = {50, 47, 'Hello'} -- a table inside of table dictionary
} 
--[[ 
to access the table dictionary, you should use debugPrint(table2.FavNum) will print 69
or if it's a table inside of a table dictionary, you should use debugPrint(table2.table3[3]) will print 'Hello'
--]]
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

# Comments
Comments are used to give context of the line of a code.

And they won't interact with the code

- `--` - A single comment
- `--[[]]--` - A multi comment

# Conditional Structures
Conditional Structures allow to perform tasks if the condition is `true`

## Statements
Used to perform an action if the specific conditions are met.

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
Note: We are only going to mention `for-do` loop and not `while-do`, `repeat-until`. Because these loops are broken when using it.

Used to execute code multiple times

### for-do
It enables you to run a collection of commands, primarily used in `setPropertyFromGroup()` and `getPropertyFromGroup()` for notes.

- `control` - A variable inside of the `for-do` and the start of the loop
- `end` - The end of the loop
- `increment` - It is an optional value and counts up for positive values while counts down for negative values

Example:
```lua
function onCreatePost()
     for i = 0, getProperty('unspawnNotes.length')-1 do -- get's every note in the chart
	   setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); -- when hit it doesn't play an animation
     end
end
```

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

-- round function
function round(num, dp) -- num: the Int you want to round, dp: how many decimal you want
     local mult = 10^(dp or 0);
     return math.floor(num * mult + 0.5)/mult; 
end
```

### break
Used to forcefully stop a loop

Example:
```lua
function onCreatePost()
     for i = 0,7 do -- 0 to 7
          setPropertyFromGroup('strumLineNotes', i, 'y', 500) 
          -- Sets all the strums to the lower part
        
          if i == 3 then 
               break -- ends the loop
          end
     end
end
```