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
- `startPos` - The selected starting position of the string to convert; Default value: `1`.
- `endPos` - The selected ending position of the string to convert; Default value: `1`.

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

### string.format(format:String, str:String...):String
Formats the supplied string content using the given format specifiers. A format specifiers represent what position of the values to be inserted in, with specifiers that will change the result. This function is based on the C function `printf()` and generally follows the same rules. 

Some format specifiers being options and modifiers these include: <kbd>l</kbd>, <kbd>L</kbd>, <kbd>F</kbd>, <kbd>n</kbd>, <kbd>h</kbd>, and <kbd>*</kbd> are not supported in Lua. Additionally there is an extra format specifier <kbd>q</kbd> type.

Format Specifier Syntax:
> The syntax includes the flags, width, precision, and type. The format specifiers inside brackets are optional to use.
```txt
%[flags][width].[precision]type
```

- `format` - The provided format of the string to be written to.
- `str` - The string content to be formatted to each corresponding format specifiers, if it exists.

<details><summary> Types </summary><br/>

| Types 	| Description 	| Input 	| Output 	|
|---	|---	|---	|---	|
| `%d`, `%i` 	| A signed integer, represents both positive and negative decimal integers. 	| `634`<br>`-33` 	| `634`<br>`-33` 	|
| `%f` 	| A signed floating point, represents both positive and negative decimal <br>floating point. 	| `3.14`<br>`-5.3` 	| `3.14`<br>`-5.3` 	|
| `%u` 	| An unsigned integer, represents only positive decimal integers. If you<br>attempted to use negative integers, it will return the maximum representable <br>value. 	| `94`<br>`-1` 	| `94`<br>`1.84e+20` 	|
| `%o` 	| An unsigned integer, represents only positive octal (base 8) integer. Converts<br>a decimal integer to an octal integer. 	| `471` 	| `731` 	|
| `%x`, `%X` 	| An unsigned integer, represents only positive hexadecimal (base 16) integer.<br>Converts a decimal integer to a hexadecimal integer. For type `%x` converts<br>upper alphabetical character to lower-case and vice versa for type `%X`. It<br>must have either `0x` or `0X` for the hexadecimal. 	| `0xff43ba`<br>`0XFF43BA` 	| `0XFF43BA`<br>`0xff43ba` 	|
| `%e`, `%E` 	| A signed integer, represents both positive and negative scientific (exponential) <br>notation number. Converts a number to a notation number by `6` decimal places. <br>For type `%e` converts the letter lower-case <kbd>e</kbd> to a upper-case <kbd>E</kbd><br>character and vice versa for type `%E`. 	| `58.3e+27`<br>`93.5E-73` 	| `58.3E+27`,<br>`93.5e-73` 	|
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

## Pattern Matching Methods
> *For more information; Main article:* String Patterns

Pattern-matching uses string patterns to match a series of character combinations to get the specific output. These are only used for searching, matching, verifying text data, and replacing characters. Typically these string patterns are only used in the `pattern` parameter in each method. 

### string.find(str:String, pattern:String, index:Int):String
### string.sub(str:String, startPos:Int, ?endPos:Int):String
### string.gsub(str:String, pattern:String, replace:Any, repeat:Int = 1):String
### string.match(str:String, pattern:String, startPos:Int = 1):String
### string.gmatch(str:String, pattern:String):String