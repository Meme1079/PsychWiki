# Table Methods
### table.insert(tbl:Table, ?pos:Int, value:Any):Table
Inserts an element value to a given table array, shifting the pre-existing element values to open space, if it exists. 

- `tbl` - The table array to insert an element value.
- `pos` - An optional parameter, The index position for the element value to be inserted to. This will always insert at the end of the table array, if there is no argument present. It basically gets the length of the table array and adds `1` to it.
- `value` - The element value to be inserted to.

Examples:
```lua
local content = {0x63a834, 0x8a94b3, 0xff34ba}
table.insert(content, 0x8349bd)

debugPrint(content) --> [6531124, 9082035, 16725178, 8604093]
```
```lua
local content = {true, false, false, true}
table.insert(content, 2, true)

debugPrint(content) --> [true, true, false, false, true]
```

### table.remove(tbl:Table, ?pos:Int):Any
Removes an element value from a given table array, shifting the pre-existing element values to close space, if it exists. Returns the given element value that was removed from the table array.

- `tbl` - The table array to insert an element value.
- `pos` - An optional parameter, The index position for the element value to be removed from. This will always remove at the end of the table array, if there is no argument present. It basically gets the length of the table array and subtracts `1` to it.
- `value` - The element value to be removed from.

Examples:
```lua
local content = {10e+93, 10e+53, 10e-45}
table.remove(content)

debugPrint(content) --> [10e+93, 10e+53]
```
```lua
local content = {'pepper', 'asparagus', 'beetroot', 'asparagus'}
table.remove(content, 3)

debugPrint(content) --> [pepper, asparagus, asparagus]
```

### table.concat(tbl:Table, sep:String = '', ?start:Int = 1, ?end:Int):String
Concatenates each element values from a given table array; strings and numbers are only allowed to concatenate tho.

- `tbl` - The table array to concatenate each element values.
- `sep` - An optional parameter, The seperation between each element values; Default value: `''`.
- `start` - An optional parameter, The starting index position of the table array to start concatenating; Default value: `1`.
- `end` - An optional parameter, The ending index position of the table array to end concatenating.

Examples:
```lua
local content = {'apple', 'banana', 'orange'}
debugPrint( table.concat(content) )       --> applebananaorange
debugPrint( table.concat(content, '; ') ) --> apple; banana; orange
```
```lua
local content = {'apple', 'banana', 'orange', 'pineapple', 'kiwi'}
debugPrint( table.concat(content, '; ', 2, 4) ) --> banana; orange; pineapple
```

### table.sort(tbl:Table, ?comparison:Function(comp1:Any, comp2:Any)):Void
Sorts the element values from the given table, each element values' data type has it corresponding sorting system. For string it will sort to alphabetical order and for numbers it will sort to ascending order. If you attempted to sort several different data types, it will throw an error.

- `tbl` - The table to sort the given element values.
- `comparison` - An optional parameter, compares each element value of the table, receives two separate elements.
     - `comp1` - An optional parameter, The first randomize element value within the table.
     - `comp2` - An optional parameter, The second randomize element value within the table.

Example:
> Sorts from descending order.
```lua
local content = {8743, 8351, 9374, 3982}
table.sort(content, function(comp1, comp2)
     return comp1 < comp2
end)

debugPrint( content ) --> [3982, 8351, 8743, 9374]
```

## LuaJIT Exclusive Methods
> [!WARNING]
> _The methods listed have limited information and very vague documentation._

### table.new(narray:Int, nhash:Int):Table
> Requires: `require('table.new')`

Creates a new pre-sized table and pushes it onto the stack and pre-allocates memory. The pre-allocation is pretty useful for performance, when you know exactly the amount of elements will the table contain. For instance for holding a lot of elements within a table, if the exact table size is known. Automaticly resizing the table might cause performance issue. This method is based on the C API function `lua_createtable()`.

> [!CAUTION]
> _Only one parameter can only hold a value, the other parameter must hold a zero value. Becuase it might fuck up the method or something idk, most examples I saw have this rule._

- `narray` - The amount of elements, index-value pairs will the new table array have.
- `nhash` - The amount of elements, key-value pairs will the new table dictionary have.

Example:
```lua
require('table.new')

local content = table.new(3, 0)
content[1] = 0x83
content[2] = 0x9d
content[3] = 0xff
debugPrint(content) --> [131, 157, 255]
```
```lua
require('table.new')

local content = table.new(0, 3)
content.a = true
content.b = false
content.c = false
debugPrint(content) --> ["a" => true, "b" => false, "c" => false]
```

### table.clear(tbl:Table):Void
> Requires: `require('table.clear')`

Clears any element key and values from the given table, but preserves the allocated number of array or hash sizes. It's pretty useful for when a table, which is linked from multiple places, needs to be cleared and/or when recycling a table for use by the same context. And also avoid managing backlinks, saves an allocation and the overhead of incremental array or hash part growth.

> [!NOTE]
> _This method is meant for very specific situations, that in most cases. It's better to replace the link, usually single with a new table and let the [garbage collection](https://devforum.roblox.com/t/a-beginners-guide-to-lua-garbage-collection/1756677) do its work._

- `tbl` - The table to clear its elements, key and values.

Example:
```lua
require('table.clear')

local content = table.new(3, 0)
content[1] = 384
content[2] = 281
content[3] = 934

table.clear(content)
debugPrint(content) --> {}
```