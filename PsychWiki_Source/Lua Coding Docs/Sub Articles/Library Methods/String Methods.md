# String Methods
### string.upper(str:String):String
Converts lower-case characters from a string to a upper-case characters.

### string.lower(str:String):String
Converts upper-case characters from a string to a lower-case characters.

### string.byte(str:String, startPos:Int = 1, endPos:Int = 1):Int
Converts any characters from a string to a ASCII number corresponding to the characters.

### string.char(byte:Int...):String
Converts a single or multiple ASCII number to the corresponding character.

### string.repeat(str:String, repeat:Int):String
Repeats the content of the string, the repetition is determined by how much will it repeat.

### string.reverse(str:String):String
Reverses the content of the string, that's it.

### string.format(fromat:String, str:String...):String
Formats the supplied string content using the given format specifiers. A format specifiers represent what position of the values to be inserted in, with specifiers that will change the result. This function is based on the C function `printf()` and generally follows the same rules. 

Some format specifiers being options and modifiers these include: `l`, `L`, `F`, `n`, `h`, and `*` are not supported in Lua. Additionally there is an extra format specifier type: `q` for quotes.

Format Specifier Syntax:
> The syntax includes the flags, width, precision, and type. The format specifiers inside brackets are optional to use.
```txt
%[flags][width].[precision]type
```

- `format` - The format of the string to be written to.
- `str` - The string content to be formatted to each corresponding format specifiers, if it exists.

<details><summary> Types </summary><br/>

| Types 	| Description 	| Input 	| Output 	|
|---	|---	|---	|---	|
| `%d`, `%i` 	| A signed integer, represents both positive and negative decimal integers. 	| `634`,<br>`-33` 	| `634`,<br>`-33` 	|
| `%u` 	| An unsigned integer, represents only positive decimal integers. If you<br>attempted to use negative integers, it will return the maximum representable <br>value. 	| `94`,<br>`-1` 	| `94`,<br>`1.84e+20` 	|
| `%f` 	| A signed floating point, represents both positive and negative decimal <br>floating point. 	| `3.14`,<br>`-5.3` 	| `3.14`,<br>`-5.3` 	|
| `%o` 	| An unsigned integer, represents only positive octal (base 8) integer. Converts<br>a decimal integer to an octal integer. 	| `471` 	| `731` 	|
| `%x`, `%X` 	| An unsigned integer, represents only positive hexadecimal (base 16) integer.<br>Converts a decimal integer to a hexadecimal integer. For type `%x` converts<br>upper alphabetical character to lower-case and vice versa for type `%X`. It<br>must have either `0x` or `0X` for the hexadecimal. 	| `0xff43ba`,<br>`0XFF43BA` 	| `0XFF43BA`,<br>`0xff43ba` 	|
| `%e`, `%E` 	| A signed integer, represents both positive and negative scientific (exponential) <br>notation number. For type `%e` converts the letter lower-case "e" to a upper-case<br>"E" character and vice versa for type `%E`. 	| `58.3e+27`,<br>`93.5E-73` 	| `58.3E+27`,<br>`93.5e-73` 	|
| `%c` 	| An unsigned integer, represents only a positive ASCII number corresponding to <br>a specific character. 	| `97` 	| `a` 	|
| `%s` 	| A string, that's it. 	| `Sup` 	| `Sup` 	|
| `%q` 	| A string, represents a string but will be quoted with double-quote characters <br><kbd>""</kbd>. If there is a double-quote characters inside a string, it will add an<br>backslash character <kbd>\\</kbd> to that character. 	| `print("hi")` 	| `"print(\"hi\")"` 	|
| `%%` 	| An escape character for the percentage character <kbd>%</kbd>. 	| `75%% pure` 	| `75% pure` 	|

</details>

<details><summary> Precision </summary><br/>

</details>

<details><summary> Width </summary><br/>

</details>

<details><summary> Flags </summary><br/>

</details>

## Pattern Matching Methods
> *For more information; Main article:* String Patterns

Pattern-matching uses string patterns to match a series of character combinations to get the specific output. These are only used for searching, matching, verifying text data, and replacing characters. Typically these string patterns are only used in the `pattern` parameter in each method. 

### string.find(str:String, pattern:String, index:Int):String
### string.sub(str:String, startPos:Int, ?endPos:Int):String
### string.gsub(str:String, pattern:String, replace:Any, repeat:Int = 1):String
### string.match(str:String, pattern:String, startPos:Int = 1):String
### string.gmatch(str:String, pattern:String):String