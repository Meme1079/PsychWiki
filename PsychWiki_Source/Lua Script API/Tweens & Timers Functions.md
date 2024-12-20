# Tween Functions
### startTween(tag:String, object:String, values:Any = null, duration:Float, options:Any = null):String
Starts a tween on the given object's attributes, returns the given tag.

> [!WARNING] 
> _This function does not automatically call `onTweenCompleted()` when the tween is finished. You have to add the `onComplete` callback manually, example is shown below; This also allows you to put custom function names for when the tween is completed_.

- `tag` - The given unique tag name for the tween to inherit for later use, if both tag names exists it be override by the new one.
- `object` - The given object tag name to be tweened.
- `values` - The multiple object attribute value(s) to tween at the given object, must be using a table dictionary.
- `duration` - The amount of duration length for the tween to end manually.
- `options` - An optional parameter, tween option properties for the tween to utilize with, must be using a table dictionary.

<details><summary><b>Options Sub-Parameters:</b></summary>
<p>

- `type` - The specified type of tween to play at.
     - `ONESHOT` - Will stop and remove the tween from its core container when it finishes.
     - `PERSIST` - Will stop the tween, when it finishes playing.
     - `LOOPING` - Will loop indefinitely onces it finishes playing.
     - `PINGPONG` - Will make the tween play a "hither and thither"; a ping-pong effect, loop indefinitely.
     - `BACKWARD` - Backward Tween type, will play tween in reverse direction
- `onUpdate` - The given function name to call every current frame that the tween is currently active.
- `onStart` - The given function name to call when the tween has started playing.
- `onComplete` - The given function name to call when the tween has finished playing.
- `ease` - The specified [ease](
https://api.haxeflixel.com/flixel/tweens/FlxEase.html) for the tween to play.
- `startDelay` - The amount of delay length in seconds for the tween to wait until it starts.
- `loopDelay` - The amount of delay length in seconds for the tween to wait between intervals before tweening again.

<details><summary><b><code>onUpdate()</code>, <code>onStart()</code>, and <code>onComplete()</code> parameters:</b></summary>
<p>

- `tag` - An optional parameter, the given tween tag name inherited when the tween played. Returns the given tag but formatted to include the prefix `tween_`, for instance: `tween_epicTimer`.
- `object` - An optional parameter, the given object tag name inherited when the tween played.

</p>
</details>

</p>
</details>

Examples:
> Does a tween of the opponent character on its angle and alpha values.
```lua
startTween('dadTween', 'dad', {angle = 360, alpha = 0}, 2, {ease = 'sineInOut'})
```

> Does a tween of the girlfriend character scale by x and y. With an additional delay at the start and each interval of the tween. Including the specified type of tween to play.
```lua
local gfTweenValues  = {x = 3, y = 2}
local gfTweenOptions = {ease = 'sineInOut', type = 'PINGPONG', startDelay = 1, loopDelay = 1.5}
startTween('gfTween', 'gf.scale', gfTweenValues, 3, gfTweenOptions)
```

> Does a tween of the Playstate's instance variables by utilizing the `this` keyword, reffering to an object. 
```lua
local gameTweenValues  = {songLength = 215000, defaultCamZoom = 1.2, ['camGame.zoom'] = 1.2}
local gameTweenOptions = {ease = 'linear'}
startTween('stupidTagOrSmt', 'this', gameTweenValues, gameTweenOptions)
```

> Does a tween of the boyfriend character by its angle-position, color and alpha respectively. Including a code to execute when the tween has finished playing. 
```lua
local bfTweenValues  = {angle = 360 * 2, color = 0xff00ff, alpha = 0.5}
local bfTweenOptions = {ease = 'quintInOut', onComplete = 'onTweenCompleted'}
startTween('bfTween', 'boyfriend', bfTweenValues, 5, bfTweenOptions)

function onTweenCompleted(tag, object)
     if tag == 'tween_bfTween' then
          debugPrint('Finished Circling!!!')
     end
end
```

## Objects
> [!NOTE]
> _The parameters for each callback in this section are listed here. Due to stupid, repetitive copy and paste in each callback description. They all work the same as usual in each callback, If you want to know which parameters are included or not, look at each callbacks title, idiot._

- `tag` - The given unique tag name for the tween to inherit for later use, if both tag names exists it be override by the new one. Once the timer is finished the `onTweenCompleted()` will be called, making it return the given tag name and object tag name.
- `object` - The given object tag name to be tweened.
- `value` - The given target value to tween at the given object.
- `duration` - The amount of duration length for the tween to end manually.
- `ease` - The specified [ease](
https://api.haxeflixel.com/flixel/tweens/FlxEase.html) for the tween to play.

### doTweenX(tag:String, object:String, value:Dynamic, duration:Float, ease:String):Void
Does a <ins>tween at the **x-position**</ins> on the given object.

Example:
> Does a tween on the x-position of the player character.
```lua
doTweenX('bfAwesomeTween', 'boyfriend', 100, 3.6, 'sineInOut')
```

### doTweenY(tag:String, object:String, value:Dynamic, duration:Float, ease:String):Void
Does a <ins>tween at the **y-position**</ins> on the given object.

Example:
> Does a tween on the y-position of the player character.
```lua
doTweenY('bfAwesomeTween', 'boyfriend', -230, 4, 'cubeOut')
```

### doTweenAngle(tag:String, object:String, value:Dynamic, duration:Float, ease:String):Void
Does a <ins>tween at the **angle-position**</ins> on the given object.

Example:
> Does a tween on the angle-position of the girlfriend character, rotating $8$ times.
```lua
doTweenAngle('gfAwesomeTween', 'gf', 360 * 8, 10, 'smoothStepIn')
```

### doTweenAlpha(tag:String, object:String, value:Dynamic, duration:Float, ease:String):Void
Does a <ins>tween at the **alpha (opacity) value**</ins> on the given object.

Example:
> Does a tween on the opacity value of the girlfriend character.
```lua
doTweenAlpha('gfAwesomeTween', 'gf', 0, 3, 'expoOut')
```

### doTweenColor(tag:String, object:String, targetColor:String, duration:Float, ease:String):Void
Does a <ins>tween at the **color value**</ins> on the given object.

- `targetColor` - The given target color value tween at the given object.

Example:
> Does a tween on the color value of a graphic sprite.
```lua
makeLuaSprite('myBlockSprite', nil, 0, 0)
makeGraphic('myBlockSprite', 100, 100, '000000')
setObjectCamera('myBlockSprite', 'camHUD')
addLuaSprite('myBlockSprite')

doTweenColor('myBlockSpriteTween', 'myBlockSprite', 'ffffff', 3, 'circInOut')
```

### doTweenZoom(tag:String, camera:String, zoomValue:Dynamic, duration:Float, ease:String):Void
Does a <ins>tween at the **zoom value**</ins> on the given camera state, once finished return to the current camera zoom value.

- `camera` - The specified camera state to be tweened; Can be either: `camGame`, `camHUD` or `camOther`.
- `zoomValue` - The given target zoom value to tween at the given camera state. If below `1`, zoom-out; if above `1`, zoom-in.

Example:
> Does a zoom-out tween on the camera's zoom value within the game.
```lua
function onBeatHit()
     if curBeat == 2 then
          doTweenZoom('awesomeGameTween', 'camGame', 0.6, 3, 'smootherStepOut')
     end
end
```

## Strum & Receptors
> [!NOTE]
> _The parameters for each callback in this section are listed here. Due to stupid, repetitive copy and paste in each callback description. They all work the same as usual in each callback, If you want to know which parameters are included or not, look at each callbacks title, idiot._

- `tag` - The given unique tag name for the tween to inherit for later use. Once the timer is finished the `onTweenCompleted()` will be called, making it return the given tag name and object tag name.
- `note` - The given member note strum ID to be tweened; From `0` to `3` for the opponent, from `4` to `7` for the player.
- `value` -  The given target value to tween at the given member note strum ID.
- `duration` - The amount of duration length for the tween to end manually.
- `ease` - The specified [ease](
https://api.haxeflixel.com/flixel/tweens/FlxEase.html) for the tween to play; Default value: `linear`.

### noteTweenX(tag:String, note:Int, value:Dynamic, duration:Float, ?ease:String = 'linear'):Void
Does a <ins>tween at the **x-position**</ins> on the given note strum.

Example:
> Does a tween on the x-position of the opponent's right note strum.
```lua
function onCreatePost()
     noteTweenX('awesomeStrumTween', 0, -10, 3, 'sineOut')
end
```

### noteTweenY(tag:String, note:Int, value:Dynamic, duration:Float, ?ease:String = 'linear'):Void
Does a <ins>tween at the **y-position**</ins> on the given note strum.

Example:
> Does a tween on the y-position of the player's right note strum.
```lua
function onCreatePost()
     noteTweenY('awesomeStrumTween', 7, 30, 2.1, 'expoOut')
end
```

### noteTweenAngle(tag:String, note:Int, value:Dynamic, duration:Float, ?ease:String = 'linear'):Void
Does a <ins>tween at the **angle-position**</ins> on the given note strum.

Example:
> Does a tween on the angle-position of the opponent's note strums, rotates $10$ times counterclockwise.
```lua
function onCreatePost()
     for memberID = 0, 3 do
          noteTweenAngle('awesomeStrumTween-'..memberID, memberID, -360 * 10, 10, 'backInOut')
     end
end
```

### noteTweenAlpha(tag:String, note:Int, value:Dynamic, duration:Float, ?ease:String = 'linear'):Void
Does a <ins>tween at the **alpha (opacity) value**</ins> on the given note strum.

Example:
> Does a tween on the opacity value of the player's note strums.
```lua
function onCreatePost()
     for memberID = 4, 7 do
          noteTweenAlpha('awesomeStrumTween-'..memberID, memberID, 0.6, 2, 'smoothStepOut')
     end
end
```

### noteTweenDirection(tag:String, note:Int, value:Dynamic, duration:Float, ?ease:String = 'linear'):Void
Does a <ins>tween at the **receptor direction**</ins> on the given note strum.

Example:
> Does a tween on the receptor direction, making come to the left side on all the note strums.
```lua
function onCreatePost()
     for memberID = 0, 7 do
          noteTweenDirection('awesomeStrumTween-'..memberID, memberID, 180, 2, 'smoothStepOut')
     end
end
```


## Utility
### cancelTween(tag):Void
Cancels a tween that is currently running.

- `tag` - The given tag name to cancel the tweening.

# Timer Functions
### runTimer(tag:String, time:Float = 1, loops:Int = 1):String
Runs a timer, returns the given tag but formatted to include the prefix `timer_`, for instance: `timer_epicTimer`. Once the timer is finished the `onTimerCompleted()` will be called, making it return the given tag name and loop number.

- `tag` - The given unique tag name for the timer to inherit for later use, if both tag names exists it be override by the new one.
- `time` - An optional parameter, the duration length in seconds for the timer to end manually; Default value: `1`.
- `loops` - An optional parameter, the amount of loops will timer have, set to `0` for an infinite loop; Default value: `1`.

Examples:
> Creates a timer that last about $3$ seconds until it will print this message.
```lua
function onCreate()
     runTimer('awesomeTimer', 3)
end

function onTimerCompleted(tag, loops, loopsLeft)
     if tag == 'awesomeTimer' then
          debugPrint('Awesome!!!') --> Awesome!!!
     end
end
```

## Utility
### cancelTimer(tag):Void
Cancels the timer that is currently running.

- `tag` - The given tag name to cancel the timer.

***

# See also
- Event Callbacks