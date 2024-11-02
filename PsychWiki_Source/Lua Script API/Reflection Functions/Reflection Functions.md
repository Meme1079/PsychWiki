# Property Instances
### instanceArg(instanceName:String, ?className:String = null):String
### createInstance(variableToSave:String, className:String, ?args:Array\<Dynamic\> = null):Any
### addInstance(objectName:String, ?inFront:Bool = false):Void

***

# Property Functions
## Property Setters
### setProperty(variable:String, value:Dynamic, ?allowMaps:Bool = false, ?allowInstances:Bool = false):Void
Sets a specified Playstates' instance variable or the object itself or its properties with a new value. The objects may refer to sprites, texts, or inserted storage variables. This is commonly used for changing the Playstates' instance variables, as well as changing the sprite or text object properties.

- `variable` - The Playstates' instance variable or the object to set a new value to.
- `value` - The specified new value to set to.
- `allowMaps` - An optional parameter, allows the ability to set the maps key-value pair elements; Default value: `false`.
- `allowInstances` - An optional parameter, allows the ability to use the classes' instance variable; Default value: `false`.

### setPropertyFromClass(classVar:String, variable:String, value:Dynamic, ?allowMaps:Bool = false, ?allowInstances:Bool = false):Void
Sets a specified classes' instance variable with a new value, the classes could either be from Psych Engine itself or from HaxeFlixel. When importing classes it must include its library package (i.e. the path to the class), for example: `backend.ClientPrefs`.

- `classVar` - The specified class to be utilize with; Examples: `backend.ClientPrefs`, `psychlua.LuaUtils`, `flixel.FlxG`, etc.
- `variable` - The classes instance variable to set a new value to.
- `value` - The specified new value to set to.
- `allowMaps` - An optional parameter, allows the ability to set the maps key-value pair elements; Default value: `false`.
- `allowInstances` - An optional parameter, allows the ability to use the classes' instance variable; Default value: `false`.

### setPropertyFromGroup(obj:String, index:Int, variable:Dynamic, value:Dynamic, ?allowMaps:Bool = false, ?allowInstances:Bool = false):Void
Sets a specified instance group variable by its members with a new value. It employs the use of class from the `flixel.group` library package, it includes: `FlxGroup`, `FlxSpriteGroup`, and especially the `FlxTypeGroup` classes. It can also include special array variables that contain classes, particularly both the `Note` & `EventNote` classes.

- `group` - The instance group variable to set a new value to.
- `index` - The index position of the instance group variable to use.
- `variable` - The classes' instance variable from the instance group variable to use.
- `value` - The specified new value to set to.
- `allowMaps` - An optional parameter, allows the ability to set the maps key-value pair elements; Default value: `false`.
- `allowInstances` - An optional parameter, allows the ability to use the classes' instance variable; Default value: `false`.

## Property Getters
### getProperty(variable:String, ?allowMaps:Bool = false):Any
Gets a specified Playstates' instance variable or the object itself or its properties current value. The objects may refer to sprites, texts, or inserted storage variables. This is commonly used for getting its current the Playstates' instance variable values, as well as getting the sprite or the text object property values.

- `variable` - The Playstates' instance variable or the object to get the current value.
- `allowMaps` - An optional parameter, allows the ability to get the maps key-value pair elements; Default value: `false`.

### getPropertyFromClass(classVar:String, variable:String, ?allowMaps:Bool = false):Any
Gets a specified classes' instance variable current value, the classes could either be from Psych Engine itself or from HaxeFlixel. When importing classes it must include its library package (i.e. the path to the class), for example: `backend.ClientPrefs`.

- `classVar` - The specified class to be utilize with; Examples: `backend.ClientPrefs`, `psychlua.LuaUtils`, `flixel.FlxG`, etc.
- `variable` - The classes instance variable to get the current value.
- `allowMaps` - An optional parameter, allows the ability to get the maps key-value pair elements; Default value: `false`.

### getPropertyFromGroup(obj:String, index:Int, variable:Dynamic, ?allowMaps:Bool = false):Any
Gets a specified instance group variable by its members current value. It employs the use of class from the `flixel.group` library package, it includes: `FlxGroup`, `FlxSpriteGroup`, and especially the `FlxTypeGroup` classes. It can also include special array variables that contain classes, particularly both the `Note` & `EventNote` classes.

- `group` - The instance group variable to getthe current value.
- `index` - The index position of the instance group variable to use.
- `variable` - The classes' instance variable from the instance group variable to use.
- `allowMaps` - An optional parameter, allows the ability to get the maps key-value pair elements; Default value: `false`.

## Property Calling Methods
### callMethod(method:String, ?args:Array\<Dynamic\> = null):Any
Calls the specified Playstates' instance method (function).

- `method` - The Playstates' instance method to call from.
- `args` - An optional parameter, the arguments from the Playstates' instance method, if it includes one.

### callMethodFromClass(className:String, method:String, ?args:Array\<Dynamic\> = null):Any
Calls the specified classes' instance method (function), the classes could either be from Psych Engine itself or from HaxeFlixel. When importing classes it must include its library package (i.e. the path to the class), for example: `backend.ClientPrefs`.

- `className` - The specified class to be utilize with; Examples: `backend.ClientPrefs`, `psychlua.LuaUtils`, `flixel.FlxG`, etc.
- `method` - The classes' instance method to call from.
- `args` - An optional parameter, the arguments from the classes' instance method, if it includes one.

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