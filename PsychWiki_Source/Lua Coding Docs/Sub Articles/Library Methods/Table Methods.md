# Table Methods
### table.insert(tbl:Table, ?pos:Int, value:Any):Table
Inserts an element value to a given table array, shifting the pre-existing element values to open space, if it exists. 

- `tbl` - The table array to insert an element value.
- `pos` - An optional parameter, The index position for the element value to be inserted to. This will always insert at the end of the table array, if there is no argument present. It basically gets the length of the table array and adds `1` to it.
- `value` - The element value to be inserted to.

### table.remove(tbl:Table, ?pos:Int):Any
Removes an element value from a given table array, shifting the pre-existing element values to close space, if it exists. Returns the given element value that was removed from the table array.

- `tbl` - The table array to insert an element value.
- `pos` - An optional parameter, The index position for the element value to be removed from. This will always remove at the end of the table array, if there is no argument present. It basically gets the length of the table array and subtracts `1` to it.
- `value` - The element value to be removed from.

### table.concat(tbl:Table, sep:String = '', ?start:Int = 1, ?end:Int):String
Concatenates each element values from a given table array; strings and numbers are only allowed to concatenate tho.

- `tbl` - The table array to concatenate each element values.
- `sep` - An optional parameter, The seperation between each element values; Default value: `''`.
- `start` - An optional parameter, The starting index position of the table array to start concatenating; Default value: `1`.
- `end` - An optional parameter, The ending index position of the table array to end concatenating.

### table.sort(tbl:Table, ?algrm:Function):Table
Sorts the element values from the given table, each element values' data type has it corresponding sorting system. For string it will sort to alphabetical order and for numbers it will sort to ascending order. If you attempted to sort several different data types, it will throw an error.

- `tbl` - The table to sort the given element values.
- `algrm` - An optional parameter, The sorting algorithm type for the table to sort to.

## LuaJIT Exclusive Methods
### table.foreach(tbl:Table, iteration:Function):Table
### table.foreachi(tbl:Table, iteration:Function):Table
### table.new(ntbl:Int, nhash:Int):Table
### table.clear(tbl:Table):Table