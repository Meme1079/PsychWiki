# Variables
Variables are manipulable storage spaces that can contain a variety of values.

When creating a Variable put a name, afterwards put equal `=` then put anything you want after equal `=`, it could be a String, Boolean, Numbers, Etc. And you can not put a keywords in lua when naming a variable.

Reserved Keywords:
```lua

and       or       not       local     true       break    
false     nil      if        else      elseif     goto    
then      for      in        repeat    until      
while     do       return    end       function

```

Examples:
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

You can also make multiple variables inside of a line by each sperating the name and value with the comma `,`.

Examples:
```lua
a, b, c = 3, 23.23, true

function onCreate()
     debugPrint(a, b, c) 
     -- a = 3, b = 23.23, c = true
end
```

## Types of Values
- `Strings` - A sequence of characters, you can put the characters around with single apostrophe `''` and double apostrophe `""`. You can also do double brackets `[[]]` for multi line **Strings**.
- `Booleans` - A type of value it can be two possible values `true` or `false`.
- `Numbers` - A numerical value used only to count or measure objects. It can be a **Int** or **Float**. Int is a type of number with no decimal point. **Float** is just the opposite of **Int**, it has a decimal point.
- `Nil` - Zero or nonexistent, used to destory a value in a variable.
- `Tables` - A type of value that stores multiple values. It can be a **Array** or **Dictionary**. **Array** is a collection of values. **Dictionary** are define each value with a key, then a value it’s the same as creating a variable. When accessing the table, put the table name then brackets with a position number inside of the table. And for **Dictionary** it's the same as accessing the table, but put a dot between the keyword and brackets.

Example:
```lua
ExVar1 = 'string' -- String
ExVar2 = 5 -- Number (Int)
ExVar3 = 0.5 -- Number (Float)
ExVar4 = true -- Boolean
ExVar5 = nil -- Nil
ExVar6 = {value} -- Table Array      (Empty)
ExVar7 = {       -- Table Dictionary (Empty)
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
- `Global variables` - A type of variable that is available everywhere.
- `Local variables` - A type of variable that is only available in the function they are made in, you can do this in a `variable` and `function`.

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
Comments are used to give context to the line of a code; they won't interact with the code.

- `--` - A single comment.
- `--[[]]--` - A multi comment.

***

# Operators
An operator is a symbol that tells the interpreter to perform specific mathematical or logical statements.

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
- `..` - Used to concatenate two or more **strings**.
- `#` - Returns the length of a string or the number of items in a **table**.

***

# Control Structures
Control Structures allow to perform tasks if the condition is `true`.

Also am only going to mention `for-do` loop and not `while-do`, `repeat-until`. Because there are rarely used in scripts but they do work.

### If Statement
A common basic statement to test if the condition is `true` it will execute the code.

You can add a `elseif` statement as an optional statement inside of the `if` statements. You can use this as a alternate conditions if the `if` statement returns to `false`.

Another statement you can add is `else` this statement allow you to execute opposite condition of `if` or `elseif` statements and will only activate if the `if` or `elseif` returns `false`.

Example:
```lua
function onCreate()
     makeLuaText('textTag', ' ', nil, 0, 0)
     addLuaText('textTag', true)
end

function onUpdate(elapsed)
     local health = getProperty('health') -- a int
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

- `start value` - A variable inside of the `for-do` and the start of the loop.
- `end value` - The end of the loop value.
- `increment` - An optional value that takes a step on every loop.

There 2 types of `for` loop Numeric and Generic. Numeric is the normal version of the loop it only includes `start value`, `end value`, and `increment`. Generic has the `in` and `pairs()` or `ipairs()` keywords.

Examples of a Numeric Loop:
```lua
function onCreatePost()
     for i = 0, getProperty('unspawnNotes.length')-1 do -- get's every note in the chart then subtracts one
          setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true) -- when hit, doesn't play an animation
          setPropertyFromGroup('unspawnNotes', i, 'noMissAnimation', true) -- when miss, doesn't play an animation
     end
end
```

Example of a Numeric Loop with the incrment:
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

You can put a function on a variable but don't put the name of the function only `function()`. And accessing it, put the variable name with a parentheses `()`. Same works with tables but must be a **Dictionary**.

- `parameter` - They are a named variable that is passed into a function and used to import arguments. Using `,` you can create more of them.

Example:
```lua
function onCreatePost()
     setPos('boyfriend', {100, 500}) -- Changes the position to x = 100 and y = 500
end

-- function created by Mayo78
function setPos(obj, pos) -- Concatonates setProperty x and y
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
     local getBFchar = getProperty('boyfriend.curCharacter') -- gets the character name
     if not allow({'bf', 'bf-car'}, getBFchar) then
          debugPrint('die')
     end
end

function allow(e, l)
     t = {} table.insert(t, e)
     for k,v in pairs(t) do -- gets every value inside of a table
          for i = 1, #v do -- the second table inside of 't' table
               if v[i] == l then -- detects if the value in the table is true
                    return true
               else
                    return false -- if not detected then false
               end
          end
     end
end
```

### break
Will forcefully end a loop early.

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

# Libraries
These are functions that can manipulate values.

## String Functions

### string.lower(str:String)
Converts any upper case alphabet into lower case.

- `str` - The string you want.

### string.upper(str:String)
Converts any lower case alphabet into upper case.

- `str` - The string you want.

### string.byte(str:String, pos:Int)
Converts any letters into a UTF-8 numeric code.

- `str` - The character code or string.
- `pos` -  An optional value that get the position of the character.

Example: `string.byte('a')` will return '97'

### string.char(num:Int)
Converts any UTF-8 numeric code into a alphabet character.

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
Returns the highest value that it could find.

- `num` - Multiple array of numbers.

Example: `math.max(12, 34, 1)` will print '34' because it's the largest value.

### math.min(num:Float)
Returns the lowest value that it could find.

- `num` - Multiple array of numbers.

Example: `math.min(12, 34, 1)` will print '1' because it's the lowest value.

### math.ceil(num:Float)
Rounds a float to its highest value.

- `num` - The decimal number you want.

Example: `math.ceil(5.1)` will print '6'.

### math.floor(num:Float)
Rounds a float to its lowest value.

- `num` - The decimal number you want.

Example: `math.floor(5.9)` will print '5'.

### math.sin(num:Float)
Returns the sine of the number.

- `num` - The number you want.

### math.cos(num:Float)
Returns the cosine of the number.

- `num` - The number you want.

### math.tan(num:Float)
Returns the tangent of the number.

- `num` - The number you want.

### math.sqrt(num:Float)
Returns the square root of the number.

- `num` - The number you want.

Example: `math.sqrt(5)` will print `2.2360679775`.

### math.abs(num:Float)
Returns the absolute of the number.

- `num` - The negative number you want.

Example: `math.abs(-5)` will convert it to positive '5'.

### math.pi
Returns pi length of 13 digits.

### math.huge
Returns the largest numerical value which is infinite.