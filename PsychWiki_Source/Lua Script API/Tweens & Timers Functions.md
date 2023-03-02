# Tween Functions for Objects
### doTweenX(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
Does an object tween on the <ins>x position value</ins>. 

If the tween is finished the `tag` parameter will be called at `onTimerCompleted()` function, this rule is applied to all `tag` parameters.

- `tag` - The tween tag name to be used.
- `vars` - The object tag name to be used.
- `value` - The new state value to be set.
- `duration` - The duration length of the tween to end.
- `ease` - The type of ease to be used, Example: `linear`, `sineIn`, `bounceOut`, etc.

If you want more ease examples, click here to see the list of [Tween Eases](https://api.haxeflixel.com/flixel/tweens/FlxEase.html).

Example: `doTweenX('boyfriendTweeny', 'boyfriend.scale', 1000, 3, 'sineIn')` this will tween the scale at the x axis value of boyfriend from the hit game Friday Night Funkin', same works with `doTweenY()` if you even try <ins>other tweens it will not work</ins>.

### doTweenY(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
Does an object tween on the <ins>y position value</ins>. This function acts the same as `doTweenX()` function, just to let you know dummy.

Also I'm not repeating parameters because it looks disgusting to my eyes maybe, even your eyes. Unless there something different about them.

### doTweenAngle(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
Does an object tween on the <ins>angle value</ins>.

### doTweenAlpha(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
Does an object tween on the <ins>opacity value</ins>.

### doTweenZoom(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
Does an object tween on the <ins>camera zoom value</ins>.

- `vars` - The camera state to be used can be either: `camGame`, `camHUD`, or `camOther`.

### doTweenColor(tag:String, vars:String, targetColor:String, duration:Float, ease:String)
Does an object tween on the <ins>color value</ins>.

- `targetColor` - The new hex color value to be set.

# Tween Functions for Strum/Receptors
### noteTweenX(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
Does a note & strum tween on the <ins>x position value</ins>.

- `tag` - The tween tag name to be used.
- `note` - The member ID of the note to be used, Opponent: `0,1,2,3` and Boyfriend: `4,5,6,7`.
- `value` - The new state value to be set.
- `duration` - The duration length of the tween to end.
- `ease` - The type of ease to be used, Example: `linear`, `sineIn`, `bounceOut`, etc.

### noteTweenY(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
Does a note & strum tween on the <ins>y position value</ins>.

### noteTweenAngle(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
Does a note & strum tween on the <ins>angle value</ins>.

### noteTweenAlpha(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
Does a note & strum tween on the <ins>alpha value</ins>.

### noteTweenDirection(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
Does a note & strum tween on the <ins>receptor direction</ins>.

# Other Tween/Timer Functions
### runTimer(tag:String, time:Float = 1, loops:Int = 1)
Creates a timer.

- `tag` - The timer tag name to be used; Will be called at `onTimerCompleted()` function.
- `time` - The duration length of the timer to end.
- `loops` - How many loops will the timer execute.

### cancelTimer(tag)
Cancels the <ins>timer</ins> that is running.

- `tag` - The timer tag name to be used.

### cancelTween(tag)
Cancels the <ins>tween</ins> that is running.

- `tag` - The tween tag name to be used.