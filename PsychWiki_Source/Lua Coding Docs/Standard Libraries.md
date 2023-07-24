# String Methods
Fun fact instead of writing this `string.method(string, para)` when using String Method functions, you should instead use `string:method(para)`. Why because functions being nested will make it not very understandable when reading the code. Sure you can use this syntax; just use this only one or twice when nesting tho.

Example:
```lua
function onCreate()
     local textString = 'IJBIOGEJBOUIEKWIWBLCUYQOWYGV'
     local stringSyntax1 = string.lower(string.gsub(string.gsub(textString, 'W', ''), 'I', ''))
     debugPrint(stringSyntax1) -- will print > 'jbogejbouekblcuyqoygv'

     local stringSyntax2 = textString:gsub('W', ''):gsub('I', ''):lower()
     debugPrint(stringSyntax1) -- will print > 'jbogejbouekblcuyqoygv'
end
```

### string.upper(str:String)
Converts any <ins>upper-case characters</ins> into lower-case characters.

- `str` - The string variable to be converted.

Example: `('CHEeeEeEEEeeSe'):upper()`; Will print `CHEEEEEEEEEESE`.

### string.lower(str:String)
Converts any <ins>lower-case characters</ins> into upper-case characters.

- `str` - The string variable to be converted.

Example: `('CHEeeEeEEEeeSe'):lower()`; Will print `cheeeeeeeeeese`.

### string.byte(str:String, ?startPos:Int = 1, ?endPos:Int = 1)
Converts any <ins>alphabetical characters</ins> into ASCII characters; Returns an `int` number.

- `str` - The string variable to be converted.
- `startPos` - An optional parameter, The specified starting position to be chosen; Defualt value: `1`.
- `endPos` - An optional parameter, The specified ending position to be chosen; Defualt value: `1`.

Example: `('a'):byte()`; Will print `97`.

### string.char(...byte:Int)
Converts any <ins>ASCII characters</ins> into alphabetical characters; Returns an `string`. _(This function doesn't support the string shortcut!)_

- `byte` - An infinite parameter, The ASCII character to be converted.

Example: `string.byte(97)`; Will print `a`.

### string.rep(str:String, repeat:Int)
Repeats the string depending on <ins>how many times you set it</ins>.

- `str` - The string variable to be repeated.
- `repeat` - How many times the string will be repeated.

Example: `('repated '):rep(3)`; Will print `repated repated repated `.

### string.reverse(str:String)
Reverses the string, <ins>that's it</ins>.

- `str` - The string variable to be reverse.

Example: `('based'):reverse()`; Will print `desab`.

## String Patterns Methods
These methods support String Patterns inside the `pattern` parameter. So if there any character's that are `+-*()[]?%`, make sure you have a percent sign <kbd>%</kbd> at the start of each character. So it will display the actual character and not result an error.

Example:
```lua
local capture = '(a)'

function onCreate()
     debugPrint( capture:gsub('(', ''):gsub(')', '')   ) -- error
     debugPrint( capture:gsub('%(', ''):gsub('%)', '') ) -- will print 'a'
end
```

### string.format(pattern:String, #str:String)
Formats the string from the <ins>specified pattern type</ins>.

- `pattern` - The specified string pattern for the string to be formatted.
- `str` - An infinite parameter, The string variable to be formatted.

Example:
```lua
function onCreate()
     local curDate = os.date('*t') -- the '*t' makes it return a table dictionary
     debugPrint(('Date: %d/%d/%d'):format(curDate.month, curDate.day, curDate.year))
     -- as of currently writing, it printed '3/23/2023'
end
```

### string.find(str:String, pattern:String, ?startPos:Int = 1)
Finds the <ins>match from the `pattern` parameter</ins> from the string; Returns the `start` and `end` position of the pattern.

- `str` - The string variable to be used.
- `pattern` - The specified string pattern to find.
- `startPos` - An optional parameter, The string position on where to start the search; Defualt value: `1`.

Example:
```lua
function onCreate()
     local textString1 = 'Find the position of this \'string\''
     local textString1_Find = ({ textString1:find('\'string\'') }) -- converts it into a table
     debugPrint(textString1_Find[1]) -- will print > '27'
     debugPrint(textString1_Find[2]) -- will print > '34'

     local textString2 = 'Repeat Repeat Repeat'
     local TextString2_Find = ({ textString2:find('Repeat', 13) })
     debugPrint(textString2_Find[1]) -- will print > '15'
     debugPrint(textString2_Find[2]) -- will print > '20'
end
```

### string.sub(str:String, startPos:Int, ?endPos:Int = #str)
Extracts the <ins>specific portion of a string</ins> from the <ins>starting to ending position</ins>; Removes any characters that isn't selected.

- `str` - The string variable to be extracted.
- `startPos` - The starting position of the string.
- `endPos` - An optional parameter, The ending position of the string; Defualt value: `maximum length of the string`.

Example:
```lua
function onCreate()
     local textString1 = 'Cut this on half!'
     local textString1_Sub = textString1:sub( ({math.modf(#textString1 / 2)})[1] )
     debugPrint(textString1_Sub) -- will print > 's on half!'
     
     local textString2 = 'Specify the selection of the string'
     local textString2_Find = ({textString2:find('selection')}) -- will print '{13, 27}'
     local textString2_Sub  = textString2:sub(textString2_Find[1], textString2_Find[2])
     debugPrint(textString2_Sub) -- will print > 'selection'
end
```

### string.gsub(str:String, pattern:String, replace:String, ?repeat:Int = 1)
Extracts the <ins>specific portion of the string</ins> and <ins>replaces the contents of it</ins>.

- `str` - The string variable to be extracted.
- `pattern` - The specified string pattern for the string to be replace.
- `replace` - The new content of the string to be used.
- `repeat` - An optional parameter, How many times will the pattern be replaced; Defualt value: `1`.

Example:
```lua
function onCreate()
     local textString1 = 'PsychEngine is a bad engine [in my opinion]'       -- opinions are scary
     debugPrint(textString1:gsub('bad', 'good'):gsub('[in my opinion]', '')) -- no more opinion guys!
     -- will print > 'PsychEngine is a good engine'

     local textString2 = 'Hello World World World!'
     debugPrint(textString2:gsub('World World', '', 2))
     -- will print > 'Hello World!'
end
```

### string.match(str:String, pattern:String, ?startPos:Int = 1)
Checks if the <ins>specific portion of the string matches the pattern</ins>; Returns the captured match pattern, if there is no match, returns a `nil` value.

- `str` - The string variable to be matched.
- `pattern` - The specified string pattern for the string to be match.
- `startPos` - An optional parameter, The starting position of the `string` on where to start the search; Defualt value: `1`.

Example:
```lua
function onCreate()
     local textString1 = 'Find a match!'
     debugPrint(textString1:match('match'))   -- will print > 'match'

     local textString2 = 'I like the number 38453 and 96335'
     debugPrint(textString2:match('%d+', 25)) -- will print > '96335'
end
```

### string.gmatch(str:String, pattern:String)
Checks <ins>globally</ins> if the <ins>specific portion of the string matches the pattern</ins>; This function should be use in a Generic `for` loop, as shown below. If not used in a loop; Will return a function.

- `str` - The string variable to be matched.
- `pattern` - The specified string pattern for the string to be match.

Example:
```lua
local function dictionarySplit(str)
     local result = {}
     local pattern = '(%w+)%s*=%s*(%w+)' -- Checks the dictionary syntax of the string
     for k,v in (str):gmatch(pattern) do -- '(%w+)%s*=%s*(%w+)' > '(key) = (value)'
          result[k] = v
     end
     return result
end

function onCreate()
     local dictionaryString = 'isGood = true, isBad = false'
     debugPrint(dictionarySplit(dictionaryString).isGood) -- will print > true
     debugPrint(dictionarySplit(dictionaryString).isBad)  -- will print > false
end
```

***

# Table Methods
### table.insert(tab:Table, ?pos:Int, value:Dynamic)
Forcefully inserts an element inside a table array, this will not change the table's element if the position is occupied.

- `tab` - The table variable for the element to be inserted.
- `pos` - An optional parameter, The position index for the new element to be inserted.
- `value` - The element's value.

Example:
```lua
function onCreate()
     local arrayTable = {'apple', 'banana', 'orange'}
     table.insert(arrayTable, 'grape')
     table.insert(arrayTable, 2, 'cherry')

     for k,v in pairs(arrayTable) do
          debugPrint(k..': '..v) -- will print > '1: apple, 2: cherry, 3: banana, 4: orange, 5: grape'
     end
end
```

### table.remove(tab:Table, ?pos:Int)
Forcefully removes an element inside a table array, if the element is not being used anymore.

- `tab` - The table variable for the element to be removed.
- `pos` - An optional parameter, The position index for the new element to be removed.

Example:
```lua
function onCreate()
     local arrayTable = {'apple', 'banana', 'tomato', 'orange', 'broccoli'}
     table.remove(arrayTable)    -- removes 'broccoli'
     table.remove(arrayTable, 3) -- removes 'tomato'

     for k,v in pairs(arrayTable) do
          debugPrint(k..': '..v) -- will print > '1: apple, 2: banana, 3: orange'
     end
end
```

### table.concat(tab:Table, sep:String, ?minPos:Int, ?maxPos:Int)
Concatenates the table array's elements into a string with the separator pattern in each element.

- `tab` - The table variable for the element to be concatenate.
- `sep` - The separation pattern for each elements.
- `minPos` - An optional parameter, The starting index position of the table to be concatenate.
- `maxPos` - An optional parameter, The ending index position of the table for the concatenation to stop.

Example:
```lua
function onCreate()
     local arrayTable1 = {'apple', 'banana', 'orange'}
     local arrayTable2 = {'tomato', 'broccoli', 'onion', 'beetroot', 'turnip'}

     debugPrint(table.concat(arrayTable1, ', '))       -- will print > 'apple, banana, orange' 
     debugPrint(table.concat(arrayTable2, ', ', 3, 5)) -- will print > 'onion, beetroot, turnip'
end
```

### table.sort(tab:Table, ?comp:Function)
Sorts the table in a given order by alphabetical order in `strings`, lesser than to greater than in `numbers`, or with a custom sort type inside the `comp` parameter.

- `tab` - The table variable to be sorted.
- `comp` - An optional parameter, The custom sorting type to be sorted for the function to use.

Example:
```lua
local function byteSort(val1, val2) 
     return val2:byte(3, 3) > val2:byte(3, 3)
end

function onCreate()
     local arrayTable1 = {'grape', 'apple', 'banana', 'orange', 'kiwifruit'}
     local arrayTable2 = {'tomato', 'broccoli', 'onion', 'beetroot', 'turnip'}

     table.sort(arrayTable1)
     table.sort(arrayTable2, byteSort)

     for k,v in pairs(arrayTable1) do 
          debugPrint(v) -- will print > 'apple, banana, grape, kiwifruit, orange'
     end
     for k,v in pairs(arrayTable2) do
          debugPrint(v) -- will print > 'turnip, broccoli, tomato, onion, beetroot'
     end
end
```

***

# Mathematical Methods
### math.min(#num:Float)
Checks if any of the number is the <ins>minimum value</ins>, it could find.

- `num` - An infinite parameter, The number value to be checked.

Example: `math.max(1, 3, 2)`; Will print `1`.

### math.max(#num:Float)
Checks if any of the number is the <ins>maximum value</ins>, it could find.

- `num` - An infinite parameter, The number value to be checked.

Example: `math.max(1, 3, 2)`; Will print `3`.

### math.floor(num:Float)
Rounds the `float` number to its <ins>minimum value</ins>.

- `num` - The number to be round. 

Example: `math.floor(4.8)`; Will print `4`.

### math.ceil(num:Float)
Rounds the `float` number to its <ins>maximum value</ins>.

- `num` - The number to be round.

Example: `math.ceil(4.3)`; Will print `5`.

### math.abs(num:Float)
Returns the <ins>absolute of the number</ins>. Basically converts <ins>negative values into positive values</ins>.

- `num` - the number value to be used.

Example: `math.abs(-10)`; Will print `10`.

### math.sqrt(num:Float)
Returns the square root of the number.

- `num` - the number value to be used.

### math.deg(rad:Float)
Converts the <ins>radian of the number to degrees</ins>.

- `rad` - The radian number to be converted.

### math.rad(deg:Float)
Converts the <ins>degree of the number to radians</ins>.

- `deg` - The degree number to be converted.

### math.modf(num:Float)
Splits the decimal point of the `float` number; Returns the <ins>whole and decimal numbers</ins>.

- `num` - The `float` number to be used.

Example:
```lua
function onCreate()
     local floatMath = ({math.modf(3.14)}) -- surround this with curly-bracket and parenthesis
     debugPrint(floatMath[1]) -- will print '3'
     debugPrint(floatMath[2]) -- will print '14'
end
```

### math.log(exp:Float, base:Float)
Returns the <ins>logarithm of a number to the base number</ins> which is the exponent value. Basically the inverse function of the exponentiation.

Also there is a similair function called `math.log10()`, which the defualt value of the `base` parameter is `10`; Example: `math.log10(1000)`; Will print `3`.

- `exp` - The exponentiation value of the number.
- `base` - The base number of the logarithm number.

Example:
```lua
function onCreate()
     debugPrint(2^5)             -- will print '32'
     debugPrint(math.log(32, 2)) -- will print '5'
end
```

### math.random(?min:Int, ?max:Int)
Randomize a random number <ins>between the minimum to maximum values</ins>. This function uses <ins>psuedo-random number generator (PRNG)</ins> it basically uses a seed for a number pattern. Which makes it not "truly random" becuase when you run the function it will <ins>return the exact same number pattern</ins>. Because it <ins>uses the same seed</ins> that the `math.random()` function uses.

Now if you don't like this to happen either use. <ins>`getRandomInt()` or `getRandomFloat()` functions</ins>, which functions as the same as `math.random()` function but more random. Or use <ins>`math.randomseed()` function</ins> that changes the seed of the `math.random` function.

> **Note**: _If the all the parameters were left blank; Will print from `0` to `1` in a `float` number value; Example it returns: `0.82854631915689`._

- `min` - An optional parameter, The minimum number value.
- `max` - An optional parameter, The maximum number value.

### math.random(?min:Int, ?max:Int)
### math.randomseed(seed:Int)
Changes the pseudo-random number seed for the `math.random()` function. If you want `math.random()` to be "truly random" use `os.time()` function. Because it returns every seconds from the Unix Epoch this started from `1 January 1970, 00:00:00`. Making the seed change every seconds.

- `seed` - The seed number to be generate.

Example:
```lua
local function generateRNG(seed)
     local RNGTab = {}
     math.randomseed(seed)  

     for rep = 1, 3 do
          table.insert(RNGTab, math.random(1, 5))
     end
     return table.concat(RNGTab, ' ')
end

function onCreate()
     debugPrint(generateRNG(1))         -- will print > '3 1 1'
     debugPrint(generateRNG(2))         -- will print > '2 5 5'
     debugPrint(generateRNG(3))         -- will print > '2 1 5'
     debugPrint(generateRNG(os.time())) -- will print > '5 2 5' (for me only)
end
```

### math.pi
Returns the <ins>length of the pi <kbd>π</kbd> value</ins>; Returns `3.141592653589`.

### math.huge
Returns the <ins>maximum number limit</ins> to become infinite; Returns `inf`. 

## Trigonometry Methods
> **Warning**: _This section of this wiki is still being research due to being. An advance subject that I haven't learn in my school. Soo if you've learn this already, please make a pull request of it. Help is always appreciated._

### math.sin(num:Float)
Returns the ratio between <ins>opposite side and hypotenuse side</ins>.

- `num` - The sine value to be calculated.

### math.cos(num:Float)
Returns the ratio between <ins>adjacent side and hypotenuse side</ins>.

- `num` - The cosine value to be calculated.

### math.tan(num:Float)
Returns the ratio between <ins>opposite side and adjacent side</ins>.

- `num` - The tangent value to be calculated.

***

### math.asin(num:Float)
Returns the <ins>inverse sine function</ins>; Goes from `-1` to `1`.

- `num` - The inverse sine value to be calculated.

### math.acos(num:Float)
Returns the <ins>inverse cosine function</ins>; Goes from `-1` to `1`.

- `num` - The inverse cosine value to be calculated.

### math.atan(num1:Float)
Returns the <ins>inverse tangent function</ins>; Goes from `-1` to `1`.

- `num` - The inverse tangent value to be calculated.

### math.atan2(num:Float, num2:Float)
Returns the inverse tangent function and uses <ins>both parameters to find the quadrant of the result</ins>.

- `num` - The first inverse tangent value to be calculated.
- `num` - The second inverse tangent value to be calculated.

***

### math.sinh(num:Float)
Returns the <ins>hyperbolic sine function</ins>.

- `num` - The hyperbolic sine value to be calculated.

### math.cosh(num:Float)
Returns the <ins>hyperbolic cosine function</ins>.

- `num` - The hyperbolic cosine value to be calculated.

### math.tanh(num:Float)
Returns the <ins>hyperbolic tangent function</ins>.

- `num` - The hyperbolic tangent value to be calculated.