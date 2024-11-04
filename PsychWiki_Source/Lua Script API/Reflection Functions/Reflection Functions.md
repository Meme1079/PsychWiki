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

### setPropertyFromGroup(group:String, index:Int, variable:Dynamic, value:Dynamic, ?allowMaps:Bool = false, ?allowInstances:Bool = false):Void
Sets a specified instance group variable by its members with a new value. It uses the classes from the `flixel.group` library package, it includes: `FlxGroup`, `FlxSpriteGroup`, and especially the `FlxTypeGroup` classes. It can also include special array variables that contain classes, particularly both the `Note` & `EventNote` classes.

- `group` - The instance group variable to set a new value to.
- `index` - The index position member of the instance group variable to use.
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

### getPropertyFromGroup(group:String, index:Int, variable:Dynamic, ?allowMaps:Bool = false):Any
Gets a specified instance group variable by its members current value. It uses the classes from the `flixel.group` library package, it includes: `FlxGroup`, `FlxSpriteGroup`, and especially the `FlxTypeGroup` classes. It can also include special array variables that contain classes, particularly both the `Note` & `EventNote` classes.

- `group` - The instance group variable to get the current value.
- `index` - The index position member of the instance group variable to use.
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
### addToGroup(group:String, tag:String, ?index:Int = -1):Void
Adds an object to the specified instance group variable. It uses the classes from the `flixel.group` library package, typically from both the `FlxSpriteGroup` and `FlxTypedGroup` classes.

- `group` - The instance group variable to add the object.
- `tag` - The specified tag of the object to add to the group.
- `index` - An optional parameter, The index position member of the group for the object to be added; Default value: `-1`.

### removeFromGroup(group:String, ?index:Int = -1, ?tag:String = null, ?destroy:Bool = true):Void
Removes an object from the specified instance group variable or itself entirely.

- `group` - The instance group variable to remove the object or itself.
- `index` - An optional parameter, The index position member of the group of the object to be removed; Default value: `-1`.
- `tag` - An optional parameter, The specified tag of the object to be remove to the group.
- `destroy` - An optional parameter, Whether the object from the group will be permanently remove or not; Default value: `true`.

***

# Property Attributes

***

# Property Group Instances
## User Interface
- `uiGroup`
- `comboGroup`

## Characters
- `boyfriendGroup`
- `dadGroup`
- `gfGroup`

## Notes
- `notes`
- `unspawnNotes`
- `eventNotes`
- `grpNoteSplashes`
- `playerStrums`
- `opponentStrums`
- `strumLineNotes`


***


```haxe
public var strumTime:Float = 0;
public var noteData:Int = 0;

public var mustPress:Bool = false;
public var canBeHit:Bool = false;
public var tooLate:Bool = false;

public var wasGoodHit:Bool = false;
public var missed:Bool = false;

public var ignoreNote:Bool = false;
public var hitByOpponent:Bool = false;
public var noteWasHit:Bool = false;
public var prevNote:Note;
public var nextNote:Note;

public var spawned:Bool = false;

public var blockHit:Bool = false; // only works for player

public var sustainLength:Float = 0;
public var isSustainNote:Bool = false;
public var noteType(default, set):String = null;

public var eventName:String = '';
public var eventLength:Int = 0;
public var eventVal1:String = '';
public var eventVal2:String = '';

public var animSuffix:String = '';
public var gfNote:Bool = false;
public var earlyHitMult:Float = 1;
public var lateHitMult:Float = 1;

public var noteSplashData:NoteSplashData = {
	disabled: false,
	texture: null,
	antialiasing: !PlayState.isPixelStage,
	useGlobalShader: false,
	useRGBShader: (PlayState.SONG != null) ? !(PlayState.SONG.disableNoteRGB == true) : true,
	a: ClientPrefs.data.splashAlpha
};

public var offsetX:Float = 0;
public var offsetY:Float = 0;
public var offsetAngle:Float = 0;
public var multAlpha:Float = 1;
public var multSpeed(default, set):Float = 1;

public var copyX:Bool = true;
public var copyY:Bool = true;
public var copyAngle:Bool = true;
public var copyAlpha:Bool = true;

public var hitHealth:Float = 0.02;
public var missHealth:Float = 0.1;
public var rating:String = 'unknown';
public var ratingMod:Float = 0; //9 = unknown, 0.25 = shit, 0.5 = bad, 0.75 = good, 1 = sick
public var ratingDisabled:Bool = false;

public var texture(default, set):String = null;

public var noAnimation:Bool = false;
public var noMissAnimation:Bool = false;
public var hitCausesMiss:Bool = false;
public var distance:Float = 2000;

public var hitsoundDisabled:Bool = false;
public var hitsoundChartEditor:Bool = true;

public var hitsoundForce:Bool = false;
public var hitsoundVolume(get, default):Float = 1.0;
```

### Hits
### Offsets
### Ratings
### Events
### Splash Data