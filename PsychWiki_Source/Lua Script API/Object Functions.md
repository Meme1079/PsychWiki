# Object Ordering Functions
### setObjectOrder(object:String, order:Int, ?group:String = null):Void
<ins>Sets the given object's order position</ins> with a new order position value within the game or group.

- `object` - The given object name tag to set a new order position value to.
- `order` - The new order position set to.
- `group` - An optional parameter, the group instance variable to be reordering objects.

Example:
> In this example, we've created both graphic sprites with different colors. The graphic sprite `myAwesomeSprite1` has been set to order position $7$. This will make `myAwesomeSprite2` to be shove down to the order position. Thus causing the first graphic sprite to be in front.
```lua
makeLuaSprite('myAwesomeSprite1', nil, 0, 0)
makeGraphic('myAwesomeSprite1', 100, 100, 'ff0000')
setProperty('myAwesomeSprite1.camera', instanceArg('camHUD'), false, true)
setObjectOrder('myAwesomeSprite1', 7)
addLuaSprite('myAwesomeSprite1')
     
makeLuaSprite('myAwesomeSprite2', nil, 0, 50)
makeGraphic('myAwesomeSprite2', 100, 100, '00ff00')
setProperty('myAwesomeSprite2.camera', instanceArg('camHUD'), false, true)
addLuaSprite('myAwesomeSprite2')
```

### getObjectOrder(object:String, ?group:String = null):Int
<ins>Gets the given object's current order position</ins> value within the game or group. 

- `object` - The given object name tag to get its current order position value from.
- `group` - An optional parameter, the group instance variable to be getting the object's current order position.

Example:
> This example is the same as last before, but sets the order position of the `myAwesomeSprite1` to the current order position of `myAwesomeSprite2`. Then adding $1$ for good measure.
```lua
makeLuaSprite('myAwesomeSprite1', nil, 0, 0)
makeGraphic('myAwesomeSprite1', 100, 100, 'ff0000')
setProperty('myAwesomeSprite1.camera', instanceArg('camHUD'), false, true)
setObjectOrder('myAwesomeSprite1', getObjectOrder('myAwesomeSprite2') + 1)
addLuaSprite('myAwesomeSprite1')
     
makeLuaSprite('myAwesomeSprite2', nil, 0, 50)
makeGraphic('myAwesomeSprite2', 100, 100, '00ff00')
setProperty('myAwesomeSprite2.camera', instanceArg('camHUD'), false, true)
addLuaSprite('myAwesomeSprite2')
```

### objectsOverlap(object1:String, object2:String):Bool
Checks whether <ins>two given objects are overlapping to each other</ins> or not.

- `object1` - The first given object name tag to overlap with.
- `object2` - The second given object name tag to overlap with.

Example:
> Checks whether both of these graphic sprites are overlapping to each other, if overlapped. The `myAwesomeSprite2` will be moved until, they are not overlapped to each other.
```lua
makeLuaSprite('myAwesomeSprite1', nil, 0, 0)
makeGraphic('myAwesomeSprite1', 100, 100, 'ff0000')
setProperty('myAwesomeSprite1.camera', instanceArg('camHUD'), false, true)
addLuaSprite('myAwesomeSprite1')
     
makeLuaSprite('myAwesomeSprite2', nil, 0, 50)
makeGraphic('myAwesomeSprite2', 100, 100, '00ff00')
setProperty('myAwesomeSprite2.camera', instanceArg('camHUD'), false, true)
addLuaSprite('myAwesomeSprite2')

function onUpdate(elapsed)
     if objectsOverlap('myAwesomeSprite1', 'myAwesomeSprite2') == true then
          setProperty('myAwesomeSprite2.y', getProperty('myAwesomeSprite2.y') + 1)
     end
end
```

***

# Scale Functions
### setGraphicSize(object:String, x:Float, y:Float = 0, updateHitbox:Bool = true):Void
Sets the given <ins>object's graphic dimension in pixels</ins> by using scale.

- `object` - The given object name tag to set its graphic dimension.
- `x` - The new width dimension value to set to.
- `y` - An optional parameter, the new height dimension value to set to; Default value: `0`.
- `updateHitbox` - An optional parameter, Whether it will update the object's dimension and offsets; Default value: `true`.

Example:
> Changes the current sprite's graphic dimension to $2$, making it way to small.
```lua
makeLuaSprite('myAwesomeSprite', nil, 0, 0)
makeGraphic('myAwesomeSprite', 100, 100, '9003fc')
setProperty('myAwesomeSprite.camera', instanceArg('camHUD'), false, true)
setGraphicSize('myAwesomeSprite', 2, 2)
addLuaSprite('myAwesomeSprite')
```

### scaleObject(object:String, x:Float, y:Float, updateHitbox:Bool = true):Void
Sets the given <ins>object's graphic by size property</ins>. If below `1`, zoom-out; if above `1`, zoom-in.

- `object` - The given object name tag to set its graphic size.
- `x` - The new width size value to set to.
- `y` - An optional parameter, The new height size value to set to; Default value: `0`.
- `updateHitbox` - An optional parameter, Whether it will update the object's dimension and offsets; Default value: `true`.

Example:
> Changes the current sprite's graphic size to $2$, making it way to big.
```lua
makeLuaSprite('myAwesomeSprite', nil, 0, 0)
makeGraphic('myAwesomeSprite', 100, 100, '9003fc')
setProperty('myAwesomeSprite.camera', instanceArg('camHUD'), false, true)
scaleObject('myAwesomeSprite', 2, 2)
addLuaSprite('myAwesomeSprite')
```

### updateHitbox(object:String):Void
Whether it will <ins>update the object's width and height dimension and offsets.</ins> Must be used for changing the object's graphic size.

- `object` - The given object name tag to update the dimension and offsets.

***

# Precaching Functions
### addCharacterToList(json:String, characterType:String):Void
<ins>Adds the given character to prechache</ins> for optimization purposes. This is a must for changing characters mid-game to prevent lag spikes, especially the "Change Character" event.

- `json` - The given character's JSON file to load and prechache; starts within the `characters` folder directory.
- `characterType` - The specified character type to set precache; Can be either: `boyfriend`, `dad`, or `gf`.

Example:
> Prechaches the given boyfriend character.
```lua
addCharacterToList('bf-car', 'boyfriend')
```

### precacheImage(sprite:String, ?allowGPU:Bool = true):Void
Precaches the <ins>object's image graphic</ins>.

- `sprite` - The given object's image sprite graphic to precache; starts within the `images` folder directory.
- `allowGPU` - An optional parameter, whether to enabled GPU caching or not; Default value: `true`.

### precacheSound(sound:String):Void
Precaches the <ins>sound</ins>.

- `sound` - The given sound to precache; starts within the `sounds` folder directory.

### precacheMusic(music:String):Void
Precaches the <ins>music</ins>.

- `music` - The given music to precache; starts within the `music` folder directory.

***

# Midpoint Functions
### getGraphicMidpointX(object:String):Float
Gets the given <ins>object's sprite graphic midpoint by **x-position** value</ins> within the world coordinates.

- `object` - The given object sprite name tag to get its current graphic midpoint.

### getGraphicMidpointY(object:String):Float
Gets the given <ins>object's sprite graphic midpoint by **y-position** value</ins> within the world coordinates.

- `object` - The given object sprite name tag to get its current midpoint.

### getMidpointX(object:String):Float
Gets the given <ins>object's midpoint by **x-position** value</ins> within the world coordinates.

- `object` - The given object name tag to get its current midpoint.

### getMidpointY(object:String):Float
Gets the given <ins>object's midpoint by **y-position** value</ins> within the world coordinates.

- `object` - The given object name tag to get its current midpoint.

***

# Screen Positioning Functions
### screenCenter(object:String, pos:String = 'xy')
<ins>Centers the given object's on the screen</ins>, centering can be either by the x-axis, y-axis, or both.

> [!WARNING]
> _When an object has been centered to the screen, it makes it impossible to set a new position value to it. Depending on what axis you'd use_

- `object` - The given object name tag to center it on the screen.
- `pos` - An optional parameter, the specified screen position to set in; Can be either: `x`, `y` or `xy`; Default value: `xy`.

Example:
> Centers the given graphic sprite by x-axis, but changes the y-position of the sprite.
```lua
makeLuaSprite('myAwesomeSprite', nil, 0, 0)
makeGraphic('myAwesomeSprite', 100, 100, '9003fc')
setProperty('myAwesomeSprite.camera', instanceArg('camHUD'), false, true)
screenCenter('myAwesomeSprite', 'x')
addLuaSprite('myAwesomeSprite')

setProperty('myAwesomeSprite', 100)
```

### getScreenPositionX(object:String, ?camera:String = 'camGame'):Float
Gets the given object's <ins>current screen **x-position** value</ins>.

- `object` - The given object name tag to get its current screen position.
- `camera` - An optional parameter, the specified camera state to apply to; Can be either: `camGame`, `camHUD` or `camOther`;<br>Default value: `camGame`.

### getScreenPositionY(object:String, ?camera:String):Float
Gets the given object's <ins>current screen **y-position** value</ins>.

- `object` - The given object name tag to get its current screen position.
- `camera` - An optional parameter, the specified camera state to apply to; Can be either: `camGame`, `camHUD` or `camOther`;<br>Default value: `camGame`.

# Miscellaneous Functions
### setScrollFactor(object:String, scrollX:Float, scrollY:Float):Void
Sets the given object's scroll factor value.

- `object` - The given object name tag to set a new scroll factor value to.
- `scrollX` - The amount of scroll factor by x value to set to.
- `scrollY` - The amount of scroll factor by y value to set to.

Example:
> Makes the graphic sprite scroll faster when switching camera positions.
```lua
makeLuaSprite('myAwesomeSprite', nil, 0, 400)
makeGraphic('myAwesomeSprite', 100, 100, '9003fc')
setScrollFactor('myAwesomeSprite', 2, 2)
addLuaSprite('myAwesomeSprite')
```

### setObjectCamera(object:String, camera:String = 'game'):Bool
Sets the given object's camera state to apply to.

> [!WARNING]
> _Due to version <kbd>1.0</kbd>, this function is completely broken, a workaround for this, is use this:_
```lua
setProperty('object.camera', instanceArg('camera'), false, true)
```

- `object` - The given object name tag to set a new camera state to.
- `camera` - An optional parameter, the specified camera state to apply to; Can be either: `camGame`, `camHUD` or `camOther`;<br>Default value: `camGame`.

Example:
> Changes the graphic sprite's camera state.
```lua
makeLuaSprite('myAwesomeSprite', nil, 0, 50)
makeGraphic('myAwesomeSprite', 100, 100, '00ff00')
setProperty('myAwesomeSprite.camera', instanceArg('camHUD'), false, true) -- changes camera state
addLuaSprite('myAwesomeSprite')
```