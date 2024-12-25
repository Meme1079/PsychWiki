> [!NOTE]
> _When importing said class from the `className` parameter. The said classes that can be imported can be either from Psych Engine's `source` folder or from HaxeFlixel itself. Both each containing their own classes, accompanying its corresponding library package (i.e. the path to the class), for instance: `backend.ClientPrefs`, `objects.CheckboxThingie`, `psychlua.LuaUtils`, etc.</br></br>_
> _In Psych Engine version <kbd>0.6.3</kbd> and below, the need of including library package when importing classes isn't necessary to add. Because all of Psych Engine's classes doesn't contain a folder to each classes._

# Property Instances
### createInstance(objectName:String, className:String, ?args:Array\<Dynamic\> = null):Any
Creates a class instance (object) from the utilize class. Each argument from this function is derived from the classes' constructor method, if the argument(s) exists.

- `objectName` - The name of the class instance to inherit from the specified class.
- `className` - The specified class to be utilize with.
- `args` - An optional parameter, the argument(s) to be passed on, if the argument(s) exists.

Example:
> Creates an extra character using girlfriend, by utilizing the `Character` class derived from the `objects` library package. At the bottom is the Haxe equivalent of the Lua example above as a reference.
```lua
createInstance('epicGF', 'objects.Character', {0, 0, 'gf', false})
```
```haxe
var epicGF:Character = new Character(0, 0, 'gf', false);
```

### addInstance(objectName:String, ?inFront:Bool = false):Void
Adds the class instance (object) from the utilize class to the game.

- `objectName` - The name of the class instance to add to the game.
- `inFront` - An optional parameter, whether the class instance will be in-front of all objects or not; Default value: `false`.

Example:
> Adds the extra character using girlfriend in the game.
```lua
createInstance('epicGF', 'objects.Character', {0, 0, 'gf', false})
addInstance('epicGF', true)
```

### instanceArg(instanceName:String, ?className:String = null):String
Utilizes a class instance (object) from the derived class. It encrypts the class instance to prevent the code from thinking it's a string data type, preventing errors and stuff.

> [!IMPORTANT]
> _When using this function on property setter functions, i.e. `setProperty()` function. The `allowInstances` parameter must be set to `true` to allow the usage of the class instance._

- `instanceName` - The specified class instance name to utilize.
- `className` - An optional parameter, The specified class to utilize the class instance on. If the argument is left blank, it will default to the `Playstate` class.

Examples:
> Uses the class instance `epicGF` to set it its visibility to `false`.
```lua
createInstance('epicGF', 'objects.Character', {0, 0, 'gf', false})
setProperty(instanceArg('epicGF.visible'), false, true)
addInstance('epicGF', true)
```
> Removes entirely the notes from the game, but you still die lmao.
```lua
function onCreatePost()
     callMethod('noteGroup.remove', {instanceArg('notes')})
end
```

***

# Property Functions
## Setters
### setProperty(variable:String, value:Dynamic, ?allowMaps:Bool = false, ?allowInstances:Bool = false):Void
Sets the specified Playstate's instance variable, stored variable, or the object's properties with a new value. The object refers to any sprite, text, and inserted storage variables.

- `variable` - The Playstate's instance variable, object, or object properties to set a new value to.
- `value` - The new value to set to.
- `allowMaps` - An optional parameter, allows the ability to set the maps key-value pair elements; Default value: `false`.
- `allowInstances` - An optional parameter, allows the ability to utilize a class instance; Default value: `false`.

Examples:
> Sets the instance variable health value to $2$, making you having full health.
```lua
setProperty('health', 2)
```
> Sets the girlfriend character visibility to `false`.
```lua
setProperty('gf.visible', false)
```

### setPropertyFromClass(className:String, variable:String, value:Dynamic, ?allowMaps:Bool = false, ?allowInstances:Bool = false):Void
Sets the specified instance variable from the given class with a new value.

- `className` - The specified class to utilize the instance variable.
- `variable` - The classes' instance variable to set a new value to.
- `value` - The new value to set to.
- `allowMaps` - An optional parameter, allows the ability to set the maps key-value pair elements; Default value: `false`.
- `allowInstances` - An optional parameter, allows the ability to utilize a class instance; Default value: `false`.

Examples:
> Uses the `ClientPrefs` class from the `backend` library package (folder), to disable ghost tapping during gameplay.
```lua
setPropertyFromClass('backend.ClientPrefs', 'data.ghostTapping', false)
```
> Uses the `FlxG` class from the `flixel` library package (folder), to enable fullscreen.
```lua
setPropertyFromClass('flixel.FlxG', 'fullscreen', true)
```

### setPropertyFromGroup(group:String, index:Int, variable:Dynamic, value:Dynamic, ?allowMaps:Bool = false, ?allowInstances:Bool = false):Void
Sets the specified [group instance variable](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Reflection-Functions-%2D-Group-Instances) by each of its members with a new value. The group instance variable utilizes classes from the `flixel.group` library package. Particularly both the `FlxTypedGroup` and `FlxSpriteGroup` classes. It also includes special array variables that contain classes, particularly both the `Note` & `EventNote` classes.

- `group` - The group instance variable to set its members a new value to.
- `index` - The specified index position of the member to set a new value to.
- `variable` - The classes' instance variable to set a new value to.
- `value` - The new value to set to.
- `allowMaps` - An optional parameter, allows the ability to set the maps key-value pair elements; Default value: `false`.
- `allowInstances` - An optional parameter, allows the ability to use the classes' instance variable; Default value: `false`.

Example:
> Iterates a `for` loop at the `unspawnNotes` instance group variable, so each unspawned note will have a low health (`0.1`) when hitting and missing notes.
```lua
function onCreatePost()
     for members = 0, getProperty('unspawnNotes.length') - 1 do
          setPropertyFromGroup('unspawnNotes', members, 'hitHealth',  0.1)
          setPropertyFromGroup('unspawnNotes', members, 'missHealth', 0.1)
     end
end
```

## Getters
### getProperty(variable:String, ?allowMaps:Bool = false):Any
Gets the specified Playstate's instance variable, stored variable, or the object's properties current value. The object refers to any sprite, text, and inserted storage variables.

- `variable` - The Playstate's instance variable, object, or object properties to get the current value from.
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
Gets the specified instance variable from the given class current value.

- `className` - The specified class to utilize the instance variable.
- `variable` - The classes' instance variable to get the current value from.
- `allowMaps` - An optional parameter, allows the ability to set the maps key-value pair elements; Default value: `false`.

Example:
> Uses the `ClientPrefs` class from the `backend` library package (folder), to check if the gameplay setting enables instakill when missing a note. Thus causing this stupid message.
```lua
if getPropertyFromClass('backend.ClientPrefs', 'data.gameplaySettings').instakill == true then
     debugPrint('Gaming 100%', '00ff00')
end
```

### getPropertyFromGroup(group:String, index:Int, variable:Dynamic, ?allowMaps:Bool = false):Any
Gets the specified [group instance variable](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Reflection-Functions-%2D-Group-Instances) by each of its members current value. The group instance variable utilizes classes from the `flixel.group` library package. Particularly both the `FlxTypedGroup` and `FlxSpriteGroup` classes. It also includes special array variables that contain classes, particularly both the `Note` & `EventNote` classes.

- `group` - The group instance variable to set its members to get the current value from.
- `index` - The specified index position of the member to get the current value from.
- `variable` - The classes' instance variable to get the current value from.
- `allowMaps` - An optional parameter, allows the ability to set the maps key-value pair elements; Default value: `false`.

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

## Calling Methods
### callMethod(method:String, ?args:Array\<Dynamic\> = null):Any
Calls an instance method from the Playstate class.

- `method` - The Playstate's instance method to call from.
- `args` - An optional parameter, The arguments from the Playstate's instance method, if the argument(s) exists.

Examples:
> Calls the Playstates instance method `openPauseMenu()`, when the song starts after the countdown.
```lua
function onSongStart()
     callMethod('openPauseMenu')
end
```
> Switches the health bar placements from both the player and the opponent. By switching the health bar directions, changing their icons from their respective places, and changing the health bar color to match their respective places.

> The instance variables mentioned here are attached to their corresponding classes. Allowing them to call instance methods from that class. For example, the `healthBar` instance variable holds the `Bar` class from the `objects` library class.
```lua
function onCreatePost()
     callMethod('healthBar.set_leftToRight', {true})
     callMethod('iconP1.changeIcon', {'dad'})
     callMethod('iconP2.changeIcon', {'bf'})
     setHealthBarColors('31b1d1', 'af66ce')
end
```

### callMethodFromClass(className:String, method:String, ?args:Array\<Dynamic\> = null):Any
Calls an instance method from the given class.

- `className` - The specified class to utilize the instance method.
- `method` - The Playstate's instance method to call from.
- `args` - An optional parameter, The arguments from the Playstate's instance method, if the argument(s) exists.

Examples:
> Recreates the rating percent by calling the `floorDecimal()` instance method. From the `CoolUtil` class through the `backend` library package, it uses two arguments. The first argument rounds down the value, while the second argument specifies how many fractions of the number to display.
```lua
function onUpdatePost(elapsed)
     local ratingPercent = getProperty('ratingPercent') * 100
     local rating = callMethodFromClass('backend.CoolUtil', 'floorDecimal', {ratingPercent, 2})
     debugPrint(rating)
end
```
> Parses the JSON, converting it to a table. It calls the `parse()` instance method from the `TJSON` class using the `tjson` library package. Very useful if you want to do JSON stuff.
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
> [!NOTE]
> _If each `index` parameter from these functions are left blank (no value). It will default to adding the inserted object to the current index position order of the group._

### addToGroup(group:String, tag:String, ?index:Int = -1):Void
Adds a new object to the specified group instance variable.

- `group` - The group instance variable to add a new object.
- `tag` - The object's tag to add to the group instance variable.
- `index` - An optional parameter, the specified index position order for the added to object; Default value: `-1`.

### removeFromGroup(group:String, ?index:Int = -1, ?tag:String = null, ?destroy:Bool = true):Void
Removes the current object to the specified group instance variable.

- `group` - The group instance variable to remove the current object.
- `index` - An optional parameter, the specified index position order for the added to object; Default value: `-1`.
- `tag` - An optional parameter, the object's tag to remove from the group instance variable.
- `destroy` - An optional parameter, whether the object from the group instance variable will be destroyed permanently or not; Default value: `true`.

***

# Property Object Attributes
Here listed are the most common property attributes for objects to utilize in property functions like `setProperty()` function. This list doesn't contain the full list of attributes, if you want to the full list. Just go to the [FlxObject](https://api.haxeflixel.com/flixel/FlxObject.html) for object attributes, [FlxGraphic](https://api.haxeflixel.com/flixel/graphics/FlxGraphic.html) for graphic attributes, and [FlxBasic](https://api.haxeflixel.com/flixel/IFlxBasic.html) for any basic attributes.

| Attributes 	| Description 	| Type 	| Settable 	|
|---	|---	|---	|---	|
| `x` 	| The x position value of an object. 	| `Float` 	| _Yes_ 	|
| `y` 	| The y position value of an object. 	| `Float` 	| _Yes_ 	|
| `width` 	| The width value of an object. 	| `Float` 	| _Yes_ 	|
| `height` 	| The height value of an object. 	| `Float` 	| _Yes_ 	|
| `angle` 	| The angle position value of an object. 	| `Float` 	| _Yes_ 	|
| `alpha` 	| The alpha (opacity) value of an object. 	| `Float` 	| _Yes_ 	|
| `color` 	| The hexadecimal color value of an object. 	| `Int` 	| _Yes_ 	|
| `camera` 	| The game camera of an object to display at. 	| `String` 	| _Yes_ 	|
| `visible` 	| The visibility of an object to display. 	| `Boolean` 	| _Yes_ 	|
| `antialiasing` 	| The anti-aliasing of an object to display. 	| `Boolean` 	| _Yes_ 	|
| `flipX` 	| Whether the object is flipped by the x-axis. 	| `Boolean` 	| _Yes_ 	|
| `flipY` 	| Whether the object is flipped by the y-axis. 	| `Boolean` 	| _Yes_ 	|
| `scale.x` 	| The graphic size by pixels in x value of the object. 	| `Float` 	| _Yes_ 	|
| `scale.y` 	| The graphic size by pixels in y value of the object. 	| `Float` 	| _Yes_ 	|
| `offset.x` 	| The offsets in x value of the object. 	| `Float` 	| _Yes_ 	|
| `offset.y` 	| The offsets in y value of the object. 	| `Float` 	| _Yes_ 	|
| `velocity.x` 	| The speed in pixels per second in x value of the object. 	| `Float` 	| _Yes_ 	|
| `velocity.y` 	| The speed in pixels per second in y value of the object. 	| `Float` 	| _Yes_ 	|
| `scrollFactor.x` 	| The camera strolling in the x-axis affecting the object. 	| `Float` 	| _Yes_ 	|
| `scrollFactor.y` 	| The camera strolling in the y-axis affecting the object. 	| `Float` 	| _Yes_ 	|
| `graphics.key` 	| The image inherit from the object. 	| `String` 	| _No_ 	|
| `graphics.useCount` 	| The amount of usage of the same multiple image from other objects. 	| `Int` 	| _No_ 	|

***

# See Also
- [Deprecated & Removed Functions](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Deprecated-&-Removed-Functions)