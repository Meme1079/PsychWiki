# String Methods
### string.upper(str:String):String
Converts lower-case characters from a string to a upper-case characters.

- `str` - The string content characters to be converted to upper-case characters.

Example:
```lua
debugPrint( ('subterfuge!!'):upper() ) --> SUBTERFUGE!!
debugPrint( ('sUbTErFuGE!!'):upper() ) --> SUBTERFUGE!!
```

### string.lower(str:String):String
Converts upper-case characters from a string to a lower-case characters.

- `str` - The string content characters to be converted to lower-case characters.

Example:
```lua
debugPrint( ('SUBTERFUGE!!'):lower() ) --> subterfuge!!
debugPrint( ('sUbTErFuGE!!'):lower() ) --> subterfuge!!
```

### string.byte(str:String, startPos:Int = 1, endPos:Int = 1):Int,Int...
Converts any characters from a string to a ASCII number corresponding to the characters. Returns multiple values, depending how larg the range of selected characters to convert.

- `str` - The string content characters to be converted to the corresponding ASCII number.
- `startPos` - An optional parameter, The selected starting position of the string to convert; Default value: `1`.
- `endPos` - An optional parameter, The selected ending position of the string to convert; Default value: `1`.

Example:
> The method selected the index position from `1` to `2`, which it got `47` from the string. Then converting to the corresponding ASCII number, for `4` is `52` and `7` is `55`. The method is enclose with a table, becuase it will use up the arguments of the `debugPrint()` which will only print `52`.
```lua
debugPrint( {('47Fakers'):byte(1, 2)} ) --> [52, 55]
```

### string.char(byte:Int...):String
Converts a single or multiple ASCII number to the corresponding character.

- `byte` - An infinite parameter, The byte or ASCII number to be converted to the corresponding character.

Example:
> Converts a bunch of ASCII number of each argument to the corresponding character, resulting in this thing.
```lua
debugPrint( string.char(67, 117, 109, 101, 110, 101) ) --> Cumene
```

### string.rep(str:String, repeat:Int):String
Repeats the content of the string, the repetition is determined by how much will it repeat.

- `str` - The string content to be repeated.
- `repeat` - The amount of repitition will the string content be repeated.

Example:
```lua
debugPrint( ('Spam'):rep(5) ) --> SpamSpamSpamSpamSpam
```

### string.reverse(str:String):String
Reverses the content of the string, that's it.

- `str` - The string content to be reversed.

Example:
```lua
debugPrint( ('askew'):reverse() ) --> weksa
```

### string.sub(str:String, startPos:Int = 1, ?endPos:Int):String
Substring, extracts a given segment, more specifically the range of the string from the start and end index position of the string. Removes any characters that aren't selected from the range.

- `str` - The string content to substring for a given segment.
- `startPos` - An optional parameter, The starting index position for the segment to get; Default value: `1`.
- `endPos` - An optional parameter, The ending index position for the segment to get.

Examples:
> We substring the string to get the word "Javascript", by finding the index position of the word. The string index always start at `1`, so the starting index position is `14` which is where the character <kbd>J</kbd> occupies. The ending position is `25` which is the character <kbd>t</kbd> occupies, thus resulting the output "Javascript".
```lua
local content = 'Hello world in Javascript, I think'
debugPrint( (content):sub(14, 25) ) --> Javascript
```

### string.format(format:String, str:Any...):String
Formats the supplied string content using the given format specifiers. A format specifiers represent what position of the values to be inserted in, with specifiers that will change the result. This function is based on the C function `printf()` and generally follows the same rules. 

Some format specifiers being options and modifiers these include: <kbd>l</kbd>, <kbd>L</kbd>, <kbd>F</kbd>, <kbd>n</kbd>, <kbd>h</kbd>, and <kbd>*</kbd> are not supported in Lua. Additionally there is an extra format specifier <kbd>q</kbd> type. Format specifiers includes the type, the specific character to use; precision, how many characters will it output; width, for padding empty spaces; and flags, for modifying the padding characters.

Format Specifier Syntax:
> The format specifiers encased in brackets are optional to use.
```txt
%[flags][width].[precision]type
```

- `format` - The provided format pattern for the given string to be written to.
- `str` - The string content to be formatted to the provided format and each corresponding format specifiers, if it exists. Numbers can also be used as an argument here.

<details><summary> Types </summary><br/>

| Types 	| Description 	| Input 	| Output 	|
|---	|---	|---	|---	|
| `%d`, `%i` 	| A signed integer, represents both positive and negative decimal integers. 	| `634`<br>`-33` 	| `634`<br>`-33` 	|
| `%f` 	| A signed floating point, represents both positive and negative decimal <br>floating point. 	| `3.14`<br>`-5.3` 	| `3.14`<br>`-5.3` 	|
| `%u` 	| An unsigned integer, represents only positive decimal integers. If you<br>attempted to use negative integers, it will return the maximum representable <br>value. 	| `94`<br>`-1` 	| `94`<br>`1.84e+20` 	|
| `%o` 	| An unsigned integer, represents only positive octal (base 8) integer. Converts<br>a decimal integer to an octal integer. 	| `471` 	| `731` 	|
| `%x`, `%X` 	| An unsigned integer, represents only positive hexadecimal (base 16) integer.<br>Converts a decimal integer to a hexadecimal integer. For type `%x` converts<br>upper alphabetical character to lower-case and vice versa for type `%X`. It<br>must have either `0x` or `0X` for the hexadecimal. 	| `0xff43ba`<br>`0XFF43BA` 	| `0XFF43BA`<br>`0xff43ba` 	|
| `%e`, `%E` 	| A signed integer, represents both positive and negative scientific (exponential) <br>notation number. Converts a number to a notation number by `6` decimal places. For type `%e` converts the letter lower-case <kbd>e</kbd> to a upper-case <kbd>E</kbd><br>character and vice versa for type `%E`. 	| `58.3e+27`<br>`93.5E-73` 	| `58.3E+27`,<br>`93.5e-73` 	|
| `%c` 	| An unsigned integer, represents only a positive ASCII number corresponding to <br>a specific character. Converts a character to the corresponding ASCII number, that's it. 	| `97` 	| `a` 	|
| `%s` 	| A string, that's it. 	| `Sup` 	| `Sup` 	|
| `%q` 	| A string, represents a string but will be quoted with double-quote characters <br><kbd>""</kbd>. If there is a double-quote characters inside a string, it will add an<br>backslash character <kbd>\\</kbd> to that character. 	| `print("hi")` 	| `"print(\"hi\")"` 	|
| `%%` 	| An escape character for the percentage character <kbd>%</kbd>. 	| `75%% pure` 	| `75% pure` 	|

</details>

<details><summary> Precision </summary><br/>

| Precision 	| Description 	| Input 	| Output 	|
|---	|---	|---	|---	|
| .(number) 	| The precision specifier determines the maximum width limit <br>of the output. The formatting will be depending on the specific <br>type specifiers. Also the period character <kbd>.</kbd> is required,<br>to distinguish both the width and precision specifiers. To avoid<br>confusion in Lua.<br><br>For the type specifiers: `%d` or `%i`, `%u`, `%o`, and `%x` or `%X` <br>will have padded zeros `0` from the left side. The precision number <br>define the length of the digit to be formatted. If the digit length <br>of the number is less than the digit length of the precision. It will <br>replace the missing digits with zeros `0`.<br><br>For the type specifiers: `%f` and `%e` or `%E` will define the length<br>of the digits after the decimal point.<br><br>For the type specifiers: `%s` will define the length of the string to<br>substring. 	| `('%.3d'):format(123)`<br>`('%.1d'):format(123)`<br>`('%.5d'):format(56)`<br>`('%.5d'):format(256)`<br>`('%.5d'):format(6356)`<br>`('%.6o'):format(125)`<br>`('%.6x'):format(184)`<br><br>`('%.2f'):format(math.pi)`<br>`('%.2e'):format(1.3834e10)`<br>`('%.2e'):format(1e-10)`<br><br>`('%.3s'):format('substring')` 	| `123`<br>`123`<br>`00056`<br>`00256`<br>`06356`<br>`000175`<br>`0000b8`<br><br>`3.14`<br>`1.38e+10`<br>`1.00e-10`<br><br>`sub` 	|

</details>

<details><summary> Width </summary><br/>

| Width 	| Description 	| Input 	| Output 	|
|---	|---	|---	|---	|
| (number) 	| The width specifier determines the the minimum number <br>of characters of width the value should occupy. If the<br>character length of the value is less than the width<br>specifier size. The missing characters will be replaced <br>by spaces within the string content. 	| `('%4s'):format('Sonic')`<br>`('%16s'):format('& Knuckles')`<br><br>`('%3d'):format(43)`<br>`('%3d'):format(343)` 	| `Sonic`<br>`      & Knuckles`<br><br>` 43`<br>`343` 	|

</details>

<details><summary> Flags </summary><br/>

| Flags 	| Description 	| Input 	| Output 	|
|---	|---	|---	|---	|
| `-` 	| Modifies the width specifiers padding by setting it to right-justify <br>within the string content. 	| `('%-4d'):format(11)`<br>`('%4d'):format(11)` 	| `11  `<br>`  11` 	|
| `+` 	| Modifies the width specifiers padding by forcing a plus sign character <br><kbd>+</kbd> to positive numbers. Negative numbers are not affected by<br>this modification. 	| `('%+3d'):format(343)`<br>`('%+3d'):format(33)`<br><br>`('%+2d'):format(0)`<br>`('%+2d'):format(-40)` 	| `+343`<br>` +33`<br><br>`+0`<br>`-40` 	|
| `#` 	| Modifies the width specifiers padding by forcing a character to the <br>corresponding type specifiers. Octals (base 8) will have a zero <br>character `0` at the beginning of the number. And for hexadecimal <br>(base 16), will have a "hexa-prefix" `0x` in `%x` or `0X` in `%X`<br>type specifiers, at the beginning of the number. 	| `('%#o'):format(136)`<br>`('%#x'):format(136)` 	| `0210`<br>`0x88` 	|
| `0` 	| Modifies the width specifiers padding by replacing the empty spaces to<br>zero characters `0`, kinda like the precision specifiers in numbers.<br>Also it only works in numbers. 	| `('%06x'):format(934)` 	| `0003a6` 	|

</details>

Examples:
> Gets the current date from the `os.date()` method, and formats the month, day, and year to each format specifiers.
```lua
local date = os.date('*t') -- gets the current date, month, day, and year
debugPrint( ('Date: %d/%d/%d'):format(date.month, date.day, date.year) )
```
> Conversion of decimal to octals and hexadecimal. All including there base prefixes to differentiate each other.
```lua
debugPrint( ('Octals: %#o'):format(3848) )      --> Octals: 07410
debugPrint( ('Haxedecimal: %#x'):format(3848) ) --> Haxedecimal: 0xf08
```
> Rounds a pi number to two decimal places.
```lua
debugPrint( ('%.2f'):format(math.pi) ) --> 3.14
```

## Pattern Matching Methods
> *For more information; Main article:* String Patterns

Pattern-matching uses string patterns to match a series of character combinations to get the specific output. These are only used for searching, matching, verifying text data, and replacing characters. Typically these string patterns are only used in the `pattern` parameter in each method. 

### string.find(str:String, pattern:String, index:Int = 1):String
Finds the first specific pattern within the content of the string. Returns the starting and ending index positions of the found pattern within the string content.

- `str` - The string content to find the specific pattern.
- `pattern` - The specific pattern to find within the string content.
- `index` - An optional parameter, The index position of to start finding the given pattern; Default value: `1`.

Examples:
> Finds the first pattern found within the string content. The first line found the pattern between index positions `1` and `3`. The second line found the pattern between index positions `5` and `7`.
```lua
debugPrint( ('cir cir cir'):find('cir') )    --> 1, 3
debugPrint( ('sio cir cir'):find('cir') )    --> 5, 7
```
> Finds the first pattern at the index position `9`.
```lua
debugPrint( ('cir cir cir'):find('cir', 7) ) --> 9, 11
```

### string.gsub(str:String, pattern:String, replace:Any, ?limit:Int):String
Short for "global substitution", finds multiple occurrences of a given pattern and substitutes (replaces) with the given content. Additionally the `replace` parameter can have different data types, each giving different methods to replace the given patterns. These data types includes: string, table, and function.

The string replaces the specified pattern directly, the default method. The table utilizes its keys to represent the
characters or words to replace, it doesn't support string patterns. And its values represents the content to replace with. Finally the function, called after a specific pattern is found, you can do particular algorithms to manipulate the results.

The method returns two values, the substituted string content. And the amount of pattern that was removed from the string content.

- `str` - The string content to substitute a specific pattern with the new content.
- `pattern` - The multiple occurrences of a specific pattern to be substituted.
- `replace` - The given content to replace the specific pattern.
- `limit` - An optional parameter, the maximum amount of times the substitution to make.

Examples:
> Replaces the any word that is "yolo" with "polo" instead. The second removes the word "World" by replacing with an empty string. This only limits to two occurrences of that word.
```lua
local content1 = 'How many holes in a yolo?'
debugPrint( content1:gsub('yolo', 'polo') )   --> How many holes in a polo?

local content2 = 'Hello World World World!'
debugPrint( content2:gsub('%sWorld', '', 2) ) --> Hello World!
```
> The keys in the table are the characters to replace with the value of the new value to replace.
```lua
local content1 = 'There is nothing'
local replace1 = {is = 'was', nothing = 'something'}
debugPrint( content1:gsub('%w+', replace1) ) --> There was something

local content2 = 'I like the numbers 34, 92, and 56'
local replace2 = {['34'] = 38, ['56'] = 97}
debugPrint( content2:gsub('%d+', replace2) ) --> I like the numbers 38, 92, and 97
```
> Finds any numbers within the string content and multiplies it by `2`. The `str` parameter from the function is the returned pattern that will be substituted.
```lua
local content = 'Multiply by two: 2, 43, 12, 43'
debugPrint(content:gsub('%d+', function(str)
     return tonumber(str) * 2
end)) --> Multiply by two: 4, 86, 24, 86
```

### string.match(str:String, pattern:String, startPos:Int = 1):String
Finds the first matching pattern from the string content. If the match has been found, it will return the captured match removing unnecessary unmatch patterns. If there is no match found, then returns a `nil` value.

- `str` - The string content to find the first matched pattern.
- `pattern` - The specific pattern to find the match.
- `startPos` - An optional parameter, The starting index position of the string to find the first match; Default value: `1`.

Example:
```lua
debugPrint( ('Found the match!'):match('match!') )        --> match!
debugPrint( ('I like numbers 9 and 1'):match('%d+', 17) ) --> 1
```

### string.gmatch(str:String, pattern:String):String
Works exactly the same as the `string.match()` method; tries to find multiple matching pattern from the string content. This method should be recommended to be used in generic for loops, as shown below.

- `str` - The string content to find multiple matched pattern.
- `pattern` - The specfic pattern to find the match.

Example:
> Here we have a custom function that converts a dictionary syntax within a string to get the value. The `string.gmatch()` method looks for any multiple occuring patterns with the string content, if found. The found patterns will be insert to the `result` table variable, for every pattern found. Once done the `result` table variable will be returned from the custom function.

```lua
local function dictionarySplit(str)
     local result  = {}
     local pattern = '(%w+)%s*=%s*(%w+)' -- Checks the dictionary syntax of the string
     for k,v in (str):gmatch(pattern) do -- '(%w+)%s*=%s*(%w+)' > '(key) = (value)'
          result[k] = v
     end
     return result
end

local dictionaryString = 'isGood = true, isBad = false'
debugPrint(dictionarySplit(dictionaryString).isGood) --> true
debugPrint(dictionarySplit(dictionaryString).isBad)  --> false
```