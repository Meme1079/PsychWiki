# Introduction
### Differences

***

# Variables
### Declaring
### Naming Variables Rules

***

# Data Types
### Strings

Example:
```lua
local textString1 = 'Hello' -- a single quote
local textString2 = "World" -- a double quote, this is optional to use
local textString3 = [[Culturae organicae te
capiet ad loca quae numquam 
expectata non visere!]]     -- a double bracket, used this for longer strings

function onCreate()
     debugPrint(textString1) --   will return 'Hello'
     debugPrint(textString2) --   will return 'World'
     debugPrint(textString3) --[[ will return 
     'Culturae organicae te capiet ad loca quae numquam 
     expectata non visere!' --]]
end
```
### Numbers

Example:
```lua
local intNumber1 = 81 -- an int number
local intNumber2 = 35 -- another int number

local floatNumber1 = 23.42 -- a float number
local floatNumber2 = 61.34 -- another float number
local floatAltNumber1 = 12. -- a float number in whole numbers
local floatAltNumber2 = .56 -- a float number in decimal numbers
function onCreate()
     debugPrint(intNumber1) -- will return '81'
     debugPrint(intNumber2) -- will return '35'

     debugPrint(floatNumber1) -- will return '23.42'
     debugPrint(floatNumber2) -- will return '61.34'
     debugPrint(floatAltNumber1) -- will return '12.0'
     debugPrint(floatAltNumber2) -- will return '0.56'
end
```

### Booleans
### Nil
### Tables

Example:
```lua
local tableGroup1 = {'string', true, nil} -- a table with string, boolean, and nil values
local tableGroup2 = {{45, 13}, {34, 76}}  -- a table inside with nested tables
function onCreate()
     debugPrint(tableGroup1[1])    -- will return 'string'
     debugPrint(tableGroup2[1][2]) -- will return '45'
end
```

Example:
```lua
local tableArray = {'Correct', 'Incorrect', 'Maybe', 'Invalid'} -- a table with string values
function onCreate()
     debugPrint(tableArray[1]) -- will return 'Correct'
     debugPrint(tableArray[3]) -- will return 'Maybe'
end
```

Example:
```lua
local tableDict1 = {isFatherless = false, hasTouchGrass = true}
local tableDict2 = {['air'] = 'Oxygen', ["food"] = 'potato', ["love"] = 'carbon monoxide'}
function onCreate()
     debugPrint(tableDict1.isFatherless)      -- will return 'false' (recommended syntax)
     debugPrint(tableDict1.['hasTouchGrass']) -- will return 'true'  (not recommended syntax)

     debugPrint(tableDict1.air)      -- will return 'Oxygen'
     debugPrint(tableDict2.['food']) -- will return 'potato'
     debugPrint(tableDict2.["love"]) -- will return 'carbon monoxide'
end
```

***

# Function

Example:
```lua
function myFunc()
     debugPrint('Hello my function!')
end

function onCreate()
     myFunc()
end
```
### Parameters

Example:
```lua
-- function created by Mayo78
function setPos(obj, pos) -- Concatenates setProperty x and y
     if pos[1] ~= nil then
          setProperty(obj..'.x', pos[1])
     end
     if pos[2] ~= nil then
          setProperty(obj..'.y', pos[2]) 
     end
end

function onCreatePost()
     setPos('boyfriend', {100, 500}) -- Changes the position to x = 100 and y = 500
end
```

Example:
```lua
function sumAll(...)
     local toTable = {...} -- converts the infinite parameter into a table
     local sumNum = 0
     for k,v in pairs(toTable) do
          sumNum = sumNum + v
     end
     return sumNum
end

function onCreate()
     debugPrint(sumAll(34, 42, 12, 78, 33, 12))
end
```
***

# Scope
### Nesting
### Global
### Local

***

# Comments

***

# Operators
### Arithmetic
### Relational
### Logical
### Miscellaneous

***

# Control Structures
### If Statements
### For Loop Statement
### Return Statement
### Break Statement

***

# Modules

***

# Predefined Functions
### dofile(path:String)
### pairs(tab:Table)
### ipairs(tab:Table)
### tonumber(num:Float)
### tostring(num:String)
### type(dataType:Dynamic)
### require(module:String)