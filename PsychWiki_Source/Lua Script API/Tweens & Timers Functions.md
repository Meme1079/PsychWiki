# Tween Functions
### startTween(tag:String, vars:String, values:Any = null, duration:Float, options:Any = null)
Starts a tween in any value(s) to an object or note.

- `tag` - The tag name for the tween function to referenced.
- `vars` - The object or note name for the tween function to referenced.
- `values` - The target value(s) for the tween function to end; Example: `{angle = 360, alpha = 0}`.
- `duration` - The duration length for the tween function to end.
- `options` - Other option properties for the tween to use; Example: `{ease = 'linear', type = 'PINGPONG'}`.
    
<details><summary><b>Options Sub-Parameters:</b></summary>
<p>

- `type` - The type of tween to use, it can choose one of these.
     - `ONESHOT` - Stops and removes itself from its core container when it finishes.
     - `PERSIST` - Stops when it finishes. Unlike `ONESHOT`, this type of tween stays attached to the core container when it finishes.
     - `LOOPING` - Restarts immediately when it finishes
     - `PINGPONG` - Plays tween "hither and thither". This is like `LOOPING`, but every second execution is in reverse direction.
     - `BACKWARD` - Plays tween in reverse direction.
- `ease` - The specific ease type to play; Examples: `linear`, `sineIn`, `bounceOut`, etc.
- `startDelay` - Time to wait before starting this tween, in seconds
- `loopDelay` - Time to wait before this tween is repeated, in seconds. This only applies to `LOOPING` and `PINGPONG`.
- `onUpdate` -
- `onStart` -
- `onComplete` -

</p>
</details>

## Objects
### doTweenX(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
### doTweenY(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
### doTweenAngle(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
### doTweenAlpha(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
### doTweenColor(tag:String, vars:String, targetColor:String, duration:Float, ease:String)

## Strum/Receptors
### noteTweenX(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
### noteTweenY(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
### noteTweenAngle(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
### noteTweenAlpha(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
### noteTweenDirection(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)

***

# Other Tween & Timer Functions
### runTimer(tag:String, time:Float = 1, loops:Int = 1)
Runs a timer.

- `tag` - The timer tag name to be used; Will be called at `onTimerCompleted()` function.
- `time` - The duration length of the timer to end; Defualt value: `1`.
- `loops` - How many loops will the timer execute; Defualt value: `1`.

### cancelTimer(tag)
Cancels the <ins>timer</ins> that is running.

- `tag` - The timer tag name to be used.

### cancelTween(tag)
Cancels the <ins>tween</ins> that is running.

- `tag` - The tween tag name to be used.

***

# Eases References