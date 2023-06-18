# Tween Functions for Objects
> **Note**: _If the tween is finished, the `tag` parameter will be called at `onTimerCompleted()` function, this rule is applied to all `tag` parameters._

If you want a complete ease type list, click here to see the list of [Tween Eases](https://api.haxeflixel.com/flixel/tweens/FlxEase.html).

### doTweenX(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
Does an object tween on the <ins>x position value</ins>.

- `tag` - The tag name for the tween function to use.
- `vars` - The object name for the tween function to use.
- `value` - The target value for the tween function to end.
- `duration` - The duration length for the tween function to end.
- `ease` - The specific ease type to play; Examples: `linear`, `sineIn`, `bounceOut`, etc.

Example: `doTweenX('boyfriendTweeny', 'boyfriend.scale', 1000, 3, 'sineIn')` this will tween the scale at the x axis value of boyfriend from the hit game Friday Night Funkin', same works with `doTweenY()` if you even try <ins>other tweens it will not work</ins>.

### doTweenY(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
Does an object tween on the <ins>y position value</ins>.

### doTweenAngle(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
Does an object tween on the <ins>angle position value</ins>.

### doTweenAlpha(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
Does an object tween on the <ins>alpha/opacity value</ins>.

- `value` - The target value for the tween function to end; Goes from `0` to `1`.

### doTweenZoom(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
Does an object tween on the <ins>zoom value</ins>.

- `vars` - The camera state to be used can be either: `camGame`, `camHUD`, or `camOther`.

### doTweenColor(tag:String, vars:String, targetColor:String, duration:Float, ease:String)
Does an object tween on the <ins>color value</ins>.

> **Warning**: _If you try to attempted to use the same `tag` name, it will cancel the tween itself._

- `targetColor` - The new hex color value to be set.

***

# Tween Functions for Strum/Receptors
### noteTweenX(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
Does a note tween on the <ins>x position value</ins>.

- `tag` - The tag name for the tween function to use.
- `note` - The member ID of the note for the tween function to use, Opponent: `0,1,2,3` and Boyfriend: `4,5,6,7`.
- `value` - The target value for the tween function to end.
- `duration` - The duration length for the tween function to end.
- `ease` - The specific ease type to play; Examples: `linear`, `sineIn`, `bounceOut`, etc.

### noteTweenY(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
Does a note tween on the <ins>y position value</ins>.

### noteTweenAngle(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
Does a note tween on the <ins>angle position value</ins>.

### noteTweenAlpha(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
Does a note tween on the <ins>alpha/opacity value</ins>.

### noteTweenDirection(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
Does a note tween on the <ins>receptors direction value</ins>.

***

# Other Tween/Timer Functions
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