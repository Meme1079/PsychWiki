[Click here to see the list of Tween Eases.](https://api.haxeflixel.com/flixel/tweens/FlxEase.html)

# Starting Timer/Tween Functions
### doTweenX(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
This will change the x value of the object with a tween. If you use the same tag this will cancel the tween.

If the tween is finish it will do a callback to [onTweenCompleted()](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Callback-Templates#ontweencompletedtag:~:text=many%20are%20remaining-,onTweenCompleted(tag),-A%20tween%20you)

- `tag` - If the tween has been completed this do a callback of `onTweenCompleted()`.
- `vars` - The object tag or object variable name.
- `value` - The new value to be set for tween to end.
- `duration` - The amount of time that the tween will last.
- `ease` - The ease that will be played on the tween, for more examples go to the link on top.

Example: `doTweenX('bfScaleTweenX', 'boyfriend.scale', 1.5, 1, 'elasticInOut')` This will tween boyfriend scale to `1.5`.

### doTweenY(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
This will change the y value of the object with a tween, works the same as `doTweenX()`.

### doTweenAngle(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
This will change the angle value of the object with a tween.

### doTweenAlpha(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
This will change the alpha or opacity value of the object with a tween.

### doTweenZoom(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
This will change the zoom value of the object with a tween.

- `vars` - Instead with a object tag or object variable name it should be either: `camGame`, `camHUD` or `camOther`.

Example: `doTweenZoom('camTween', 'camGame', 3, 1, 'linear')` This will tween the cam to zoom in, after that it will return back to normal.

### doTweenColor(tag:String, vars:String, targetColor:String, duration:Float, ease:String)
This will change the color value of the object with a tween. **(Must be a Hexadecimal Color Code)**

- `targetColor` - The color the object will have when the tween ends 

Example: `doTweenColor('bfColorTween', 'boyfriend', 'FF0000', 1, 'linear')` This will tween boyfriend color to red.

### runTimer(tag:String, time:Float = 1, loops:Int = 1)
Runs a timer with a determined duration and loops count. If you use the same tag this will cancel the tween.

- `tag` - If the tween has been completed this do a callback of `onTweenCompleted()`.
- `time` - An optonal value, how much duration until it will end the timer, Default value is `1`
- `loops` - An optional value, how many loops should it do. If set to `0` it will loop infinitely, Default value is `1`.

# Tween Functions for Strum/Receptors
### noteTweenX(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
This will change the x value of the note with a tween, works the same as `doTweenX()`.

- `tag` - Once the tween is finished, it will do a callback of `onTweenCompleted(tag)`
- `note` - The Member ID of the note to be tween, Opponent: `0,1,2,3` and Player: `4,5,6,7`.
- `value` - Target value on the tween end
- `duration` -  The amount of time that the tween will last.
- `ease` - The ease that will be played on the tween, for more examples go to the link on top.

Example: `noteTweenX('note4TweenX', 4, 250, 1.5, 'linear')` This will tween bf left note to `250`.

### noteTweenY(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
This will change the y value of the note with a tween.

### noteTweenAngle(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
This will change the angle value of the note with a tween.

### noteTweenAlpha(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
This will change the alpha or opacity value of the note with a tween.

### noteTweenDirection(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
This will change the direction value of the note that will be coming to the note strum with a tween.

Example: `noteTweenDirection('note5TweenDirection', 5, 0, 1.5, 'linear')` This will make the note come to the left

***

# Cancelling Timer/Tween Functions
### cancelTween(tag)
Cancles the tween that is playing currently.

### cancelTimer(tag)
Cancles the timer that is playing currently.