# Matching Patterns
Matching Patterns are patterns used to match character combinations to get the specific output. This is used for searching, matching, verifying the text data and replacing characters in `strings`. Some String Methods support Matching Patterns that allow you to pass Matching Patterns as its arguements.

This is an replacement for Regular Expressions (RegEx) becuase the primary cause of this is size. More than 4,000 lines of code are typically required for a RegEx implementation. This exceeds the combined size of all Lua standard libraries. In contrast, Lua's pattern matching implementation comprises fewer than 500 lines.


## Special Sequences
Special Sequence are characters used to represent a group of specific characters that can be used by the pattern to match the desired character. For example, the character class `%p` matches any punctuation characters so we can use this for. To manipulate the punctuation characters to whatever we want.

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


Example:
```lua
function onCreatePost()
     setTextString('scoreTxt', 'Score: 0 | Misses: 0 | Accuracy: ?')
end

local scorePattern1 = '%d+%p+%d+%%'  -- Checks the accuracy is a float | '%d+%p+%d+%%' > '99.45%'
local scorePattern2 = '%d+%%'        -- Checks the accuracy is a int   | '%d+%%' > '100%'
function onUpdateScore(miss)
     local scoreTxt = getTextString('scoreTxt')
     local scoreTxtDisplay1 = 'Score: '..getScore()..' | Misses: '..miss..' | Accuracy: '
     local scoreTxtDisplay2 = (scoreTxt:match(scorePattern1) or scoreTxt:match(scorePattern2))
     setTextString('scoreTxt', scoreTxtDisplay1..scoreTxtDisplay2..' ['..ratingFC..']')
end
```

## Meta Characters
Meta Characters are modifiers for special sequences that extend their meaning. For instance, the plus <kbd>+</kbd> character will be assigned to the special sequences with the longest chain it could discover. Another example you could use the caret <kbd>^</kbd> character to get the specific starting pattern inside a `string`.

| Characters | Description             | Example |
|:----------:|-------------------------|---------|
|    `.`     | Matches any characters. | `H...o` |
|    `$`     |                         |         |

### Repetition
| Characters | Description                                                              |
|:----------:|--------------------------------------------------------------------------|
|    `+`     | Matches one or more characters; will match the longest possible chain.   |
|    `*`     | Matches zero or more characters; will match the longest possible chain.  |
|    `-`     | Matches zero or more characters; will match the shortest possible chain. |
|    `?`     | Matches zero or one character.                                           |

Example:
```lua
function onCreate()
     debugPrint(('Score: 892344'):match('%d+')) -- will print > 892344
     debugPrint(('Change'):match('Changes?'))   -- will print > 'Change'
end
```

### Anchors
| Characters | Description                                                                        |
|:----------:|------------------------------------------------------------------------------------|
|    `^`     | Forcefully matches any character(s) at the start of a line; must be placed behind. |
|    `$`     | Forcefully matches any character(s) at the end of a line; must be placed in front. |

Example:
```lua
function onCreate()
     debugPrint(('icon-foo'):match('^icon%-'))        -- will print > 'icon-'
     debugPrint(('icon-foo-pixel'):match('%-pixel$')) -- will print > '-pixel'
end
```

### Sets
| Characters   | Description                                                       |
|:-------------|-------------------------------------------------------------------|
| `[set]`      | Matches any specific individual of characters that it could find. |
| `[^set]`     | Matches every character except the ones inside the sets.          |
| `[min-max]`  | Matches any specific range of characters that it could find.      |
| `[^min-max]` | Matches every character except the ones inside the range sets.    |

Example:
```lua
function gcheckPattern(str, ptr)
     local result = {}
     for words in (str):gmatch(ptr) do -- does an epic global matching
          table.insert(result, words)
     end
     return tostring(#result)..' patterns found!'
end

local gooberWord = 'pneumonoultramicroscopicsilicovolcanoconiosis' -- this is a real word
function onCreate()
     debugPrint(gcheckPattern(gooberWord, '[aeiou]'))  -- will print > '20 patterns found!'
     debugPrint(gcheckPattern(gooberWord, '[^aeiou]')) -- will print > '25 patterns found!'
     debugPrint(gcheckPattern(gooberWord, '[a-r]'))    -- will print > '37 patterns found!'
     debugPrint(gcheckPattern(gooberWord, '[^b-p]'))   -- will print > '12 patterns found!'
end
```

### Captures
Captures is a collection of captured strings for a single match that excludes other characters from the outside, this use the parenthesis <kbd>()</kbd> characters.

Example:
```lua
local support = 'I love the "RGB" Community!'
function onCreate()
     debugPrint((support):match('"(RGB)"')) -- will print > 'RGB'
     debugPrint((support):match('"RGB"'))   -- will print > '"RGB"'
end
```