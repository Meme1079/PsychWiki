# String Methods
String libraries provide the most common functions when manipulating strings, such as finding and extracting substrings, conversion from letter-cases and ASCII character, and pattern matching.

Example:
```lua
function onCreate()
     debugPrint( ('I like this part :)'):sub(18)  ) --> :)
     debugPrint( ('I like this part :)'):sub(-17) ) --> like this part :)
end
```

Lua also sets every string it can find into a metatable, which is exetremly useful becuase you can use the string functions in "object-oriented style". Basically instead of writing this `string.upper('hi')` you can instead write this `('hi'):upper()`. This makes reading string function much easier and less confusing it can even stack!, for instance: `('234284'):gsub('2', ''):gsub('4', ''):lower()`.

### string.upper(str:String)
Converts any <ins>upper-case characters</ins> into lower-case characters.

- `str` - The lower-case characters from the string to be converted.

Example:
```lua
function onCreate()
     debugPrint(('CHEeeEeEEEeeSe'):upper()) --> CHEEEEEEEEEESE
end
```

### string.lower(str:String)
Converts any <ins>lower-case characters</ins> into upper-case characters.

- `str` - The upper-case characters from the string to be converted.

Example:
```lua
function onCreate()
     debugPrint(('CHEeeEeEEEeeSe'):lower()) --> cheeeeeeeeeese
end
```

### string.byte(str:String, startPos:Int = 1, endPos:Int = 1)
Converts any <ins>alphabetical characters</ins> into ASCII characters.

- `str` - The characters from the string to be converted.
- `startPos` - An optional parameter, The specified starting index position from the string to convert; Default value `1`.
- `endPos` - An optional parameter, The specified ending index position from the string to convert; Default value `1`.

Example:
```lua
function onCreate()
     debugPrint(('a'):byte()) --> 97
end
```

### string.char(byte:Int)
Converts any <ins>ASCII characters</ins> into alphabetical characters.

> **Note**: _This function doesn't support the colon operator shortcut!_

- `byte` - The ASCII character from the string to be converted.

Example:
```lua
function onCreate()
     debugPrint(string.char(97)) --> a
end
```

### string.repeat(str:String, repeat:Int)
<ins>Repeats the string's content</ins> and concatenated them together—determined by <ins>how many times it will repeat itself</ins>.

- `str` - The string's content to be repeated.
- `repeat` - How many times it will be repeated.

Example:
```lua
function onCreate()
     debugPrint(('repeated-'):rep(3)) --> repeated-repeated-repeated-
end
```

### string.reverse(str:String)
<ins>Reverses the string</ins>, that's it nothing else.

- `str` - The string's content to be reverse.

Example:
```lua
function onCreate()
     debugPrint(('based'):reverse()) --> desab
end
```

## Pattern-Matching
Pattern-matching uses the pattern-matching patterns from the `pattern` parameter, if you want more information about this topic click here for more information if you're interested.

Some characters from pattern-matching will behave differently here's the list of them: `+`, `-`, `*`, `?`, `^`, `$`, `[`, `]`, `(`, `)`, and `%`. If you don't want this happen add the percent `%`; character at the start of the character listed previously, for instance: `%$`.

### string.format(fromat:String, str:String)
Formats the supplied string values from the specified pattern type. The function includes format specifiers which are characters beginning with percent `%` character. Their basically a special sequences in pattern-matching but with extra characters to match, due to being base on the C function `sprintf()`. _(kinda like if pattern-matching has a DLC)_

Another thing about format specifers that it also has "sub-specifiers" these include: flags, width, and precision fields. To add more customizability when formatted a string. But they are some limits to them, some format specifers and flag fields are not supported. For format specifers: `F`, `n`, `h`, `L`, and `l` and for flags: `*`. Both width and precision fields, when present, are just limited to two digits.

<details><summary> Specifiers </summary><br/>

| Specifiers | Description | Input | Output |
| --- | --- | --- | --- |
| `%d`, `%i` | A signed integer that only accepts both positive and negative numbers | `34` | `34` |
| `%u` | An unsigned integer that only accepts only positive numbers. If attempted to use a negative number it will return a jumble mess of numbers. | `0` | `0` |
| `%o` | An unsigned octal, a system refers to the base-8 numbering system. This will be formatted to an octal representation. | `11` | `13` |
| `%x`  <br>`%X` | An unsigned integer of hexadecimal number; `%x` specifier converts any upper-case to lower-case characters, and vice versa for `%X` specifier. It must include a `0x` or `0X` prefix for order to not to get an error. | `'0xff0000'`  <br>`'0X0DDB93'` | `'FF0000'`  <br>`'0ddb93'` |
| `%e`  <br>`%E` | A scientific (exponential) notation numbers; `%e` specifier converts any upper-case to lower-case characters, and vice versa for `%E` specifier. | `'4E+3'`  <br>`'6e-2'` | `'4.000000e+03'`  <br>`'6.000000E-02'` |
| `%f` | A signed floating-point number, will format with only 6 decimal numbers. | `34.69` | `34.690000` |
| `%c` | An ASCII character, it will be formatted to the corresponding character. | `97` | `a` |
| `%s` | A string, that's it nothing else. | `Hello World!` | `Hello World!` |
| `%q` | A string, but it will be quoted with double-quotes when formatted. This specifier does not support flags, width, or precision. | `'print("homo")'` | `"print(\"homo\")"` |
| `%%` | A percentage character. | `'%%'` | `'%'` |

</details>
<details><summary> Flags </summary><br/>

| Flags | Description | Example | Output |
| --- | --- | --- | --- |
| `-` | Left-justify within the given specified field width. If the width value of the `str` argument is more than the width field, then the output will be padded with spaces on the left-hand side. If you want the right-hand side to be padded, just don't include the `%-` specifier. _(See Width field)_ | `('%-3d'):format('11')`  <br>`('%3d'):format('11')` | `11 `  <br>` 11` |
| `+` | Forces a plus + sign to precede a number. If the number is negative it will not be change, giving no changes to them. | `('%+d %+d'):format('1', '-1')` | `+1 -1` |
| `#` | This will format an alternate form of the given format but not all specifiers has this abilities. The `%o` specifier will add `0` at the start, similarly `%x`/`%X` specifier will add `0x`/`0X` at the start. | `('%#o'):format('43')`  <br>`('%#x'):format('0XFF00FF')` | `053`  <br>`0xff00ff` |
| `0` | Works the same as `-` flag field, but the padding is just `0` zeros when formatted. This only works at the left-hand side, and i'll doubt you'll use this flag field. _(See Width field)_ | `('%03d'):format('4')` | `004` |

</details>
<details><summary> Width </summary><br/>

| Width | Description | Example | Output |
| --- | --- | --- | --- |
| _(number)_ | The Width field specifies the minimum number of characters to return. If the number of characters to be formatted is less than this number, the result is padded with blank spaces or a bunch of zeros for the flag field `0`. | `('%5s'):format('Hi')`  <br>`('%05d'):format('3')` | `   Hi`  <br>`00003` |

</details>
<details><summary> Precision </summary><br/>

| Precision | Description | Example | Output |
| --- | --- | --- | --- |
| _.(number)_ | The Precision field determines the maximum output limit. This is determined by the type of formatting used.  <br>  <br>The integer format specifiers such as `%d`, `%i`, `%o`, `%u`, and `%x` or `%X` they define the minimum number of digits to be returned. However, if the value of the `str` argument is less than the set minimum number, it will return a padded with leading zeros.  <br>  <br>For `%f` and `%e` or `%E` specifiers determins the minimum decimal number of digits to be returned. | `('%.5d'):format('100')`  <br>`('%.2f'):format(math.pi)` | `00100`  <br>`3.14` |

</details>

- `format` - The specified string value or format specifiers expression for the string to be formatted in. This doesn't use any pattern-matching expressions.
- `str` - The specified string values in each corresponding format specifiers expression to be formatted.

Example:
```lua
function onCreate()
     local curDate = os.date('*t') -- the '*t' makes it return a table dictionary
     debugPrint(('Date: %d+/%d+/%d+'):format(curDate.month, curDate.day, curDate.year))
end
```

### string.find(str:String, pattern:String, index:Int)
<ins>Finds the first match</ins> of the specified pattern in a given string.

- `str` - The string's content to find a specified pattern.
- `pattern` - The specified pattern to find from the given string.
- `index` - The starting index position on each character of the string to find the pattern; Default value: `1`.

Example:
```lua
function onCreate()
     local textString1 = "Find the index of this 'string'"
     local textString1_start, textString1_end = textString1:find("'string'")
     debugPrint(textString1_start) --> 27
     debugPrint(textString1_end)   --> 34

     local textString2 = 'Repeat Repeat Repeat'
     local textString2_start, textString2_end = textString2:find('Repeat', 13)
     debugPrint(textString2_start) --> 15
     debugPrint(textString2_end)   --> 20
end
```

### string.sub(str:String, startPos:Int, ?endPos:Int)
Substring, it <ins>extracts the specific portion of a string</ins> between the starting and ending index position of the string; Removes any characters that isn't selected.

- `str` - The string's specific content to be extracted.
- `startPos` - The starting position of the content to be extracted.
- `endPos` - An optional parameter, The ending position of the content to be extracted.

Example:
```lua
function onCreate()
     local textString1 = 'Substring this selection goober!'
     local textString1_sub = textString1:sub(16, 24)
     debugPrint(textString1_sub) --> selection
end
```

### string.gsub(str:String, pattern:String, replace:Any, repeat:Int = 1)
A short for "global substitution". <ins>Extracts multiple specific occurrences of the pattern from a string to substitute (replace)</ins> with the given content to pass. The `replace` parameter that can be any "specific" data type for different methods to replace the contents, these are: `string`, `table`, and `function`. Returns the substituted string and how many the function substituted the given pattern.

The `string` replaces the specified pattern directly; the `table` method utilizes the keys from the table and value to replace the specified pattern; and the `function` method this is called if the function found a match to replace; this only has one parameter which only returns the main string to use.

- `str` - The string's specific content to be extracted.
- `pattern` - The specified string pattern to be matched and replaced.
- `replace` - The new content of the string to be replace to old one.
- `repeat` - An optional parameter, The maximum amount of times to substitution to make; Default value: `1`.

Examples:
```lua
function onCreate()
     local textString1 = 'PsychEngine is a bad engine [in my opinion]'                       -- opinions are scary
     local textString1Filter = textString1:gsub('bad', 'good'):gsub('%[in my opinion%]', '') -- no more opinion guys!
     debugPrint(textString1Filter) --> PsychEngine is a good engine

     local textString2 = 'Hello World World World!'
     debugPrint(textString2:gsub('World World', '', 2)) --> Hello World!
end
```
```lua
function onCreate()
     local textString1 = 'There is nothing'
     debugPrint(textString1:gsub('%w+', {is = 'was', nothing = 'something'})) --> There was something

     local textString2 = 'Multiply by two: 2, 43, 12, 43'
     debugPrint(textString2:gsub('%d+', function(str) 
          return tonumber(str) * 2
     end)) --> Multiply by two: 4, 86, 24, 86
end
```

### string.match(str:String, pattern:String, startPos:Int = 1)
Checks if the <ins>extracted substring of the string matches the given pattern</ins>. If it found a match, returns the captured match but there is no match, returns a `nil` value.

- `str` - The string's specific content to be matched.
- `pattern` - The specified string pattern to be matched.
- `startPos` - An optional parameter, the starting index position of the string on where to start the search; Default value: `1`.

Example:
```lua
function onCreate()
     local textString1 = 'Find a match!'
     debugPrint(textString1:match('match')) --> match

     local textString2 = 'I like the number 38453 and 96335'
     debugPrint(textString2:match('%d+'))     --> 38453
     debugPrint(textString2:match('%d+', 25)) --> 96335
end
```

### string.gmatch(str:String, pattern:String)
Works exactly the same as the `match()` function, but it tries to <ins>match multiple extracted substring globally</ins> from the given string. This function should be use in a Generic for loop, as shown below.

- `str` - The string's specific content to be matched.
- `pattern` - The specified string pattern to be matched.

Example:
```lua
local function dictionarySplit(str)
     local result  = {}
     local pattern = '(%w+)%s*=%s*(%w+)' -- Checks the dictionary syntax of the string
     for k,v in (str):gmatch(pattern) do -- '(%w+)%s*=%s*(%w+)' > '(key) = (value)'
          result[k] = v
     end
     return result
end

function onCreate()
     local dictionaryString = 'isGood = true, isBad = false'
     debugPrint(dictionarySplit(dictionaryString).isGood) --> true
     debugPrint(dictionarySplit(dictionaryString).isBad)  --> false
end
```

***

# Table Methods
### table.insert(tab:Table, ?pos:Int, value:Any)
<ins>Forcefully inserts an element inside a given table array</ins>, this will not change the table's element if the position is occupied. It will just push the other elements to new index position.

- `tab` - The table to forcefully insert the given element.
- `pos` - An optional parameter, The specified index position for the new element to be inserted.
- `value` - The value to forcefully insert the given table.

Example:
```lua
local arrayTable = {'apple', 'banana', 'orange'}
table.insert(arrayTable, 'grape')
table.insert(arrayTable, 2, 'cherry')

function onCreate()
     for k,v in pairs(arrayTable) do
          debugPrint(k..': '..v) --> 1: apple, 2: cherry, 3: banana, 4: orange, 5: grape
     end
end
```

### table.remove(tab:Table, ?pos:Int)
<ins>Forcefully removes an element inside a given table array</ins>, used if the element is not being used anymore or you just don't want it.

- `tab` - The table to forcefully remove the given element.
- `pos` - An optional parameter, The specified index position for the specified element to be remove.

Example:
```lua
local arrayTable = {'apple', 'banana', 'tomato', 'orange', 'broccoli'}
table.remove(arrayTable)    -- removes 'broccoli'
table.remove(arrayTable, 3) -- removes 'tomato'

function onCreate()
     for k,v in pairs(arrayTable) do
          debugPrint(k..': '..v) --> 1: apple, 2: banana, 3: orange
     end
end
```

### table.concat(tab:Table, sep:String, ?minPos:Int, ?maxPos:Int)
<ins>Concatenates the given table array elements</ins> into a string with the separator pattern in each element.

- `tab` - The table to concatenate its given elements.
- `sep` - The separation pattern for each elements.
- `minPos` - An optional parameter, The starting index position of the table to start concatenating.
- `maxPos` - An optional parameter, The starting index position of the table to end concatenating.

Example:
```lua
function onCreate()
     local arrayTable1 = {'apple', 'banana', 'orange'}
     local arrayTable2 = {'tomato', 'broccoli', 'onion', 'beetroot', 'turnip'}

     debugPrint(table.concat(arrayTable1, ', '))       --> apple, orange, banana
     debugPrint(table.concat(arrayTable2, ', ', 3, 5)) --> onion, beetroot, turnip
end
```

### table.sort(tab:Table, ?comp:Function)
<ins>Sorts the table array in a given order</ins> by alphabetical order for string and ascending order for numbers. If you try to attempt to sort different data types or mixing other data types, it will throw an error. The sorting can be customize by using the `comp` parameter.

- `tab` - The table to sort its given elements.
- `comp` - An optional parameter, The custom sorting type to be sorted for the function to use.

Example:
```lua
local arrayTable1 = {'grape', 'apple', 'banana', 'orange', 'kiwifruit'}
local arrayTable2 = {'tomato', 'broccoli', 'onion', 'beetroot', 'turnip'}
table.sort(arrayTable1)
table.sort(arrayTable2, function(val1, val2) 
     return val2:byte(3, 3) > val2:byte(3, 3)
end)

function onCreate()
     debugPrint(table.concat(arrayTable1, ', ')) --> apple, banana, grape, kiwifruit, orange
     debugPrint(table.concat(arrayTable2, ', ')) --> tomato, beetroot, onion, broccoli, turnip
end
```

### table.foreach(tab:Table, iter:Function)
<ins>Iterates the table, by passing the key and values</ins> of each iteration over to the provided function. Basically it iterates over the `pairs()` function.

- `tab` - The table to iterate over
- `iter` - The provided function to iterate over.

Example:
```lua
function onCreate()
     table.foreach({a = 93, b = 23, c = true}, function(k,v)
          debugPrint({k,v}) --> [b = 23], [a = 93], [c, true]
     end)
end
```

### table.foreachi(tab:Table, iter:Function)
<ins>Iterates the table, by passing the index and values</ins> of each iteration over to the provided function. Basically it iterates over the `ipairs()` function.

- `tab` - The table to iterate over
- `iter` - The provided function to iterate over.

Example:
```lua
function onCreate()
     table.foreachi({38, 29, 12, true}, function(i,v)
          debugPrint({i,v}) --> [1, 38], [2, 29], [3, 12], [4, true]
     end)
end
```

***

### table.new(narray:Int, nhash:Int)
<ins>Creates a new empty table</ins> and pushes it onto the memory stack. The new table includes pre-allocated space for the `narray` parameter for array elements and the `nhash` parameter for dictionary elements. The pre-allocation is pretty useful, if you know the exact elements will the table have; Requires: `require('table.new')`.

> [!WARNING]
> This method has limited information when I research this, so please take it with a grain of salt on the descriptions.

- `narray` - The specified number of array elements.
- `nhash` - The specified number of dictionary elements.

Example:
```lua
require('table.new')

local newArray = table.new(4, 0)
local newHash  = table.new(0, 4)
function onCreate()
     debugPrint(newArray) --> []
     debugPrint(newHash)  --> []
end
```

### table.clear(tab:Table)
Clears all the table's elements, keys and values, but preserves the allocated size of arrays or hash. Which makes re-inserting elements be more faster, pretty useful in this case; Requires: `require('table.clear')`.

- `tab` - The table to clear its contents.

Example:
```lua
require('table.clear')

local theNermals = {23, 74, 23, 43}
table.clear(theNermals)

function onCreate()
     debugPrint(theNermals) --> []
end
```

***

# Mathematical Methods
### math.min(num:Float)
Checks multiple numbers and tries to <ins>returns the minimum number</ins> it can find.

- `num` - The multiple numbers to be checked.

Example: 
```lua
function onCreate()
     debugPrint(math.min(1, 5, 2, 3, 9, 2))    --> 1
     debugPrint(math.min(-3, -2, -4, -10, -1)) --> -10
end
```

### math.max(num:Float)
Checks multiple numbers and tries to <ins>returns the maximum number</ins> it can find.

- `num` - The multiple numbers to be checked.

Example: 
```lua
function onCreate()
     debugPrint(math.max(1, 5, 2, 3, 9, 2))    --> 9
     debugPrint(math.max(-3, -2, -4, -10, -1)) --> -1
end
```

### math.floor(num:Float)
<ins>Rounds down the given number</ins> to its nearest interger value.

- `num` - The number to be round down.

Example:
```lua
function onCreate()
     debugPrint(math.floor(34.82)) --> 34
     debugPrint(math.floor(12.12)) --> 12
end
```

### math.ceil(num:Float)
<ins>Rounds up the given number</ins> to its nearest interger value.

- `num` - The number to be round up.

Example:
```lua
function onCreate()
     debugPrint(math.floor(34.82)) --> 35
     debugPrint(math.floor(12.12)) --> 13
end
```

### math.abs(num:Float)
Returns the absolute value of the given number. In layman's term <ins>it converts negative numbers into positive ones</ins>.

- `num` - The number to return the absolute value, if number is a positive then nothing happens.

Example:
```lua
function onCreate()
     debugPrint(math.abs(-10)) --> 10
     debugPrint(math.abs(341)) --> 341
end
```

### math.sqrt(num:Float)
Returns the square root of the given number.

- `num` - The number to return the square root value, it does not use negative numbers of the number zero. If you try to use negative numbers, it returns `-nan` for zeros it returns `0.0`.

Example:
```lua
function onCreate()
     debugPrint(math.sqrt(4))  --> 2.0
     debugPrint(math.sqrt(8))  --> 2.8284271247462
     debugPrint(math.sqrt(-2)) --> -nan
end
```

### math.modf(num:Float)
Splits both the integer and floating-point of the given number.

- `num` - The given floating-point number to split.

Example:
```lua
local int, flt = math.modf(3.14)
function onCreate()
     debugPrint(int) --> 3
     debugPrint(flt) --> 0.14
end
```

### math.log(exp:Float, base:Float)
<ins>Returns the logarithm of a number to the base number</ins> which is the exponent value. Basically the inverse function of the exponentiation. Also there is a similar function called `math.log10()`, which the default value of the base parameter is `10`

- `exp` - The exponentiation value of the number.
- `base` - The base number of the logarithm number.

Example:
```lua
function onCreate()
     debugPrint(2^5)             --> 32
     debugPrint(math.log(32, 2)) --> 5
end
```

### math.random(min:Int, max:Int)
<ins>Randomize a random number between the minimum to maximum values</ins>. This function uses Pseudo-random Number Generator (PRNG) it basically uses a seed for a number pattern. Which makes it not "truly random" because when you run the function it will return the exact same number pattern. Because it uses the same seed that the `math.random()` function uses.

Now if you don't like this to happen either use. `getRandomInt()` or `getRandomFloat()` functions, which functions as the same as `math.random()` function but more random. Or use `math.randomseed()` function that changes the seed of the `math.random()` function.

- `min` - The minimum number value to start randomizing.
- `max` - The maximum number value to end randomizing.

Example:
```lua
function onCreate()
     debugPrint(math.random(0, 10))
     debugPrint(math.random())
end
```

### math.randomseed(seed:Int)
<ins>Changes the pseudo-random number seed for the `math.random()` function</ins>. If you want `math.random()` to be "truly random" use `os.time()` function. Because it returns every seconds from the Unix Epoch this started from `1 January 1970, 00:00:00`. Making the seed change every seconds.

- `seed` - The seed number to be generate.

Example:
```lua
function generateSeed(seed)
     math.randomseed(seed)

     local RNGTab = {}
     for _ = 1, 3 do
          table.insert(RNGTab, math.random(1, 5))
     end
     return table.concat(RNGTab, ' ')
end

function onCreate()
     debugPrint(generateSeed(1))
     debugPrint(generateSeed(5))
     debugPrint(generateSeed(os.time()))
end
```

## Trigonometry
### math.deg(rad:Float)
<ins>Converts radian to degrees</ins> of the given number.

- `rad` - The given radian number to convert to degrees.

Example:
```lua
function onCreate()
     debugPrint(math.deg(23))          --> 1317.0
     debugPrint(math.deg(2 * math.pi)) --> 360.0
end
```

### math.rad(deg:Float)
<ins>Converts degrees to radians</ins> of the given number.

- `deg` - The given degree number to convert to radian.

Example:
```lua
function onCreate()
     debugPrint(math.rad(23))  --> 0.4014257279587
     debugPrint(math.rad(360)) --> 6.2831853071796
end
```

### math.sin(rad:Float)
<ins>Returns the sine value</ins> of the given number, expects the number in radians.

- `rad` - The number representing in radians to calculate the sine value.

Example:
```lua
function onCreate()
     debugPrint(math.sin(180)) --> -0.80115263573383
     debugPrint(math.sin(360)) --> 0.95891572341431
     debugPrint(math.sin(2 * math.pi)) --> -2.4492935982947e-16
end
```

### math.cos(rad:Float)
<ins>Returns the cosine value</ins> of the given number, expects the number in radians.

- `rad` - The number representing in radians to calculate the cosine value.

Example:
```lua
function onCreate()
     debugPrint(math.cos(180)) --> -0.59846006905786
     debugPrint(math.cos(360)) --> -0.28369109148653
     debugPrint(math.cos(2 * math.pi)) --> 1.0
end
```

### math.tan(rad:Float)
<ins>Returns the tangent value</ins> of the given number, expects the number in radians.

- `rad` - The number representing in radians to calculate the tangent value.

Example:
```lua
function onCreate()
     debugPrint(math.tan(180)) --> 1.3386902103512
     debugPrint(math.tan(360)) --> -3.380140413961
     debugPrint(math.tan(2 * math.pi)) --> -2.4492935982947e-16
end
```

### math.asin(rad:Float)
<ins>Returns the inverse sine value</ins> of the given number, expects the number in radians; Returns between: `-pi/2` for negatives and `pi/2` for positives.

- `rad` - The number representing in radians to calculate the inverse sine value. This expects a number between `-1` to `1`, if not then returns a nan value.

Example:
```lua
function onCreate()
     debugPrint(math.asin(-1)) --> -1.5707963267949
     debugPrint(math.asin(0))  --> 0.0
     debugPrint(math.asin(1))  --> 1.5707963267949
end
```

### math.acos(rad:Float)
<ins>Returns the inverse cosine value</ins> of the given number, expects the number in radians; Returns between: `pi` for negative and `0` for positive.

- `rad` - The number representing in radians to calculate the inverse cosine value. This expects a number between `-1` to `1`, if not then returns a nan value.

Example:
```lua
function onCreate()
     debugPrint(math.acos(-1)) --> 3.1415926535898
     debugPrint(math.acos(0))  --> 1.5707963267949
     debugPrint(math.acos(1))  --> 0.0
end
```

### math.atan(rad:Float)
<ins>Returns the inverse tangent value</ins> of the given number, expects the number in radians; Returns between: `-pi/2` for negative radians and `pi/2` for positive radians.

- `rad` - The number representing in radians to calculate the inverse tangent value.

Example:
```lua
function onCreate()
     debugPrint(math.atan(-1)) --> -0.78539816339745
     debugPrint(math.atan(1))  --> 0.78539816339745
     debugPrint(math.atan(3))  --> 1.2490457723983
end
```

### math.atan2(yrad:Float, xrad:Float)
<ins>Returns the inverse tangent value of the quotient</ins> in its arguments, expects the number in radians. The number returned represents the counterclockwise angle in radians between the positive x-axis and the ray from (`0`, `0`) to the point (`x`, `y`).

- `yrad` - The y coordinate number representing in radians.
- `xrad` - The x coordinate number representing in radians.

Example:
```lua
function onCreate()
     local angleRad = function(yrad, xrad)
          return (math.atan2(yrad, xrad) * 180) / math.pi
     end

     debugPrint(angleRad(10, 10))   --> 45.0
     debugPrint(angleRad(-24, -24)) --> -135.0
     debugPrint(angleRad(23, 13))   --> 60.524110996754
end
```

### math.sinh(rad:Float)
<ins>Returns the hyperbolic sine value</ins> of the given number, expects the number in radians.

- `rad` - The number representing in radians to calculate the hyperbolic sine value.

Example:
```lua
function onCreate()
     debugPrint(math.sinh(1))   --> 1.1752011936438
     debugPrint(math.sinh(0.3)) --> 0.30452029344714
     debugPrint(math.sinh(-5))  --> -74.203210577789
end
```

### math.cosh(rad:Float)
<ins>Returns the hyperbolic cosine value</ins> of the given number, expects the number in radians.

- `rad` - The number representing in radians to calculate the hyperbolic cosine value.

Example:
```lua
function onCreate()
     debugPrint(math.cosh(1))   --> 1.5430806348152
     debugPrint(math.cosh(0.3)) --> 1.0453385141289
     debugPrint(math.cosh(-5))  --> 74.209948524788
end
```

### math.tanh(rad:Float)
<ins>Returns the hyperbolic tangent value</ins> of the given number, expects the number in radians.

- `rad` - The number representing in radians to calculate the hyperbolic tangent value.

Example:
```lua
function onCreate()
     debugPrint(math.tanh(1))   --> 0.76159415595576
     debugPrint(math.tanh(0.3)) --> 0.29131261245159
     debugPrint(math.tanh(-5))  --> -0.9999092042626
end
```

## Constants
### math.pi
The returns the 14-digit value of pi; Returns: `3.1415926535898`.

### math.huge
Returns the maximum number limit to become infinite; Returns an `inf`.