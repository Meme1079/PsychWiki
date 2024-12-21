# Object Ordering Functions
### setObjectOrder(object:String, order:Int, ?group:String = null):Void
Sets the given object's order position with a new order position value within the game or group.

- `object` - The given object name tag to set a new order position value to.
- `order` - The new order position set to.
- `group` - An optional parameter, the group instance variable to be reordering objects.

### getObjectOrder(object:String, ?group:String = null):Int
Gets the given object's current order position value within the game or group. 

- `object` - The given object name tag to get its current order position value from.
- `group` - An optional parameter, the group instance variable to be getting the object's current order position.

### objectsOverlap(object1:String, object2:String):Bool
Checks whether two given objects are overllaping to each other or not.

- `object1` - The first given object name tag to overlap with.
- `object2` - The second given object name tag to overlap with.

***

# Scale Functions
### updateHitbox(object:String):Void
Whether it will update the object's width and height dimension and offsets. Must be used for changing the object's graphic size.

- `object` - The given object name tag to update the dimension and offsets.

### setGraphicSize(object:String, x:Float, y:Float = 0, updateHitbox:Bool = true):Void
Sets the given object's graphic dimension in pixels by using scale.

- `object` - The given object name tag to set its graphic dimension.
- `x` - The new width dimension value to set to.
- `y` - An optional parameter, the new height dimension value to set to; Default value: `0`.
- `updateHitbox` - An optional parameter, Whether it will update the object's dimension and offsets; Default value: `true`.

### scaleObject(object:String, x:Float, y:Float, updateHitbox:Bool = true):Void
Sets the given object's graphic by size property. If below `1`, zoom-out; if above `1`, zoom-in.

- `object` - The given object name tag to set its graphic size.
- `x` - The new width size value to set to.
- `y` - An optional parameter, The new height size value to set to; Default value: `0`.
- `updateHitbox` - An optional parameter, Whether it will update the object's dimension and offsets; Default value: `true`.

***

# Precaching Functions
### addCharacterToList(json:String, characterType:String):Void
Adds the given character to prechache for optimization purposes. This is a must for changing characters mid-game to prevent lag spikes, especially the "Change Character" event.

- `json` - The given character's JSON file to load and prechache; starts within the `characters` folder directory.
- `characterType` - The specified character type to set precache; Can be either: `boyfriend`, `dad`, or `gf`.

### precacheImage(sprite:String, ?allowGPU:Bool = true):Void
Precaches the object's image graphic.

- `sprite` - The given object's image sprite graphic to precache; starts within the `images` folder directory.
- `allowGPU` - An optional parameter, whether to enabled GPU caching or not; Default value: `true`.

### precacheSound(sound:String):Void
Precaches the sound.

- `sound` - The given sound to precache; starts within the `sounds` folder directory.

### precacheMusic(music:String):Void
Precaches the music.

- `music` - The given music to precache; starts within the `music` folder directory.

***

# Midpoint Functions
### getGraphicMidpointX(object:String):Float
Gets the given object's sprite graphic midpoint by x-position value within the world coordinates.

- `object` - The given object sprite name tag to get its current graphic midpoint.

### getGraphicMidpointY(object:String):Float
Gets the given object's sprite graphic midpoint by y-position value within the world coordinates.

- `object` - The given object sprite name tag to get its current midpoint.

### getMidpointX(object:String):Float
Gets the given object's midpoint by x-position value within the world coordinates.

- `object` - The given object name tag to get its current midpoint.

### getMidpointY(object:String):Float
Gets the given object's midpoint by y-position value within the world coordinates.

- `object` - The given object name tag to get its current midpoint.

***

# Screen Positioning Functions
### screenCenter(object:String, pos:String = 'xy')
Centers the given object's on the screen, centering can be either by the x-axis, y-axis, or both.

> [!WARNING]
> _When an object has been centered to the screen, it makes it impossible to set a new position value to it._

- `object` - The given object name tag to center it on the screen.
- `pos` - An optional parameter, the specified screen position to set in; Can be either: `x`, `y` or `xy`; Default value: `xy`.

### getScreenPositionX(object:String, ?camera:String = 'camGame'):Float
Gets the given object's current screen x-position value.

- `object` - The given object name tag to get its current screen position.
- `camera` - An optional parameter, the specified camera state to apply to; Can be either: `camGame`, `camHUD` or `camOther`;<br>Default value: `camGame`.

### getScreenPositionY(object:String, ?camera:String):Float
Gets the given object's current screen y-position value.

- `object` - The given object name tag to get its current screen position.
- `camera` - An optional parameter, the specified camera state to apply to; Can be either: `camGame`, `camHUD` or `camOther`;<br>Default value: `camGame`.

# Miscellaneous Functions
### setScrollFactor(object:String, scrollX:Float, scrollY:Float):Void
Sets the given object's scroll factor value.

- `object` - The given object name tag to set a new scroll factor value to.
- `scrollX` - The amount of scroll factor by x value to set to.
- `scrollY` - The amount of scroll factor by y value to set to.

### setObjectCamera(object:String, camera:String = 'game'):Bool
Sets the given object's camera state to apply to.

- `object` - The given object name tag to set a new camera state to.
- `camera` - An optional parameter, the specified camera state to apply to; Can be either: `camGame`, `camHUD` or `camOther`;<br>Default value: `camGame`.