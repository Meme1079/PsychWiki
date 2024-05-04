# Tween Functions
### startTween(tag:String, vars:String, values:Any = null, duration:Float, options:Any = null)
Starts a tween on the object's properties.

> [!WARNING] 
> _This function does not automatically call `onTweenCompleted()` when the tween is finished. You have to add the onComplete callback manually, example is shown below; This also allows you to put custom function names for when the tween is completed_.

- `tag` - The tag name for the tween function to reference.
- `vars` - The object for the tween function to reference.
- `values` - The object properties to tween, must be a table dictionary; Example: `{angle = 360, alpha = 0}`; Default value: `nil`.
- `duration` - The duration length for the tween function to end.
- `options` - Other option properties for the tween to use, must be a table dictionary; Example: `{ease = 'linear', type = 'PINGPONG', onComplete = 'onTweenCompleted'}`; Default value: `nil`.

It is also possible to tween PlayState's variables by setting the `vars` value as `this`:
```lua
local tag_valParam = {songLength = 215000, defaultCamZoom = 1.2, ['camGame.zoom'] = 1.2}
local tag_optnParam = {ease = 'linear', onComplete = 'onTweenCompleted'}
startTween('tag', 'this', tag_valParam, 1, tag_optnParam)
```

<details><summary><b>Options Sub-Parameters:</b></summary>
<p>

- `type` - Determines the type of tween to use, it can be one of these types:
     - `ONESHOT` - Will stop and remove itself from the core container when finished.
     - `PERSIST` - Will stop when finished, but unlike `ONESHOT`. It will always stay attached to the core container.
     - `LOOPING` - As the name suggests, will restart when the tween is finished playing.
     - `PINGPONG` - Plays a "hither and thither" tween animation. It's like `LOOPING` but every second execution is in reverse direction.
     - `BACKWARD` - Plays the tween animation in the reverse direction, duh.
- `ease` - The specific [ease](https://github.com/ShadowMario/FNF-PsychEngine/blob/experimental/source/psychlua/LuaUtils.hx#L335C1-L371C59) type to play; Examples: `linear`, `sineIn`, `bounceOut`, etc.
- `startDelay` - How many seconds to wait before the tween will play.
- `loopDelay` - How many seconds to wait before the tween loops again; Only applies to `LOOPING` & `PINGPONG` types.
- `onUpdate` - What function to execute on each frame that the tween is active.
- `onStart` - What function to execute when the tween starts playing.
- `onComplete` - What function to execute when the tween finishes playing.

</p>
</details>

## Objects
### doTweenX(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
Does a tween on the object's <ins>x position value</ins>.

- `tag` - The tag name for the tween function to reference; Will be called to the `onTweenCompleted()` function after finishing.
- `vars` - The object or note name for the tween function to reference.
- `value` - The target x position value for the tween function to reference.
- `duration` - The duration length for the tween function to end
- `ease` - The specific [ease](https://github.com/ShadowMario/FNF-PsychEngine/blob/experimental/source/psychlua/LuaUtils.hx#L335C1-L371C59) type to play; Examples: `linear`, `sineIn`, `bounceOut`, etc.

### doTweenY(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
Does a tween on the object's <ins>y position value</ins>.

### doTweenAngle(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
Does a tween on the object's <ins>angle value</ins>.

### doTweenAlpha(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
Does a tween on the object's <ins>alpha/opacity alue</ins>.

### doTweenColor(tag:String, vars:String, targetColor:String, duration:Float, ease:String)
Does a tween on the object's <ins>hex color alue</ins>.

- `targetColor` - The target color value for the tween function to end.

### doTweenZoom(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
Does a tween on the camera's <ins>zoom value</ins>.

- `vars` - The camera state to be set in; Can be either: `camGame`, `camHUD` or `camOther`.

## Strum/Receptors
### noteTweenX(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
Does a tween on the strum's <ins>x position value</ins>.

- `tag` - The tag name for the tween function to reference; Will be called to the `onTweenCompleted()` function after finishing.
- `note` - The member ID of the strum for the tween function to use; Opponent: `0,1,2,3`; Player: `4,5,6,7`.
- `value` - The target x position value for the tween function to reference.
- `duration` - The duration length for the tween function to end
- `ease` - The specific [ease](https://github.com/ShadowMario/FNF-PsychEngine/blob/experimental/source/psychlua/LuaUtils.hx#L335C1-L371C59) type to play; Examples: `linear`, `sineIn`, `bounceOut`, etc.

### noteTweenY(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
Does a tween on the strum's <ins>y position value</ins>.

### noteTweenAngle(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
Does a tween on the strum's <ins>angle value</ins>.

### noteTweenAlpha(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
Does a tween on the strum's <ins>alpha/opacity value</ins>.

### noteTweenDirection(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
Does a tween on the strum's <ins>receptor direction value</ins>.

***

# Other Tween & Timer Functions
### runTimer(tag:String, time:Float = 1, loops:Int = 1)
Runs a timer; When finished, the tag from the `tag` parameter will be called to the `onTimerCompleted()` function.

- `tag` - The tag name for the timer to be given.
- `time` - The duration length of the timer to end; Default value: `1`.
- `loops` - How many loops will the timer execute; Default value: `1`. _(Put 0 to loop indefinitely)_

### cancelTimer(tag)
Cancels the <ins>timer</ins> that is currently running.

- `tag` - The timer tag name to cancel.

### cancelTween(tag)
Cancels the <ins>tween</ins> that is running.

- `tag` - The tween tag name to cancel.
