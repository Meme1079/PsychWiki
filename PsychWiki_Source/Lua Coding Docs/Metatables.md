# About Metatables
Metatables allows you to modify behavior of any table, making it more useful than before. This uses Metamethods which  uses operators for the table to use. An example of this is the metamethod `__unm` which uses the unary negatation <kbd>-</kbd> operator. Or the metamethod `__index`, if the index is not available this will be called.

Example:
```lua
function getObject(tag)
     return setmetatable({name = tag}, {
          __index = function(tab, inde) -- get
               return getProperty(tab.name.."."..index)
          end,
          __newindex = function(tab, index, value) -- set
               setProperty(tab.name..'.'..index, value)
          end
     })
end

local boyfriend = getObject('boyfriend')
function onCreatePost()
     boyfriend.x = 342
     boyfriend.y = 123
end
```

## Metatables Setter/Getters
### setmetatable(tab:Table, metatable:Table)
Sets the metatable to the given table; Returns a `table`.

- `tab` - The table to be used inside a metatable
- `metatable` - The metatable to be used.

### getmetatable(tab:Table)
Gets the metatable to the given table; Returns a `table`.

- `tab` - The table to get the metatable.

***

# Metamethods
Metamethods are special functions that provides powerful functionalities which overide the functionalities to the operators present on the tables. These are stored in a metatable, with the name of the metamethods serving as the `key`. With the arguments included within the function to be used, but they are optional to include.

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
### __len(tab:Array)
### __tostring(tab:Array)
### __metatable

***

# Raw Functions
### rawequal(v1, v2)
### rawset(tab, index)
### rawget(tab)
### reslen(tab)