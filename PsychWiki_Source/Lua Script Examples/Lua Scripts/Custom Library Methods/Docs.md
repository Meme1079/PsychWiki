# Table Methods
### table.find(tab:Array, element:Dynamic)
Finds the <ins>index position value of the Table</ins> with the given value. Can be used for verification that an element is in the table; Returns the index position number.

- `tab` - The table to be referenced.
- `element` - The table element to find.

Example:
```lua
function table.find(tab, value)
     for k,v in pairs(tab) do
          if v == value then return k end
     end
     return 'Value doesn\'t exists!'
end

local tabRef = {23, 73, 24, 92, 12, -34, 72, 5.43}
function onCreate()
     debugPrint( table.find(tabRef, -34) ) -- will print > 6
     debugPrint( table.find(tabRef, -73) ) -- will print > 'Value doesn't exists!'
end
```

### table.sub(tab:Array, startPos:Int, ?endPos:Int)
Extracts the <ins>specific portion of values</ins> from the Table <ins>starting to ending position</ins>; Removes any values that isn't selected.

- `tab` - The table to be referenced.
- `startPos` - The starting index position to start extracting.
- `endPos` - An optional parameter, The ending index position to end extracting.

Example:
```lua
function table.sub(tab, startPos, endPos)
     local faker = {}
     for i = startPos, endPos or #tab do
          table.insert(faker, tab[i])
     end
     return faker
end

local tabRef = {'This', 'isn\'t', 'a', 'real', 'thing'}
function onCreate()
     debugPrint( table.sub(tabRef, 4, 5) ) -- will print > ['real', 'thing']
end
```

### table.move(tab:Array, startPos:Int, endPos:Int, dest:Array, ?ind:Int = 1)
Copys the elements and moves it to a new Table from the `dest` parameter.

- `tab` - The table to be referenced.
- `startPos` - The starting index position of the elements.
- `endPos` - The ending index position of the elements.
- `dest` - The table destination for the extracted elements to be inserted.
- `ind` - An optional parameter, The specified index position of the table destination; Defualt value: `1`.

Example:
```lua
function table.move(tab, startPos, endPos, dest, ind)
     local ind = ind or 1
     for i = endPos, startPos, -1 do
          table.insert(dest, ind, tab[i])
     end
     return dest
end

local tabRefOld = {34, 12, 84, 34, true, true, false, true, 42, 12}
local tabRefNew = {}
function onCreate()
     table.move(tabRefOld, 5, 8, tabRefNew)
     debugPrint(tabRefNew) -- will print > [true, true, false, true]
end
```

### table.merge(tab1:Array, tab2:Array)
Merges two Tables, that's it.

- `tab1` - The first table to be merged.
- `tab2` - The second table to be merged.

Example:
```lua
function table.merge(tab1, tab2)
     local subTab1 = table.concat(tab1, ', ')
     local subTab2 = table.concat(tab2, ', ')
     return stringSplit(tab1..', '..tab2, ', ')
end

local tabStuff1 = {83, 12, 64}
local tabStuff2 = {63, 24, 92}
function onCreate()
     for k,v in pairs( table.merge(tabStuff1, tabStuff2) ) do
          debugPrint(v) -- will print > 83, 12, 64, 63, 24, 92
     end
end
```

### table.clone(tab:Array)
Clones the elements from the given Table.

- `tab` - The table to be referenced.

Example:
```lua
function table.clone(tab)
     local result = {}
     for k,v in pairs(tab) do
          result[k] = v
     end
     return result
end

local tabRef1 = {62, 84, 21, 74}
local tabRed2 = table.clone(tabRef1)
function onCreate()
     table.remove(tabRef1, 1)
     table.remove(tabRef1, 2)

     debugPrint(tabRef1) -- will print [21, 74]
     debugPrint(tabRef2) -- will print [62, 84, 21, 74]
end
```

### table.filter(tab:Array, func:Function)
Creates a Table and <ins>filter the specific value</ins> from the Table.

- `tab` - The table to be referenced.

Example:
```lua
function table.filter(tab, func)
     local result = {}
     for i = 1, #tab do
          if func(tab[i]) == true then
               table.insert(result, tab[i])
          end
     end
     return result
end

local tabRef = {62, 41, 12, 14, 7, 3, 10, 34, 23, 18, 43}
function onCreate()
     function filter(val) return val >= 18 end
     debugPrint( table.filter(tabRef, filter) ) -- will print > [62, 41, 34, 23, 18, 43]
end
```

***

# Mathematical Methods
### math.factorial(num:Float)
Multiplys the range of numbers between 1 to <var>n</var>; Goes from `0` to `65`.

- `num` - The number to be used.

### math.root(radicand:Float, ?index:Float = 2)
Returns the <ins>root of the number</ins>.

- `radicand` - The number to be used.
- `index` - The index number of the root.

### math.round(num:Float, ?dp:Int)
Rounds the number to <ins>its nearest integer</ins>.

- `num` - The number to be rounded.
- `dp` - An optional parameter, How decimal numbers will be included.

### math.trunc(num:Float)
Returns the <ins>integer part of the number</ins>, removing the decimal numbers.

- `num` - The number to be used.

### math.type(num:Float)
Checks if the number is an `integer` or `float`.

- `num` - The number to be checked.

### math.sign(num:Int)
Returns whether the number is positive, negative, or zero.

- `num` - The number to be checked.