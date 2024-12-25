# About
Lua has offer many library methods that provide many useful functions that are implemented directly through the C API. And many of these methods manipulate specific data type values. These include string, finding and substringing specific portions; table, inserting and sorting; and numbers, mathematical functions. All of the libraries listed are provided as a separate C modules, however LuaJIT, the one that Psych Engine uses has its own modules. Which i'll be only mentioning bitwise operations, manipulating individual bits; other modules exists in LuaJIT but they're useless.

Example:
> Returns the logarithm of $5$ to base $125$, by using the logarithm function.
```lua
debugPrint(math.log(125, 5)) --> 3
```

Since these libraries are just modules, basically a table meaning. You can add, removed, override the methods and constants from that module. I'd recommend just adding new methods and constants to that module, as deleting and overriding will render the module useless or completely broken. This will affect the module locally in a script not globally from other scripts.

Example:
> Returns a rounded number, including both a rounded up euler number and rounded down pi number. With $2$ decimal digits to round to.
```lua
function math.round(num, decimals) -- adds a round function to the math module
     return math.floor(num * 10^(decimals or 0) + 0.5) / 10^(decimals or 0)
end

debugPrint(math.round(2.71828, 2)) --> 3.72
debugPrint(math.round(3.14159, 2)) --> 3.14
```
> From a different script, it tries to call the round method inserted from the math module. Resulting a missing method error.
```lua
debugPrint(math.round(2.71828, 2))
```

***

# Lua Libraries
## String Methods
> *For more information; Main article:* String Methods

The string library provide manipulation methods for strings, such as finding, subtringing, matching, conversion, and etc. 

Additionally Lua sets a metatable to any string, this is extremely useful because you can use the methods in a "object-oriented style". Basically instead of using `string.upper('hi')`, you can instead use this `('hi'):upper()`. It makes reading much more easier and less confusing, it can also stack with other methods: `('234284'):gsub('2', ''):gsub('4', ''):lower()`.

## Table Methods
> *For more information; Main article:* Table Methods

The table library provide manipulation methods for tables, such as inserting, removing, sorting, and etc. Some methods only work in array-like tables not dictionary-like tables.

## Mathematical Methods
> *For more information; Main article:* Mathematical Methods

The math library provide manipulation methods for numbers, such as rounding, square roots, logarithm, and etc. It also has trigonometric based methods for sine, cosine, and tanget it even includes an inverse and hyperbolic version of them.

<!--

TODO: Will be added in 17.1.0

***

# LuaJIT Libraries
## Bitwise Operator Methods
> *For more information; Main article:* Bitwise Operator Methods

The bitwise operator library provide manipulation methods for individual bits in a byte, such as logic gates and conversions. It basically manipulates binary numbers in order to get a new result.

-->