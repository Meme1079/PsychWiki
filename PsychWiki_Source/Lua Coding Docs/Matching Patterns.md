# About Matching Patterns
Matching Patterns are patterns used to match character combinations to get the specific output. This is used for searching, matching, verifying the text data and replacing characters in `strings`. Some String Methods support Matching Patterns that allow you to pass Matching Patterns as its arguements.

This is an replacement for Regular Expressions (RegEx) becuase the primary cause of this is size. More than 4,000 lines of code are typically required for a RegEx implementation. This exceeds the combined size of all Lua standard libraries. In contrast, Lua's pattern matching implementation comprises fewer than 500 lines.

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

***

# Special Sequence
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
function onCreate()
     debugPrint(('<I> Love "Corn"!!!!!'):gsub('%p', '')) -- will print 'I Love Corn'
     debugPrint(('re   mov ed spa  ces'):gsub('%s', '')) -- will print 'removedspaces'
     debugPrint(('Number 5'):match('%d'))                -- will print '5'
end
```

***

# Meta Characters
Meta Characters are modifiers for special sequences that extend their meaning. For instance, the plus <kbd>+</kbd> character will be assigned to the special sequences with the longest chain it could discover. Another example you could use the caret <kbd>^</kbd> character to get the specific starting pattern inside a `string`.

### Main
| Characters | Description                                                          | Example   |
|:----------:|----------------------------------------------------------------------|-----------|
|    `.`     | Matches any characters.                                              | `H...o`   |
|    `%`     | Escape characters for meta characters and percent sign,              | `%d+%%`   |
|    `()`    | Captures a group characters and exclude characters from the outside, | `"(RGB)"` |

Examples:
```lua
function onCreate()
     debugPrint(('Hello World'):match('H...o'))    -- will print 'Hello'
     debugPrint(('Accuracy: 100%'):match('%d+%%')) -- will print '100%'

     debugPrint(('I love the "RGB" Community!'):match('"(RGB)"')) -- will print 'RGB'
     debugPrint(('I love the "RGB" Community!'):match('"RGB"'))   -- will print '"RGB"'
end
```

### Quantifiers
| Characters | Description                                                                              | Example  |
|:----------:|------------------------------------------------------------------------------------------|:---------|
|    `+`     | Matches one or more occurrences of a character; will match the longest possible chain.   | `%d+`    |
|    `*`     | Matches zero or more occurrences of a character; will match the longest possible chain.  | `He.*o`  |
|    `-`     | Matches zero or more occurrences of a character; will match the shortest possible chain. |          |
|    `?`     | Matches zero or one occurrences of a character.                                          | `plays?` |

Examples:
```lua
function onCreate()
     debugPrint(('My favorite number is 8236723'):match('%d'))  -- will print '8'
     debugPrint(('My favorite number is 8236723'):match('%d+')) -- will print '8236723'

     debugPrint(('Hello World'):match('He.*o')) -- will print 'Hello'
     debugPrint(('Heo World'):match('He.*o'))   -- will print 'Heo'

     debugPrint(('plays anim'):match('plays?')) -- will print 'plays'
     debugPrint(('play anim'):match('plays?'))  -- will print 'play'
end
```

### Boundary
| Characters | Description                                                                        | Example   |
|:----------:|------------------------------------------------------------------------------------|:----------|
|    `^`     | Forcefully matches any character(s) at the start of a line; must be placed behind. | `^icon-`  |
|    `$`     | Forcefully matches any character(s) at the end of a line; must be placed in front. | `-pixel$` |

Examples:
```lua
function onCreate()
     debugPrint(('icon-bf'):match('^icon%-'))        -- will print 'icon-'
     debugPrint(('icon-bf-pixel'):match('%-pixel$')) -- will print '-pixel'

     debugPrint(('bf'):match('^icon%-'))             -- will print 'nil'
     debugPrint(('icon-bf'):match('%-pixel$'))       -- will print 'nil'
end
```

### Character Sets
| Sets         | Description                                                       | Example    |
|:-------------|-------------------------------------------------------------------|:-----------|
| `[set]`      | Matches any specific individual of characters that it could find. | `[aeiou]`  |
| `[^set]`     | Matches every character except the ones inside the sets.          | `[^aeiou]` |
| `[min-max]`  | Matches any specific range of characters that it could find.      | `[a-r]`    |
| `[^min-max]` | Matches every character except the ones inside the range sets.    | `[^b-p]`   |

Examples:
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
     debugPrint(gcheckPattern(gooberWord, '[aeiou]'))  -- will print '20 patterns found!'
     debugPrint(gcheckPattern(gooberWord, '[^aeiou]')) -- will print '25 patterns found!'
     debugPrint(gcheckPattern(gooberWord, '[a-r]'))    -- will print '37 patterns found!'
     debugPrint(gcheckPattern(gooberWord, '[^b-p]'))   -- will print '12 patterns found!'
end
```