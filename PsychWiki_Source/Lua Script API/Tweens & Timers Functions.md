# Tween Functions
### startTween(tag:String, vars:String, values:Any = null, duration:Float, options:Any = null)
Starts a tween in any value(s) to an object or note.

- `tag` - The tag name for the tween function to referenced.
- `vars` - The object or note name for the tween function to referenced.
- `values` - The target value(s) for the tween function to end; Example: `{angle = 360, alpha = 0}`.
- `duration` - The duration length for the tween function to end.
- `options` - Other option properties for the tween to use; Example: `{ease = 'linear', type = 'PINGPONG'}`.

<!-- <details><summary><b>Options Sub-Parameters:</b></summary>
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
</details>  -->

## Objects
### doTweenX(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
Does a tween in the <ins>x position value</ins> to the object.

- `tag` - The tag name for the tween function to referenced.
- `vars` - The object or note name for the tween function to referenced.
- `value` - The target x position value for the tween function to referenced.
- `duration` - The duration length for the tween function to end
- `ease` - The specific ease type to play; Examples: `linear`, `sineIn`, `bounceOut`, etc.

### doTweenY(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
Does a tween in the <ins>y position value</ins> to the object.

### doTweenAngle(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
Does a tween in the <ins>angle value</ins> to the object.

### doTweenAlpha(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
Does a tween in the <ins>alpha/opacity value</ins> to the object.

### doTweenColor(tag:String, vars:String, targetColor:String, duration:Float, ease:String)
Does a tween in the <ins>hex color value</ins> to the object.

- `targetColor` - The target hex color value for the tween function to end.

## Strum/Receptors
### noteTweenX(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
Does a note tween in the <ins>x position value</ins>.

- `tag` - The tag name for the tween function to referenced.
- `note` - The member ID of the note for the tween function to use, Opponent: `0,1,2,3` and Boyfriend: `4,5,6,7`.
- `value` - The target x position value for the tween function to referenced.
- `duration` - The duration length for the tween function to end
- `ease` - The specific ease type to play; Examples: `linear`, `sineIn`, `bounceOut`, etc.

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
Runs a timer from the `onTimerCompleted()` function.

- `tag` - The timer tag name from the `onTimerCompleted()` function to be referenced.
- `time` - The duration length of the timer to end; Defualt value: `1`.
- `loops` - How many loops will the timer execute; Defualt value: `1`.

### cancelTimer(tag)
Cancels the <ins>timer</ins> that is currently running.

- `tag` - The timer tag name to be used.

### cancelTween(tag)
Cancels the <ins>tween</ins> that is running.

- `tag` - The tween tag name to be currently used.