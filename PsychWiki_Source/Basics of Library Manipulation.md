# String Library

### string.lower(string)
Makes the string lower case

- `string` - The string you want

### string.upper(string)
Makes the string upper case

- `string` - The string you want

### string.byte(char, pos)
Converts the string to a numeric code

- `char` - The character code or string
- `pos` -  An optional value that get the position of the character

Example: `string.byte('a')` will return 97

### string.char(byte)
Converts the string return to character code

- `byte` - the numeric code

Example: `string.char(97)` will return 'a'

### string.gsub(string, old, new, limit)
Replaces part or entire of the string

- `string` - The string you want
- `old` - Part of the string you want to replace
- `new` - The string that will be replacing the previous one 
- `limit` - An Optional value that limits on replacing the new string

### string.len(string)
Returns the length of the string

- `string` - The string you want

Example: `string.len('words')` will return 5

### string.rep(string, limit)
Repeats the string

- `string` - The string you want
- `limit` - The limit of repeating it

### string.reverse(string)
Reverses the string

- `string` - The string you want

### string.find(string)
Finds the string works the same with `stringStartsWith()` and `stringEndsWith()` but has no limit

- `string` - The string you want

# Table Library

### table.insert(table, pos, val)
Inserts a new value inside of a table

- `table` - The table you want
- `pos` - An optional value that places the item on the table's position
- `val` - The value that you want to insert

### table.remove(table, pos)
Removes a value inside of a table

- `table` - The table you want
- `pos` - An optional value that places the item on the table's position

### table.concat(table, sep)
Converts a table into a string

- `table` - The table you want
- `sep` - the speration between the value in the table

### table.sort(table)
Makes the sort to alphabetical order

- `table` - The table you want

### table.getn{table}
Gets the lenght of the table

- `table` - The table you want

Example: `table.getn{'a', 'b', 'c'}` will return 3

# Math Library

### math.max(num)
Returns the largest value

- `num` - Multiple array of numbers

Example: `math.max(12, 34, 1)` will print 34 because it's the largest value

### math.min(num)
Returns the lowest value

- `num` - Multiple array of numbers

Example: `math.min(12, 34, 1)` will print 1 because it's the lowest value

### math.floor(num)
Rounds a number to lowest value

- `num` - The decimal number you want

Example: `math.floor(5.9)` will print 5

### math.ceil(num)
Rounds a number to highest value

- `num` - The decimal number you want

Example: `math.floor(5.1)` will print 6

### math.sin(num)
Returns the sine of the number

- `num` - The number you want

### math.cos(num)
Returns the cosine of the number

- `num` - The number you want

### math.tan(num)
Returns the tangent of the number

- `num` - The number you want

### math.sqrt(num)
Returns the square root of the number

- `num` - The number you want

Example: `math.sqrt(5)` will print `2.2360679775`

### math.abs(num)
Converts negative number to positive

- `num` - The negative number you want

Example: `math.abs(-5)` will convert it to positive 5

### math.pow(num, expo)
Another alternate to exponent

- `num` - The number you want
- `expo` - The number that will be the exponent

### math.pi
Returns 13 length of pi

### math.huge
Returns `inf` aka infinite