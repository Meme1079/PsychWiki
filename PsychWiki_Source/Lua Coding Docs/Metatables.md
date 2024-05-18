# Metatables
Metatables allows any ordinary table to modify or extend the behavior it, making it more useful than before. They are attached to another table that contains other data called metamethods. These are methods that corresponds to a certain action being performed to the metatable. For instance, in the addition operator <kbd>+</kbd>, the addition metamethod will be executed if the metatable is present on the first operand.

You can make a table into a metatable by using the `setmetatable()` built-in function which uses two arguments. The first is the table to set to, and the second is the metatable for the table to use. Additionally you can use the `getmetatable()` built-in function to get the table's metatable.

Example:
```lua
local theNermals = setmetatable({83, 23, 32, 13, 93, 23}, {
     __div = function(self, args)           -- calls when invoking the div operator
          local index, results = 0, {}      -- index = 0; results = {}
          while index < #self / args do     -- checks if below this [#self / args]
               index = index + 1            -- increment by 1
               results[index] = self[index]
          end
          return results
     end
})

function onCreate()
     for nerms = 1, #theNermals do
          debugPrint(theNermals[nerms]) --> [83, 23, 32, 13, 93, 23]
     end
     for nerms = 1, #theNermals do
          debugPrint(theNermals[nerms]) --> [83, 23, 32]
     end
end
```

***

# Metamethods
Metamethods are a special functions that provide powerful functionalities that override specific operations performed on a metatable. For instance addition, subtraction, unary negation, indexing, etc will be invoked by the corresponding metamethods. Each metamethod field name starts with double <kbd>__</kbd> underscores with the corresponding name, it holds a function which will be the metavalue.

## Calling
### __index(self:Array, index:Dynamic)
Changes the behavior of the indexing access operation for tables `table[index]` or `table.index`. This will only be invoked if the `index` isn't present inside that table and not from calling a table. This metamethod can hold a function or a table.

- `self` - The table itself from the metatable.
- `index` - The invalid index value.

Examples:
```lua
local positions = setmetatable({x = 93}, {
     __index = {x = 10, y = 10}
})

-- the table positions has an x value, while y doesn't
-- we call the index x, which returns 93
-- we call the index y, which returns 10 due to no value
function onCreate()
     debugPrint(positions.x) --> 93
     debugPrint(positions.y) --> 10
end
```
```lua
local curChars = setmetatable({'bf', 'dad', 'gf'}, {
     __index = function(self, index)
          local errorMessage = 'Lua Error: \''..index..'\' index doesn\'t exist!' 
          debugPrint(errorMessage, 'ff0000'); error('', 2)
          return nil
     end
})

function onCreate()
     debugPrint(curChars[1]) --> bf
     debugPrint(curChars[4]) --> Lua Error: '4' index doesn't exist!
end
```

### __newindex(self:Array, index:Dynamic, value:Dynamic)
Changes the behavior of the indexing assignment for tables `table[index] = value` or `table.index = value`. This will only be invoked if it tries to insert a new element inside to that table.

- `self` - The table itself from the metatable.
- `index` - The invalid index value.
- `value` - The value from the invalid index value.

Example:
```lua
local scales = setmetatable({x = 34, y = 34}, {
     __newindex = function(self, key, index)
          debugPrint('Values cannot be inserted!'); error('', 2)
          return nil
     end
})

function onCreate()
     scales.x = 93
     scales.y = 20
     scales.z = 83 --> Values cannot be inserted!
end
```

### __call(self:Array, ...args:Dynamic)
Changes the behavior of the calling operation <kbd>()</kbd>. This will only be invoked if you try to attempt to call a non-function value, which in our case, a table. _(weird but ok)_

- `self` - The table itself from the metatable.
- `args` - An optional parameter, The given arguments that were passed.

Example:
```lua
local calculateNermals = setmetatable({39, 12, 43, 54}, {
     __call = function(self, ...)
          local results = {}
          local args = {...}
          for i = 1, #self do
               results[i] = ((self[i] - args[1])^1/4) / args[2]
          end
          return results
     end
})

function onCreate()
     local nerms = calculateNermals(4, 8) -- only accepts two args
     for k,v in pairs(nerms) do
          debugPrint(v) --> [1.09375, 0.25, 1.21875, 1.5625]
     end
end
```

## Arithmetic
### __add(self:Array, arg:Dynamic)
Changes the behavior of the <ins>addition operator</ins> <kbd>+</kbd> when invoked. The `arg` parameter can accept any argument types, `strings`, `tables`, `booleans`, etc; This rule applies to all arithmetic, relational, and some miscellaneous metamethods.

- `self` - The table itself from the metatable.
- `arg` - The argument from the second operand to be passed.

Example:
```lua
local sillyNermals = setmetatable({2, 3, 1, 4, 5}, {
     __add = function(self, arg)
          local results = {}
          for k,v in pairs(self) do
               results[i] = self[i] + arg
          end
          return results
     end
})

function onCreate()
     for k,v in pairs(sillyNermals + 5) do
          debugPrint(v) --> [7, 8, 6, 9, 10]
     end
end
```

### __sub(self:Array, arg:Dynamic)
Changes the behavior of the <ins>subtraction operator</ins> <kbd>-</kbd> when invoked.

- `self` - The table itself from the metatable.
- `arg` - The argument from the second operand to be passed.

### __mul(self:Array, arg:Dynamic)
Changes the behavior of the <ins>multiplication operator</ins> <kbd>*</kbd> when invoked.

- `self` - The table itself from the metatable.
- `arg` - The argument from the second operand to be passed.

### __div(self:Array, arg:Dynamic)
Changes the behavior of the <ins>division operator</ins> <kbd>/</kbd> when invoked.

- `self` - The table itself from the metatable.
- `arg` - The argument from the second operand to be passed.

### __mod(self:Array, arg:Dynamic)
Changes the behavior of the <ins>modulo operator</ins> <kbd>%</kbd> when invoked.

- `self` - The table itself from the metatable.
- `arg` - The argument from the second operand to be passed.

### __pow(self:Array, arg:Dynamic)
Changes the behavior of the <ins>exponentiation operator</ins> <kbd>^</kbd> when invoked.

- `self` - The table itself from the metatable.
- `arg` - The argument from the second operand to be passed.

### __unm(self:Array)
Changes the behavior of the <ins>unary negation operator</ins> <kbd>-</kbd> when invoked.

- `self` - The table itself from the metatable.

## Relational
### __eq(self:Array, arg:Dynamic)
Changes the behavior of the <ins>equal to operator</ins> <kbd>==</kbd> when invoked.

- `self` - The table itself from the metatable.
- `arg` - The argument from the second operand to be passed.

### __lt(self:Array, arg:Dynamic)
Changes the behavior of the <ins>lesser than operator</ins> <kbd><</kbd> when invoked.

- `self` - The table itself from the metatable.
- `arg` - The argument from the second operand to be passed.

### __le(self:Array, arg:Dynamic)
Changes the behavior of the <ins>lesser than or equal to operator</ins> <kbd><=</kbd> when invoked.

- `self` - The table itself from the metatable.
- `arg` - The argument from the second operand to be passed.

## Miscellaneous
### __concat(self:Array, args:Dynamic)
Changes the behavior of the <ins>concatenate operator</ins> <kbd>..</kbd> when invoked.

- `self` - The table itself from the metatable.
- `arg` - The argument from the second operand to be passed.

### __len(self:Array)
Changes the behavior of the <ins>length operator</ins> <kbd>#</kbd> when invoked.

- `self` - The table itself from the metatable.

### __tostring(self:Array)
Changes the behavior of the <ins>`tostring()` built-in function</ins> when invoked or when calling a table.

- `self` - The table itself from the metatable.

Example:
```lua
local numbers = setmetatable({39, 12, 43, 54}, {
     __tostring = function(self)
          local results = ''
          for k,v in pairs(self) do
               results = results .. v .. ', '
          end
          local filter = results:sub(1, #results - 2) -- removes this part ', '
          return '{'..filter..'}'
     end
})
   
function onCreate()
     debugPrint(numbers)           --> {39, 12, 43, 54}
     debugPrint(tostring(numbers)) --> {39, 12, 43, 54}
end
```

### __metatable
Changes the behavior of the <ins>`getmetatable()` built-in function</ins> when invoked. This will protect the metatable due to the debug library bypassing this protection and others. This metamethod can only hold any data type.

Example:
```lua
local nermals = setmetatable({39, 12, 43, 54}, {
     __index = {x = 10, y = 10},
     __metatable = "This is protected!"
})

function onCreate()
     debugPrint(getmetatable(nermals)) --> This is protected!
end
```

***

# Meta Functions
### setmetatable(tab:Array, metaContent:Array)
Sets a metatable into the given table.

- `tab` - The table to set a metatable into.
- `metaContent` - The given metatable to set to.

### getmetatable(tab:Array)
Gets a metatable from the given table.

- `tab` - The table to get the given metatable.

***

# Raw Functions
Raw functions are special functions that do not invoke the said metafield that they're set to. They are only placed inside the metafield's function that they're in. This is to prevent a infinite recursion which cause a stack overflow.

Example:
```lua
local nermals = setmetatable({23, 43, 12}, {
     __eq = function(self, arg)
          if rawequal(#self, #arg) then
               return true
          end
          return false
     end
})

function onCreate()
     debugPrint(nermals == {93, 12, 43, 64}) --> false
     debugPrint(nermals == {93, 12, 43})     --> true
end
```

### rawequal(primary:Dynamic, secondary:Dynamic)
Raw function for equal to operator <kbd>==</kbd> without invoking the `__eq` metafield.

- `primary` - The first operand to the equal to operator, which is the table itself.
- `secondary` - The second operand to the equal to operator.

### rawset(tab:Array, index:Dynamic, value:Dynamic)
Raw function for indexing assignment syntax in tables without invoking the `__newindex` metafield.

- `tab` - The table itself from the metatable.
- `index` - The index value to set to.
- `value` - The value to set to.

### rawget(tab:Array)
Raw function for indexing access operation in tables without invoking the `__index` metafield.

- `tab` - The table itself from the metatable.
