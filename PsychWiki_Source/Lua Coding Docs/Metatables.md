# Metatables
Metatables allows you to modify or to extend behavior of any table, making it more useful than before. For instance, we can change how Lua computes the expression like `a + b`, where `a` and `b` are both tables. 

Whenever you try to add two tables Lua will check, if either of them has a metatable and whether that metatable contains an `__add` field. If Lua detects this field, it calls the associated value from the operands. Which the metamethod should be a function to compute the sum.

Example:
```lua
local myTable = {-343, -543, 69}
local metatable = {
     __add = function(tab, value)
          local tab1 = table.concat(tab, ', ')
          local tab2 = table.concat(value, ', ')
          return tab1 .. ', ' .. tab2
     end
}

function onCreate()
     setmetatable(myTable, metatable)
     debugPrint(myTable + {623, 343, 33}) -- will print > '-343, -543, 69, 623, 343, 33'
end
```

***

## Metatables Setter/Getters
### setmetatable(tab:Table, metatable:Table)
Sets the metatable to the given table; Returns a `table`.

- `tab` - The table to be used inside a metatable
- `metatable` - The metatable to be used.

### getmetatable(tab:Table)
Gets the metatable to the given table; Returns a `table`.

- `tab` - The table to get the metatable.

***

## Metamethods
Metamethods are special functions that provides powerful functionalities which override the functionalities to the operators present for custom behaviors. Negating a table, converting a string to a table, calling an index that is not-present, etc. Each metamethod field starts with double <kbd>__</kbd> underscores.

### Arithmetic
- `__add(tab, value)` - Changes the behavior of the addition operator `+` when invoked. The first operand from the condition should be the table itself and the second operand should be the specified value you'd chosen; This rule applies to all metamethods.
- `__sub(tab, value)` - Changes the behavior of the subtraction operator `-` when invoked.
- `__mul(tab, value)` - Changes the behavior of the multiplication operator `*` when invoked.
- `__div(tab, value)` - Changes the behavior of the division operator `/` when invoked.
- `__mod(tab, value)` - Changes the behavior of the modulus operator `%` when invoked.
- `__pow(tab, value)` - Changes the behavior of the exponentiation operator `^` when invoked.
- `__unm(tab)` - Changes the behavior of the unary negation operator `-` when invoked.

### Relational
- `__eq(tab, value)` - Changes the behavior of the equal to operator `==` when invoked.
- `__lt(tab, value)` - Changes the behavior of the less than operator `<` when invoked.
- `__le(tab, value)` - Changes the behavior of the less than or equal to operator `<=` when invoked.

### Calling
- `__index(tab, key)` - Changes the behavior of the indexing access operation in tables `table[key]` or `table.key`. This will only be invoked, if the table isn't a `table` or the `key` isn't present inside that table. The metavalue for this event can be either a `function`, `table`, or any value with an `__newindex` metavalue.

Example:
```lua
local tab1 = {foo = false}
local tab2 = setmetatable({bar = true}, {__index = tab1})

function onCreate()
     debugPrint(tab2.bar) -- will print > true
     debugPrint(tab2.foo) -- will print > false
end
```

- `__newindex(tab, key, value)` - Changes the behavior of the indexing assignment syntax in tables `table[key] = value` or `table.key = value`. This will only be invoked, if the table isn't a `table` or attempting to add a new element to the metatable's table. Like with the `__index` matavalue for this event can be either a `function`, `table`, or any value with an `__newindex` metavalue.

Example:
```lua
local tab1 = {foo = true, bar = true}
local metatable = {
     __newindex = function(tab, key, value)
          debugPrint('Indexing can\'t be allowed!')
     end
}

setmetatable(tab1, metatable)
function onCreate()
     tab1.foo = false     -- this will not invoked the __newindex metamethod.
     debugPrint(tab1.foo) -- will print > false

     tab1.baz = false     -- will print > 'Indexing can't be allowed!'
end
```

- `__call(tab, ...args)` - Changes the behavior of calling operation syntax `()`. This will only be invoked, if Lua tries to call a non-function value. The metamethod is looked up in function. If it is, function is passed as the first argument when calling the metamethod, which is then followed by the arguments from the original call from the function. This is the only metamethod that allows multiple results.

Example:
```lua
local coins = {53, 324, 134, 735}
local metatable = {
     __call = function(tab, ope, num)
          for i = #tab, 1, -1 do
               tab[i] = load('return '..tab[i]..ope..num)()
          end
     end
}
     
setmetatable(coins, metatable)
function onCreate()
     coins('*', 5)
     debugPrint(coins[1]) -- will print > 265
     debugPrint(coins[2]) -- will print > 1620
end
```

### Miscellaneous
- `__concat(tab, value)` - Changes the behavior of the concatenate operator `..` when invoked.
- `__len(tab)` - Changes the behavior of the length operator `#` when invoked.
- `__tostring(tab)` - Changes the behavior of the `tostring()` function when invoked; Must return a `string`.
- `__metatable` - Changes the behavior of the `getmetatable()` function when invoked.

***

## Raw Functions
### rawequal(value1:Dynamic, value2:Dynamic)
Raw function for equal to operator without invoking the `__eq` field.

- `value1` - The table to be referenced inside the metatable.
- `value2` - The second value to be compared.

### rawset(tab:Table, index:Dynamic, value:Dynamic)
Raw function for indexing assignment syntax in tables without invoking the `__newindex` field.

- `value1` - The table to be referenced inside the metatable.
- `index` - The index from the table to be used.
- `value` - The new value to set.

### rawget(tab:Table)
Raw function for indexing access operation in tables without invoking the `__index` field.

- `value1` - The table to be referenced inside the metatable.

### reslen(tab:Table)
Raw function for length operator without invoking the `__len` field.

- `value1` - The table to be referenced inside the metatable.