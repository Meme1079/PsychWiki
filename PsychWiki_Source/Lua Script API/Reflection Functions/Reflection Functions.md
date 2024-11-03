# Property Instances
### createInstance(objectName:String, className:String, ?args:Array\<Dynamic\> = null):Any
Creates an instance (object) from the specified class, the arguments are derived from the constructor method of the class.

- `objectName` - The tag for the instance class to inherit.
- `className` - The specified class to be utilize with; Examples: `Character`, `Alphabet`, `HealthIcon`, etc.
- `args` - An optional parameter, the arguments from the classes' constructor method, if it includes one.

Example:
> Creates an instance of the `Character` class derived from the `objects` library package, by creating a character of girlfriend. The second example below is the Haxe equivalent of the Lua example above as a reference.
```lua
createInstance('epicGF', 'objects.Character', {0, 0, 'gf', false})
```
```haxe
var epicGF:Character = new Character(0, 0, 'gf', false);
```

### addInstance(objectName:String, ?inFront:Bool = false):Void
Adds the instance (object) from the specified class to the game.

- `objectName` - The tag of the instance class to add.
- `inFront` - An optional parameter, Whether it will be in front of every object in the game; Default value: `false`.

Example:
```lua
addInstance('epicGF', true)
```

### instanceArg(instanceName:String, ?className:String = null):String
Gets an instance from a specified class. It encrypts the instance, so that the code will know it's not a string.

- `instanceName` - The tag from the instance class to get.
- `className` - An optional parameter, The specified class to be utilize with; Examples: `Character`, `Alphabet`, `HealthIcon`, etc. If left blank it will utilize the `Playstates` class.

Examples:
> Gets both the `iconP1` and `iconP2` instance variables and removes it from the game.
```lua
callMethod('remove', {instanceArg('iconP1')})
callMethod('remove', {instanceArg('iconP2')})
```
> Removes entirely the notes from the game, but you still die lmao.
```lua
function onCreatePost()
     callMethod('noteGroup.remove', {instanceArg('notes')})
end
```

***

# Property Functions
## Property Setters
### setProperty(variable:String, value:Dynamic, ?allowMaps:Bool = false, ?allowInstances:Bool = false):Void
Sets a specified Playstates' instance variable or the object itself or its properties with a new value. The objects may refer to sprites, texts, or inserted storage variables. This is commonly used for changing the Playstates' instance variables, as well as changing the sprite or text object properties.

- `variable` - The Playstates' instance variable or the object to set a new value to.
- `value` - The specified new value to set to.
- `allowMaps` - An optional parameter, allows the ability to set the maps key-value pair elements; Default value: `false`.
- `allowInstances` - An optional parameter, allows the ability to use the classes' instance variable; Default value: `false`.

Examples:
> Sets the instance variable health value to $2$, making you having full health.
```lua
setProperty('health', 2)
```
> Sets the girlfriend character visibility to `false`.
```lua
setProperty('gf.visible', false)
```

### setPropertyFromClass(classVar:String, variable:String, value:Dynamic, ?allowMaps:Bool = false, ?allowInstances:Bool = false):Void
Sets a specified classes' instance variable with a new value, the classes could either be from Psych Engine itself or from HaxeFlixel. When importing classes it must include its library package (i.e. the path to the class), for example: `backend.ClientPrefs`.

- `classVar` - The specified class to be utilize with; Examples: `ClientPrefs`, `LuaUtils`, `FlxG`, etc.
- `variable` - The classes instance variable to set a new value to.
- `value` - The specified new value to set to.
- `allowMaps` - An optional parameter, allows the ability to set the maps key-value pair elements; Default value: `false`.
- `allowInstances` - An optional parameter, allows the ability to use the classes' instance variable; Default value: `false`.

Examples:
> Uses the `ClientPrefs` class from the `backend` library package (folder), to disable ghost tapping during gameplay.
```lua
setPropertyFromClass('backend.ClientPrefs', 'data.ghostTapping', false)
```
> Uses the `FlxG` class from the `flixel` library package (folder), to enable fullscreen.
```lua
setPropertyFromClass('flixel.FlxG', 'fullscreen', true)
```

### setPropertyFromGroup(obj:String, index:Int, variable:Dynamic, value:Dynamic, ?allowMaps:Bool = false, ?allowInstances:Bool = false):Void
Sets a specified instance group variable by its members with a new value. It employs the use of class from the `flixel.group` library package, it includes: `FlxGroup`, `FlxSpriteGroup`, and especially the `FlxTypeGroup` classes. It can also include special array variables that contain classes, particularly both the `Note` & `EventNote` classes.

- `group` - The instance group variable to set a new value to.
- `index` - The index position of the instance group variable to use.
- `variable` - The classes' instance variable from the instance group variable to use.
- `value` - The specified new value to set to.
- `allowMaps` - An optional parameter, allows the ability to set the maps key-value pair elements; Default value: `false`.
- `allowInstances` - An optional parameter, allows the ability to use the classes' instance variable; Default value: `false`.

Example:
> Iterates a `for` loop at the `unspawnNotes` instance group variable, so each unspawned note will have a low health ($0.1$) when hitting and missing notes.
```lua
function onCreatePost()
     for members = 0, getProperty('unspawnNotes.length') - 1 do
          setPropertyFromGroup('unspawnNotes', members, 'hitHealth',  0.1)
          setPropertyFromGroup('unspawnNotes', members, 'missHealth', 0.1)
     end
end
```

## Property Getters
### getProperty(variable:String, ?allowMaps:Bool = false):Any
Gets a specified Playstates' instance variable or the object itself or its properties current value. The objects may refer to sprites, texts, or inserted storage variables. This is commonly used for getting its current the Playstates' instance variable values, as well as getting the sprite or the text object property values.

- `variable` - The Playstates' instance variable or the object to get the current value.
- `allowMaps` - An optional parameter, allows the ability to get the maps key-value pair elements; Default value: `false`.

Examples:
> Checks if it's using botplay, if `true` it will print this amazing text.
```lua
if getProperty('cpuControlled') == true then
     debugPrint('Skill Issue!!!', 'ff0000')
end
```
> Sets the boyfriend character's angle value by getting its current angle value and adds it by $\pi$, don't ask why.
```lua
function onUpdate(elapsed)
     setProperty('boyfriend.angle', getProperty('boyfriend.angle') + math.pi)
end
```

### getPropertyFromClass(classVar:String, variable:String, ?allowMaps:Bool = false):Any
Gets a specified classes' instance variable current value, the classes could either be from Psych Engine itself or from HaxeFlixel. When importing classes it must include its library package (i.e. the path to the class), for example: `backend.ClientPrefs`.

- `classVar` - The specified class to be utilize with; Examples: `ClientPrefs`, `LuaUtils`, `FlxG`, etc.
- `variable` - The classes instance variable to get the current value.
- `allowMaps` - An optional parameter, allows the ability to get the maps key-value pair elements; Default value: `false`.

Example:
> Uses the `ClientPrefs` class from the `backend` library package (folder), to check if the gameplay setting enables instakill when missing a note. Thus causing this stupid message.
```lua
if getPropertyFromClass('backend.ClientPrefs', 'data.gameplaySettings').instakill == true then
     debugPrint('Gaming 100%', '00ff00')
end
```

### getPropertyFromGroup(obj:String, index:Int, variable:Dynamic, ?allowMaps:Bool = false):Any
Gets a specified instance group variable by its members current value. It employs the use of class from the `flixel.group` library package, it includes: `FlxGroup`, `FlxSpriteGroup`, and especially the `FlxTypeGroup` classes. It can also include special array variables that contain classes, particularly both the `Note` & `EventNote` classes.

- `group` - The instance group variable to getthe current value.
- `index` - The index position of the instance group variable to use.
- `variable` - The classes' instance variable from the instance group variable to use.
- `allowMaps` - An optional parameter, allows the ability to get the maps key-value pair elements; Default value: `false`.

Example:
> Iterates a `for` loop at the `unspawnNotes` instance group variable (again), to change both the player and opponent note skins. By checking if the instance variable `mustPress` is `true` or not.
```lua
local playerSkin   = 'noteSkins/NOTE_assets-INSERT_SKIN_HERE'
local playerSplash = 'noteSplashes/noteSplashes-INSERT_SKIN_HERE'
local opponentSkin = 'noteSkins/NOTE_assets-INSERT_SKIN_HERE'
function onCreatePost()
     for members = 0, getProperty('unspawnNotes.length') - 1 do
          if getPropertyFromGroup('unspawnNotes', members, 'mustPress') == true then
               setPropertyFromGroup('unspawnNotes', members, 'texture', playerSkin)
               setPropertyFromGroup('unspawnNotes', members, 'noteSplashData.texture', playerSplash)
          else
               setPropertyFromGroup('unspawnNotes', members, 'texture', opponentSkin)
          end
     end
end
```

## Property Calling Methods
### callMethod(method:String, ?args:Array\<Dynamic\> = null):Any
Calls the specified Playstates' instance method (function).

- `method` - The Playstates' instance method to call from.
- `args` - An optional parameter, the arguments from the Playstates' instance method, if it includes one.

Examples:
> Calls the Playstates instance method `openPauseMenu()`, when the song starts after the countdown.
```lua
function onSongStart()
     callMethod('openPauseMenu')
end
```
> Switches the health bar placements for both the player and the opponent. By calling the `set_leftToRight()` instance method from the `healthBar` instance variable, setting the argument to `true`. And calling the `changeIcon()` instance method from both the `iconP1` and `iconP2` instance variable, switching their respective icons to each other in their arguments. Furthermore, it changes the health bar colors from both the player and opponent.

> If you're wondering why some instance variable can call methods and use variables, like the `healthBar` instance variable. Because it is type-annotated by a class, meaning it has all the instance variable and methods from the class. So the `healthBar` instance variable is type-annotated by the `Bar` class. And both `iconP1` and `iconP2` instance variable are type-annotated by the `HealthIcon` class.
```lua
function onCreatePost()
     callMethod('healthBar.set_leftToRight', {true})
     callMethod('iconP1.changeIcon', {'dad'})
     callMethod('iconP2.changeIcon', {'bf'})
     setHealthBarColors('31b1d1', 'af66ce')
end
```

### callMethodFromClass(className:String, method:String, ?args:Array\<Dynamic\> = null):Any
Calls the specified classes' instance method (function), the classes could either be from Psych Engine itself or from HaxeFlixel. When importing classes it must include its library package (i.e. the path to the class), for example: `backend.ClientPrefs`.

- `className` - The specified class to be utilize with; Examples: `ClientPrefs`, `LuaUtils`, `FlxG`, etc.
- `method` - The classes' instance method to call from.
- `args` - An optional parameter, the arguments from the classes' instance method, if it includes one.

Examples:
> Recreates the rating percent by calling the `floorDecimal()` instance method. From the `CoolUtil` class through the `backend` library package, it uses two arguments. The first argument rounds down the value, while the second argument specifies how many fractions of the number to display.
```lua
function onUpdatePost(elapsed)
     local ratingPercent = getProperty('ratingPercent') * 100
     local rating = callMethodFromClass('backend.CoolUtil', 'floorDecimal', {ratingPercent, 2})
     debugPrint(rating)
end
```
> Parses the JSON, converting it to a table. It calls the `parse()` instance method from the `TJSON` class using the `tjson` library package.
```lua
local iconGetJSON = [[{
     "icons": {
          "bf":  { "image": "bf",  "color": [49, 177, 209]  },
          "dad": { "image": "dad", "color": [175, 102, 206] },
          "gf":  { "image": "gf",  "color": [165, 0, 77]    }
     }
}]]

local iconJSON = callMethodFromClass('tjson.TJSON', 'parse', {iconGetJSON})
debugPrint(iconJSON.bf)          --> [image => bf, color => [49, 177, 209]]
debugPrint(iconJSON.bf.image)    --> bf
debugPrint(iconJSON.gf.color[1]) --> 165
```

***

# Group Properties
### addToGroup(group:String, tag:String, ?index:Int = -1):Void
### removeFromGroup(group:String, ?index:Int = -1, ?tag:String = null, ?destroy:Bool = true):Void

***

# Property Attributes & Instances
## Object Attributes
## Group Instances
## Note Instances
### Hits
### Offsets
### Ratings
### Events
### Splash Data