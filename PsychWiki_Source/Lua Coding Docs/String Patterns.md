# String Patterns
String patterns are special patterns that try to match a series of character combinations to get the specific output. This commonly used for searching, matching, verifying the text data and replacing characters inside a `strings`. Some string module functions support string patterns that allow you to pass special characters into its arguments.

The reason why Lua only use string patterns as supposed to Regular Expressions (RegEx) like a normal programming language. Because the size of it, it's more than 4,000 lines of code are typically required for a RegEx implementation. This exceeds the combined size of all Lua standard libraries. In contrast, Lua's pattern matching implementation comprises fewer than 500 lines. Which has some disadvantages or advantages depeding on what your views about it.

Example:
```lua
function onCreatePost()
     setTextString('scoreTxt', 'Score: 0 | Misses: 0 | Accuracy: ?')
end

local scorePattern1 = '%d+%p+%d+%%'  -- Checks the accuracy is a float  | '%d+%p+%d+%%' > '99.45%'
local scorePattern2 = '%d+%%'        -- Checks the accuracy is an int   | '%d+%%' > '100%'
function onUpdateScore(miss)
     local scoreTxt = getTextString('scoreTxt')
     local scoreTxtDisplay1 = 'Score: '..getScore()..' | Misses: '..miss..' | Accuracy: '
     local scoreTxtDisplay2 = (scoreTxt:match(scorePattern1) or scoreTxt:match(scorePattern2))
     setTextString('scoreTxt', scoreTxtDisplay1..scoreTxtDisplay2..' ['..ratingFC..']')
end
```

In this example, the code tries to replicate the old format for the score text. By using some "special characters" from string patterns we were able to get the accuracy value. To get an accurate accuracy value when replicating the old format for the score text.

## Special Sequences
Special sequence are characters used to represent a group of specific characters that can be used by the pattern to match the desired characters. They start with a percent <kbd>%</kbd> character with the given character to match, if the character is capitalize it will try to NOT the match the given character. 

For example, the character class `%p` matches any punctuation characters but if we capitlize it `%P` it will try not match any punctuation characters. we can use this for to manipulate the punctuation characters to whatever we want.

| Characters | Description                         | Matched Results                      |
|:----------:|-------------------------------------|--------------------------------------|
|    `%a`    | Matches any Alphabetical Characters | `AaBbCcDd`                           |
|    `%w`    | Matches any Alphanumeric Characters | `AaBb0123`                           |
|    `%d`    | Matches any Numeric Characters      | `01234567`                           |
|    `%l`    | Matches any Lower-case Characters   | `aabbccdd`                           |
|    `%u`    | Matches any Upper-case Characters   | `AABBCCDD`                           |
|    `%p`    | Matches any Punctuation Characters  | `!@#$%;,.`                           |
|    `%x`    | Matches any Hexadecimal Characters  | `0123456789AaBbCcDdEeFf`             |
|    `%s`    | Matches any White Space Characters  | Space, New Line, Tab, etc            |
|    `%c`    | Matches any Control Characters      | Carriage Return, Escape, Delete, etc |
|    `.`     | Matches any Characters              | `aA12!@ _`                           |

Example:
```lua
local pattern = '@a'
function onCreate()
     debugPrint(pattern:match('%p')) --> @
     debugPrint(pattern:match('%P')) --> a
end
```

## Meta Characters
Meta characters are modifiers for special sequences or characters that are reserved symbols used to assist in matching, and having a special meaning instead of its literal meaning. They extend the meaning to define some rules to find the specific pattern in the string. To make really complex patterns to match the desired pattern.

For example, the meta character plus `+` will try to match the longest chain it could discover from a given special sequence. The meta character caret `^` will try to match specific characters at the start of a line.

### Repetition
| Characters | Description                                                                                |
|:----------:|--------------------------------------------------------------------------------------------|
|    `+`     | Matches one or more repititions of a character; tries to match the longest possible chain.   |
|    `*`     | Matches zero or more repititions of a character; tries to match the longest possible chain.  |
|    `-`     | Matches zero or more repititions of a character; tries to match the shortest possible chain. |
|    `?`     | Matches zero or one character.                                                             |

Examples:
```lua
local pattern = 'five to five, and six'
function onCreate()
     debugPrint(pattern:gsub('%a', 'test'))  --> ____ __ ____, ___ ___
     debugPrint(pattern:gsub('%a+', 'test')) --> _ _ _, _ _
end
```

In this example we use with and without the plus `+` modifier to match one or more repititions of a character. The first one replaces each alphabetical character with the underscore <kbd>\_</kbd> character. While the second replaces each alphabetical words with the underscore <kbd>\_</kbd> character. As seen on the underscores when printed.
<br/><br/>

```lua
function onCreate()
     debugPrint(('y45'):match('%d*')) -->  
     debugPrint(('345'):match('%d*')) --> 345
end
```

The asterisk `*` modifier is a bit different to the plus `+` modifier, it works the same but it only match zero or more repititions of a character. The first one found a zero match to any digit characters, so it will print nothing the second prints digit characters.
<br/><br/>

```lua
local pattern = "abc12def34ghi"
function onCreate()
     debugPrint(pattern:gsub("%d+", "_")) --> abc_def_ghi
     debugPrint(pattern:gsub("%d*", "_")) --> _a_b_c_d_e_f_g_h_i_
     debugPrint(pattern:gsub("%d-", "_")) --> _a_b_c_1_2_d_e_f_3_4_g_h_i_
end
```

The minus `-` modifier is bit confusing to understand, it goes like this. Both the minus `-` and asterisk `*` modifiers match match zero or more repititions of a character, but the minus `-` modifier only tries to match the shortest possible chain. It allows you to define a set of characters that you want to exclude from matching, and also it weirdly will always match the empty sequence.
<br/><br/>

```lua
function onCreate()
     debugPrint(('Changes'):match('Changes?')) --> Changes
     debugPrint(('Change'):match('Changes?'))  --> Change
end
```

The question `?` modifier just matches zero or one character. The first one has an `s` character inside of the given string, so it will just print `Changes`. The second doesn't have an `s` character, so it will print `Change`. This useful in some case when you want match both with or without an `s` character.

### Anchors
| Characters | Description                                                                          |
|:----------:|--------------------------------------------------------------------------------------|
|    `^`     | Matches the first character(s) at the beggining of the string; must be at the start. |
|    `$`     | Matches the last character(s) at the ending of the string; must be at the end.       |

Examples:
```lua
function onCreate()
     debugPrint(('icon-test'):match('^icon%-')) --> icon-
     debugPrint(('test'):match('^icon%-'))      --> nil

     debugPrint(('test-B34'):match('%-%u%d+$')) --> -B34
     debugPrint(('test'):match('%-%u%d+$'))     --> nil
end
```
Anchors are very useful when trying check the correct format to use, as seen in this example. 

### Character Sets
| Characters             | Description                                                                                       |
|:-----------------------|---------------------------------------------------------------------------------------------------|
| `[set]`                | Matches each individual enclosed characters inside the given.                                     |
| `[m-n]`                | Matches a range of characters by using a hyphen `-` character, from the first to last characters. |
| `[^set]`,<br/>`[^m-n]` | A negated set, Matches any characters that are not enclosed in the given set.                      |

Examples:
```lua
function onCreate()
     debugPrint(('watches'):match('watche[sd]')) --> watches
     debugPrint(('watched'):match('watche[sd]')) --> watched
     debugPrint(('watchey'):match('watche[sd]')) --> nil
end
```
Sets are the closest thing to an alternation, which acts as a `or` operator in RegEx. In this case, the sets will attempt to match the characters `s` or `d` inside the given `string`. If both characters are present, as demonstrated above, it will match; if another character not in the specified sets is present, it will not match.

```lua
function onCreate()
     debugPrint(('dies'):match('d[ie]+s'))         --> dies
     debugPrint(('diiiieeeeees'):match('d[ie]+s')) --> diiiieeeeees
     debugPrint(('deeeiieiiies'):match('d[ie]+s')) --> deeeiieiiies
end
```
Another thing you can do is adding other meta characters to sets.
<br/><br/>

```lua
function onCreate()
     debugPrint(('1'):match('[0-9]'))    --> 1
     debugPrint(('g'):match('[a-z]'))    --> g

     debugPrint(('3'):match('[a-z0-9]')) --> 3
     debugPrint(('k'):match('[a-z0-9]')) --> k
end
```
Sets can match a wide range of characters, from the first to the last provided character. Another thing you can also do is adding multiple ranges from the given set, as shown in the second example. It will both match alphabetical and digital characters. You can do this with any characters from punctuation and other special characters. 

```lua
function onCreate()
     debugPrint(('^'):match('[A-z]')) --> ^
end
```
The range also based on the ASCII order, in this example the code match caret <kbd>^</kbd> character. Because it's in the 94th character between 65th character which is `A` to the 122th character which is `z`.
<br/><br/>

```lua
function onCreate()
     debugPrint(('change '):match('change[^sd]')) --> change
     debugPrint(('changes'):match('change[^sd]')) --> nil
     debugPrint(('changed'):match('change[^sd]')) --> nil

     debugPrint(('5'):match('[^2-9]'))            --> 5
     debugPrint((':'):match('[^A-Za-z!-/]'))      --> :
end
```
Negated set tries NOT to match each individual character inside the given set; nothing else to say honestly.

### Captures
Captures are a pattern that can have sub-patterns contained in parenthesis <kbd>()</kbd>. If a match is successful, the substrings of the subject string that the match catches are saved for later use. In the `gsub()` function, for example, the character set `%n` is used to format a string.

Example:
```lua
local support = 'I love the "RGB" Community!'
function onCreate()
     debugPrint((support):match('"(RGB)"')) -- will print > 'RGB'
     debugPrint((support):match('"RGB"'))   -- will print > '"RGB"'
end
```

### Miscellaneous
| Characters | Descriptions                                                            |
|:-----------|-------------------------------------------------------------------------|
| `%`        | An escape character for the given character sets and even itself.       |
| `%n`       | The captured matched substring can only go between `1` to `9` captures. |

Examples:
```lua
function onCreate()
     debugPrint(('100%'):match('%d+%%'))                      --> 100%
     debugPrint(('1 + -4 = ???'):match('%d %+ %-4 = %?%?%?')) --> 1 + -4 = ???
end
```
```lua
function onCreate()
     local pattern = '&(%d+); &(%d+); &(%d+);'
     local output  = 'Chars: %1, %2, %3'
     debugPrint(('&41; &93; &23;'):gsub(pattern, output)) --> Chars: 41, 93, 23
end
```
