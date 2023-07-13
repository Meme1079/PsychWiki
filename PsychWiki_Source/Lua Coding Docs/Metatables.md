# About Metatables

## Metatables Setter/Getters
### setmetatable(tab:Table, metatable:Table)
### getmetatable(tab:Table)

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