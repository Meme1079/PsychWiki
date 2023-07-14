# About Metatables
Metatables allows you to modify or to extend behavior of any table, making it more useful than before. For instance, we can change how Lua computes the expression like `a + b`, where `a` and `b` are both tables. 

Whenever you try to add two tables Lua will check, if either of them has a metatable and whether that metatable contains an `__add` field. If Lua detects this feild, it calls the associated value from the operands. Which the metamethod should be a function to compute the sum.

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
     debugPrint(myTable + {623, 343, 33}) -- will print > [-343, -543, 69, 623, 343, 33]
end
```

***

# Metatables Setter/Getters
### setmetatable(tab:Table, metatable:Table)
Sets the metatable to the given table; Returns a `table`.

- `tab` - The table to be used inside a metatable
- `metatable` - The metatable to be used.

### getmetatable(tab:Table)
Gets the metatable to the given table; Returns a `table`.

- `tab` - The table to get the metatable.

***

# Metamethods
Metamethods are special functions that provides powerful functionalities which overide the functionalities to the operators present for custom behaviors. Negating a table, converting a string to a table, calling an index that is not-present, etc. Each metamethod field starts with double <kbd>__</kbd> underscores.

<!--
## Arithmetic
### __add(tab:Array, value:Dynamic)
The corresponding addition `+` operator for metamethods. The first operand from the condition should be the table itself and the second operand should be the specified value you'd chosen; This rule applies to all metamethods.

- `tab` - The table itself that the metatable uses currently.
- `value` - The second operand from the condition to get.

Example:
```lua
local myNums = {132, 893, 623, 925, 232}
local myMeta = {
     __add = function(tab, value)
          local results = {}
          for i = 1, #tab do
               table.insert(results, tab[i] + value)
          end
          return results
     end
}

setmetatable(myNums, myMeta)
function onCreate()
     debugPrint(myNums[1] + 50) -- will print > 182
     debugPrint(myNums[2] + 23) -- will print > 916
end
```

### __sub(tab:Array, value:Dynamic)
The corresponding subtraction `-` operator for metamethods; Behaves the same as the `__add` metamethod.

- `tab` - The table itself that the metatable uses currently.
- `value` - The second operand from the condition to get.

### __mul(tab:Array, value:Dynamic)
The corresponding multiplication `*` operator for metamethods.

- `tab` - The table itself that the metatable uses currently.
- `value` - The second operand from the condition to get.

### __div(tab:Array, value:Dynamic)
The corresponding division `/` operator for metamethods.

- `tab` - The table itself that the metatable uses currently.
- `value` - The second operand from the condition to get.

### __mod(tab:Array, value:Dynamic)
The corresponding modulus `%` operator for metamethods.

- `tab` - The table itself that the metatable uses currently.
- `value` - The second operand from the condition to get.

### __pow(tab:Array, value:Dynamic)
The corresponding exponentiation `^` operator for metamethods.

- `tab` - The table itself that the metatable uses currently.
- `value` - The second operand from the condition to get.

### __unm(tab:Array)
The corresponding unary negation `-` operator for metamethods.

- `tab` - The table itself that the metatable uses currently.

## Relational
### __eq(tab:Array, value:Dynamic)
The corresponding equal to `==` operator for metamethods; Behaves the same as the `__add` metamethod. Lua in general will try a metamethod only when the values being compared, if both table are not primitively equal. The result of the call is always converted to a `boolean` always.

- `tab` - The table itself that the metatable uses currently.
- `value` - The second operand from the condition to get.

### __lt(tab:Array, value:Dynamic)
The corresponding less than `<` operator for metamethods; Behaves the same as the `__lt` metamethod.

- `tab` - The table itself that the metatable uses currently.
- `value` - The second operand from the condition to get.

### __le(tab:Array, value:Dynamic)
The corresponding less than or equal to `<=` operator for metamethods.

- `tab` - The table itself that the metatable uses currently.
- `value` - The second operand from the condition to get.

## Calling
### __index(tab:Array, index:Dynamic)
### __newindex(tab:Array, index:Dynamic, value:Dynamic)
### __call(tab:Array, ...args:Dynamic)

## Miscellaneous
### __concat(tab:Array, value:Dynamic)
The corresponding concatenate `..` operator for metamethods.

- `tab` - The table itself that the metatable uses currently.
- `value` - The second operand from the condition to get.

### __len(tab:Array)
The corresponding length `#` operator for metamethods.

- `tab` - The table itself that the metatable uses currently.

### __tostring(tab:Array)
The corresponding `tostring()` function for metamethods. 

- `tab` - The table itself that the metatable uses currently.

### __metatable
Changes the corresponding `getmetatable()` function behavior when invoked.

***

# Raw Functions
### rawequal(v1, v2)
### rawset(tab, index)
### rawget(tab)
### reslen(tab)

-->