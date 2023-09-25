# Metatables
Metatables allows you to modify or extend the behavior of any table, making it more useful than before. They are attached to another table that contains data called Metamethods. They will be executed if a certain action is performed on the information that they are associated with. Metatables uses two important functions: `setmetatable()` and `getmetatable()`.

Example:
```lua
local chars = setmetatable({'boyfriend', 'dad', 'gf'}, {
     __index = function(tab, index)
          return 'Invalid index value!' 
     end
})

function onCreate()
     debugPrint(chars[1]) -- will print > 'boyfriend'
     debugPrint(chars[4]) -- will print > 'Invalid index value!'
end
```

## Metatables Setter/Getters 
### setmetatable(tab:Array, metatable:Array)
Sets the metatable to the given table.

- `tab` - The table to set the metatable of.
- `metatable` - The metatable to be used, if the value is set to `nil` the metatable will be removed.

### getmetatable(tab:Array)
Returns the metatable of the given table, if it has one, otherwise returns a `nil` value.

- `tab` - The object from which to retrieve the metatable.

Example:
```lua
local x = setmetatable({23, 42}, {
     __index = function(tab, index)
          return 'Invalid index value!'
     end
})

local y = setmetatable({72, 21}, getmetatable(x))
local w = setmetatable({73, 12}, getmetatable(x))
function onCreate()
     debugPrint(y[3]) -- will print > 'Invalid index value!'
     debugPrint(w[3]) -- will print > 'Invalid index value!'
end
```

## Metamethods
Metamethods are special functions that provide powerful functionalities that override the functionalities of the operators present for custom behaviors. Negating a table, converting a string to a table, calling an index that is not present, etc. Each metamethod field name starts with double <kbd>__</kbd> underscores at the start with the value or which we will call metavalue. Can be either a `function` for all metamethods or `table` from specific metamethods like `__index` and `__newindex`.

### Calling
- `__index(table, index)` - Changes the behavior of the indexing access operation for tables `table[index]` or `table.index`. This will only be called if the `index` isn't present inside that table and not from calling a table. The metavalue for this event can be either a `function` or `table`.

Example:
```lua
local tab = setmetatable({bar = true}, {
     __index = {foo = false}
})

function onCreate()
     debugPrint(tab.bar) -- will print > true
     debugPrint(tab.foo) -- will print > false
end
```

- `__newindex(table, index, value)` - Changes the behavior of the indexing assignment for tables `table[index] = value` or `table.index = value`. This will only be called if you attempt to insert a new element inside that table. The metavalue for this event can be either a `function` or `table`.


Example:
```lua
local tab = setmetatable({foo = true, bar = true}, {
     __newindex = function(tab, key, value)
          debugPrint('Indexing can\'t be allowed!')
     end
})

function onCreate()
     tab.foo = false      -- this will not invoked the __newindex metamethod.
     debugPrint(tab1.foo) -- will print > false

     tab.baz = false      -- will print > 'Indexing can't be allowed!'
end
```

- `__call(table, ...args)` - Changes the behavior of calling operation `()`. This will only be called if you attempt to call a non-function value which our case it's a `table`. The `arg` parameter is the arguements were passed from the calling operation `()`.

Example:
```lua
local coins = setmetatable({12, 23, 8, 10, 30}, {
     __call = function(tab, ope, num)
          for i = #tab, 1, -1 do
               tab[i] = load('return '..tab[i]..ope..num)()
          end
     end
})

coins('%', 5) -- calculates modulo of 5 in each value
function onCreate()
     debugPrint(coins[1]) -- will print > 2
     debugPrint(coins[2]) -- will print > 3
end
```

## Arithmetic
- `__add(table1, table2)` - Changes the behavior of the addition operator `+` when invoked. The first operand from the condition should be the table itself and the second operand should be the specified value you'd chosen; This rule applies to all metamethods.

Example:
```lua
local mytab = setmetatable({45, 23}, {
     __add = function(table1, table2)
          local merge = table.concat(table1, ',')..table.concat(table2, ',')
          return stringSplit(merge, ',')
     end
})

function onCreate()
     for k,v in pairs(taby + {26, 82}) do
          debugPrint(v) -- will print > 45, 23, 26, 82
     end
end
```

- `__sub(table1, table2)` - Changes the behavior of the subtraction operator `-` when invoked.
- `__mul(table1, table2)` - Changes the behavior of the multiplication operator `*` when invoked.
- `__div(table1, table2)` - Changes the behavior of the division operator `/` when invoked.
- `__mod(table1, table2)` - Changes the behavior of the modulus operator `%` when invoked.
- `__pow(table1, table2)` - Changes the behavior of the exponentiation operator `^` when invoked.
- `__unm(table1)` - Changes the behavior of the unary negation operator `-` when invoked.

### Relational
- `__eq(tab, value)` - Changes the behavior of the equal to operator `==` when invoked.
- `__lt(tab, value)` - Changes the behavior of the less than operator `<` when invoked.
- `__le(tab, value)` - Changes the behavior of the less than or equal to operator `<=` when invoked.

### Miscellaneous
- `__concat(tab, value)` - Changes the behavior of the concatenate operator `..` when invoked.
- `__len(tab)` - Changes the behavior of the length operator `#` when invoked.
- `__tostring(tab)` - Changes the behavior of the `tostring()` function when invoked; Must return a `string`.
- `__metatable` - Changes the behavior of the `getmetatable()` function when invoked.

## Raw Functions
### rawequal(value1:Dynamic, value2:Dynamic)
Raw function for equal to operator without invoking the `__eq` field.

- `value1` - The table to be referenced inside the metatable.
- `value2` - The second value to be compared.

### rawset(tab:Table, index:Dynamic, value:Dynamic)
Raw function for indexing assignment syntax in tables without invoking the `__newindex` metafield.

- `value1` - The table to be referenced inside the metatable.
- `index` - The index from the table to be used.
- `value` - The new value to set.

### rawget(tab:Table)
Raw function for indexing access operation in tables without invoking the `__index` metafield.

- `value1` - The table to be referenced inside the metatable.

### reslen(tab:Table)
Raw function for length operator without invoking the `__len` metafield.

- `value1` - The table to be referenced inside the metatable.