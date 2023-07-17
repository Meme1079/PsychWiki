# Tween Functions
### startTween(tag:String, vars:String, values:Any = null, duration:Float, options:Any = null)
Starts a tween in any value(s) to an object or note.

- `tag` - The tag name for the tween function to referenced.
- `vars` - The object or note name for the tween function to referenced.
- `values` - The target value(s) for the tween function to end; Example: `{angle = 360, alpha = 0}`.
- `duration` - The duration length for the tween function to end.
- `options` - Other option properties for the tween to use; Example: `{ease = 'linear', type = 'PINGPONG'}`.

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

<!-- # Eases References

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
</details> -->

<!-- # Tween Functions for Objects
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

- `tag` - The tween tag name to be used. -->

<!-- 

/*
source/psychlua/HScript.hx:131: 
*/

corn = { 
     mods/scripts/hstest2.lua:spawnPosY => 100, 
     FlxEase => flixel.tweens.FlxEase, 
     createCallback => Object, 
     CustomSubstate => psychlua.CustomSubstate, 
     removeVar => Object, 
     false => false, 
     setVar => Object, 
     ClientPrefs => backend.ClientPrefs, 
     trace => Object, 
     Conductor => backend.Conductor, 
     null => null, 
     mods/scripts/hstest2.lua:update => Object, 
     Character => objects.Character, 
     mods/scripts/hstest1.lua:update => Object, 
     StringTools => StringTools, 
     FlxRuntimeShader => flixel.addons.display.FlxRuntimeShader, 
     mods/scripts/hstest1.lua:parentLua => FunkinLua, 
     true => true, 
     Paths => backend.Paths, 
     getVar => Object, 
     game => (active: true | visible: true | alive: true | exists: true), 
     FlxTimer => flixel.util.FlxTimer, 
     Alphabet => objects.Alphabet, 
     addHaxeLibrary => Object, 
     FlxG => flixel.FlxG, 
     FlxCamera => flixel.FlxCamera, 
     FlxSprite => flixel.FlxSprite, 
     FlxTween => flixel.tweens.FlxTween, 
     debugPrint => Object, 
     mods/scripts/hstest2.lua:create => Object, 
     mods/scripts/hstest1.lua:create => Object, 
     PlayState => states.PlayState, 
     ShaderFilter => openfl.filters.ShaderFilter, 
     mods/scripts/hstest1.lua:spawnPosX => 770, 
     mods/scripts/hstest2.lua:spawnPosX => 100, 
     mods/scripts/hstest1.lua:spawnPosY => 100 
}

 -->