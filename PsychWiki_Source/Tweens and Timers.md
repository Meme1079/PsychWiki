[Click here to see the list of Tween Eases.](https://api.haxeflixel.com/flixel/tweens/FlxEase.html)

# Tween Functions for Strum/Receptors
### noteTweenX(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
It changes the Note X value with a tween

- `tag` - Once the tween is finished, it will do a callback of `onTweenCompleted(tag)`
- `note` - The note you want to do on a tween, Opponent: `0,1,2,3` and Player: `4,5,6,7`
- `value` - Target value on the tween end
- `duration` - How much time it will take for the tween to end
- `ease` - The easing of the tween, Example: `linear`, `cubeOut` for more examples go to the link on top

Example: `noteTweenX('noteX4', 4, 250, 1.5, 'linear')` This will tween bf left note to `250`

### noteTweenY(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
It changes the Note Y value with a tween, basically works the same with `noteTweenX`

### noteTweenAngle(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
It changes the Note Angle value with a tween

### noteTweenAlpha(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
It changes the Note Alpha value with a tween

### noteTweenDirection(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
It changes the Note Direction of the `notes` going to the strums value with a tween

Example: `noteTweenDirection('noteDir5', 5, 0, 1.5, 'linear')` This will make the note come to the left

***

# Starting Timer/Tween Functions
### doTweenX(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
It changes the Object's X value with a tween. Calling this function will cancel another tween that is using the same tag!

If the tween is finish it will do a callback to [onTweenCompleted()](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Callback-Templates#ontweencompletedtag:~:text=many%20are%20remaining-,onTweenCompleted(tag),-A%20tween%20you)

- `tag` - Once the tween is finished, it will do a callback of `onTweenCompleted(tag)`
- `vars` - The variable you want to do on a tween
- `value` - Target value on the tween end
- `duration` - How much time it will take for the tween to end
- `ease` - The easing of the tween, Example: `'linear', 'cubeOut'` for more examples go to the link on top

Example: `doTweenX('bfScaleTweenX', 'boyfriend.scale', 1.5, 1, 'elasticInOut')` This will tween boyfriend scale to `1.5`

### doTweenY(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
It changes the Object's Y value with a tween, Works exactly like doTweenX

### doTweenAngle(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
It changes the Object's Angle value with a tween

### doTweenAlpha(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
It changes the Object's Alpha value with a tween

### doTweenZoom(tag:String, vars:String, value:Dynamic, duration:Float, ease:String)
It changes the Object's Zoom value with a tween

- `vars` - Instead with a variable it should be either: `camGame`, `camHUD` or `camOther`

Example: `doTweenZoom('camTween', 'camGame', 3, 1, 'linear')` This will tween the cam to zoom in after that it will return back to normal

### doTweenColor(tag:String, vars:String, targetColor:String, duration:Float, ease:String)
It changes the Object's Color value with a tween

- `targetColor` - The color the object will have when the tween ends **(Must be a Hexadecimal Color)**

Example: `doTweenColor('bfColorTween', 'boyfriend', 'FF0000', 1, 'linear')` This will tween boyfriend color to red

### runTimer(tag:String, time:Float = 1, loops:Int = 1)
Runs a timer with a determined duration and loops count.

Calling this function will cancel another timer that is using the same tag!

- `tag` - Once the timer is finished, it will do a callback of `onTimerCompleted(tag, loops, loopsLeft)`
- `time` - Optional value, how much time it takes to finish a loop. Default value is `1`
- `loops` - Optional value, how much loops should it do, if it's set to `0`, it will repeat indefinitely. Default value is `1`

***

# Cancelling Timer/Tween Functions
### cancelTween(tag)
Cancels a tween using the `tag`, if there even is one.

### cancelTimer(tag)
Cancels a timer using the `tag`, if there even is one.