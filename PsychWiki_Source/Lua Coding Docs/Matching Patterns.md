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

### Dot
### Digit
### Alphabetical
### Alphanumeric
### Lower-case
### Upper-case
### Punctuation
### Hexadecimal
### Control
### Space
### Zero

***

# Meta Characters

### Quantifiers

#### Plus
#### Minus
#### Asterisk
#### Caret
#### Dollar Sign

### Character Classes

#### Set
#### Set Negation
#### Set Range
#### Set Range Negation

### Group Captures