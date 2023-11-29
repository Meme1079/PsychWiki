# Tween Functions
### startTween(tag:String, vars:String, values:Any = null, duration:Float, options:Any = null)
Starts a tween in any value(s) to an object or note.

- `tag` - The tag name for the tween function to reference; Unlike other tween functions, you MUST manually set the onComplete callback.
- `vars` - The object or note name for the tween function to reference.
- `values` - The target value(s) for the tween function to end; Example: `{angle = 360, alpha = 0}`.
- `duration` - The duration length for the tween function to end.
- `options` - Other option properties for the tween to use; Example: `{ease = 'linear', type = 'PINGPONG'}`.

<details><summary><b>Options Sub-Parameters:</b></summary>
<p>

- `type` - Determines the type of tween animation to use, it can choose one of these.
     - `ONESHOT` - Will stop and removes itself from the core container, when finished.
     - `PERSIST` - Will stop, when finished but unlike `ONESHOT`. It will always stay attached from the core container, when finished.
     - `LOOPING` - As the name suggests, will restart when it's finished playing the tween.
     - `PINGPONG` - Plays a "hither and thither" tween animation. It's like `LOOPING` but every second execution is in reverse direction.
     - `BACKWARD` - Plays the tween animation in the reverse direction, duh.
- `ease` - The specific [ease](https://github.com/ShadowMario/FNF-PsychEngine/blob/experimental/source/psychlua/LuaUtils.hx#L335C1-L371C59) type to play; Examples: `linear`, `sineIn`, `bounceOut`, etc.
- `startDelay` - How many durations to wait before starting to play the tween, in seconds.
- `loopDelay` - How many durations to wait before looping the tween, in seconds; Only applies to `LOOPING` & `PINGPONG` types.
- `onUpdate` - What function to update in each frame for the tween to use.
- `onStart` - What function to execute at the beginning of the song for the tween to use.
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

- `targetColor` - The target hex color value for the tween function to end.

### doTweenZoom(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
Does a tween on the camera's <ins>zoom value</ins>.

- `vars` - The camera state to be set in; Can be either: `camGame`, `camHUD` or `camOther`.

## Strum/Receptors
### noteTweenX(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
Does a note tween in the <ins>x position value</ins>.

- `tag` - The tag name for the tween function to reference; Will be called to the `onTweenCompleted()` function after finishing.
- `note` - The member ID of the note for the tween function to use, Opponent: `0,1,2,3` and Boyfriend: `4,5,6,7`.
- `value` - The target x position value for the tween function to reference.
- `duration` - The duration length for the tween function to end
- `ease` - The specific [ease](https://github.com/ShadowMario/FNF-PsychEngine/blob/experimental/source/psychlua/LuaUtils.hx#L335C1-L371C59) type to play; Examples: `linear`, `sineIn`, `bounceOut`, etc.

### noteTweenY(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
Does a note tween in the <ins>y position value</ins>.

### noteTweenAngle(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
Does a note tween in the <ins>angle value</ins>.

### noteTweenAlpha(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
Does a note tween in the <ins>alpha/opacity value</ins>.

### noteTweenDirection(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
Does a note tween in the <ins>receptors direction value</ins>.

***

# Other Tween & Timer Functions
### runTimer(tag:String, time:Float = 1, loops:Int = 1)
Runs a timer; If finished, the tag from the `tag` parameter will be called to the `onTimerCompleted()` function.

- `tag` - The timer tag name from the `onTimerCompleted()` function to be referenced.
- `time` - The duration length of the timer to end; Default value: `1`.
- `loops` - How many loops will the timer execute; Default value: `1`.

### cancelTimer(tag)
Cancels the <ins>timer</ins> that is currently running.

- `tag` - The timer tag name to be used.

### cancelTween(tag)
Cancels the <ins>tween</ins> that is running.

- `tag` - The tween tag name to be currently used.