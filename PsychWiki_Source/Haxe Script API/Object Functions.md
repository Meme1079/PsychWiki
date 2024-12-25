# Add-Behind Character Functions
### addBehindBF(object:FlxBasic):Void
Adds the given object behind the player character.

- `object` - The given object to add behind the character.

### addBehindDad(object:FlxBasic):Void
Adds the given object behind the opponent character.

- `object` - The given object to add behind the character.

### addBehindGF(object:FlxBasic):Void
Adds the given object behind the girlfriend character.

- `object` - The given object to add behind the character.

***

# State Functions
### add(object:FlxBasic):Void
Adds the given object into the game. Once a object has been added it will overlap the previous added object. Causing the recently added object to be placed in front of every object in the game.

- `object` - The given object to add within the game.

### insert(object:FlxBasic, ?pos:Int = -1):Void
Sets the given object's order position with a new order position value.

- `object` - The given object to insert a new order position.
- `pos` - An optional parameter, the new order position set to, leave it blank to insert in each object normally; Default value: `-1`.

### remove(object:FlxBasic):Void
Removes the given object from the game.

- `object` - The given object to remove from the game.