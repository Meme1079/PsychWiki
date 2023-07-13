# About Metatables
Metatables allows you to modify behavior of any table, making it more useful than before. This uses Metamethods which provides powerful functionalities that allows to change functionalities to the operators present on the tables. An example of this is the metamethod `__unm` which uses the unary negatation <kbd>-</kbd> operator. Or the metamethod `__index`, if the index is not available this will be called.

Example:
```lua
local numbers = {134, 831, 93, 253, 823}
setmetatable(numbers, {
     __unm = function(tab, value)
          local result = {}
          for i = 1, #tab do
               table.insert(result, -tab[i])
          end
          return result
     end
})

function onCreate()
     for _,v in ipairs(-numbers) do
          debugPrint(v) -- will print > '-134, -831, -93, -253, -823'
     end
end
```

## Metatables Setter/Getters
### setmetatable(tab:Table, metatable:Table)
Sets the metatable to the given table; Returns a `table`.

- `tab` - The table to be used inside a metatable

### getmetatable(tab:Table)
Gets the metatable to the given table; Returns a `table`.

- `tab` - The table to get the metatable.

***

# Metamethods

## Arithmetic

### __add(tab:Array, value:Dynamic)
### __sub(tab:Array, value:Dynamic)
### __mul(tab:Array, value:Dynamic)
### __div(tab:Array, value:Dynamic)
### __pow(tab:Array, value:Dynamic)
### __mod(tab:Array, value:Dynamic)
### __unm(tab:Array, value:Dynamic)

## Relational

### __eq(tab:Array, value:Dynamic)
### __lt(tab:Array, value:Dynamic)
### __le(tab:Array, value:Dynamic)

## Table Calling

### __index(tab:Array, index:Dynamic)
### __newindex(tab:Array, index:Dynamic, value:Dynamic)

## Miscellaneous

### __tostring(tab:Array)
### __metatable

***

# Raw Functions
### rawequal(v1, v2)
### rawset(tab, index)
### rawget(tab)
### reslen(tab)