# String Library

### string.lower(string)
Converts any upper case alphabet into lower case

- `string` - The string you want

### string.upper(string)
Converts any lower case alphabet into upper case

- `string` - The string you want

### string.byte(char, pos)
Creates a numeric code from the character code or string

- `char` - The character code or string
- `pos` -  An optional value that get the position of the character

Example: `string.byte('a')` will return 97

### string.char(byte)
Creates a character code from the numeric code

- `byte` - the numeric code

Example: `string.char(97)` will return 'a'

### string.gsub(string, pat, rep, limit)
Returns a copy of a string and replaces it with a new string

- `string` - The string you want
- `pat` - Part of the string you want to replace
- `rep` - The string that will be replacing the previous one 
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
- `pos` - The position in each array of the table
- `val` - The value that you want to insert

### table.remove(table, pos)
Removes a value inside of a table

- `table` - The table you want
- `pos` - The position in each array of the table

### table.concat(table, sep)
Converts a table into a string

- `table` - The table you want
- `sep` - The separation between the value in the table

### table.sort(table)
Makes the table sorted in an alphabetical order

- `table` - The table you want

### table.getn{table}
Gets the length of the table

- `table` - The table you want

Example: `table.getn{'a', 'b', 'c'}` will return 3

# Math Library

### math.max(num)
Returns the highest value that it could find

- `num` - Multiple array of numbers

Example: `math.max(12, 34, 1)` will print 34 because it's the largest value

### math.min(num)
Returns the lowest value that it could find 

- `num` - Multiple array of numbers

Example: `math.min(12, 34, 1)` will print 1 because it's the lowest value

### math.ceil(num)
Rounds a number to its highest value

- `num` - The decimal number you want

Example: `math.ceil(5.1)` will print 6

### math.floor(num)
Rounds a number to its lowest value

- `num` - The decimal number you want

Example: `math.floor(5.9)` will print 5

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
Makes a negative number into a positive one

- `num` - The negative number you want

Example: `math.abs(-5)` will convert it to positive 5

### math.pow(num, expo)
Another alternate exponent operator that returns the result of the exponent

- `num` - The number you want
- `expo` - The number that will be the exponent

### math.pi
Returns pi length of 13 digits

### math.huge
Returns the largest numerical value which is infinite