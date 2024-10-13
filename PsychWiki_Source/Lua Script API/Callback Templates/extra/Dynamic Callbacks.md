# About
Dynamic callbacks are special callbacks that are only exclusive to HScript or in the `runHaxeCode()` function. They have the ability to override the original functionality of the callback, meaning you can change the callback functionality. You can do this by using any dynamic callback and reassigning it with its new functions content, with the given parameters if included.

Example:
> Instead of updating the positions depending on the health. The icons will now update on these positions and stay static. You can even make the function empty if you don't want it to do anything.
```haxe
function onCreatePost() {
     game.updateIconsPosition = function() {
          game.iconP1.x = 314;
          game.iconP2.x = 114;
     }
}
```

***

# Available Dynamic Callbacks
## PlayState
- `game` - Prefix path for the `PlayState` class.

### updateIconsPosition()
Updates the current icon position for both the player and opponent.

### updateIconsScale(elapsed:Float)
Updates the current icon scaling per beat for both the player and opponent.

- `elapsed` - Every current frame display in milliseconds; Shortcut to `getPropertyFromClass('flixel.FlxG', 'elapsed')`.

### updateScore(miss:Bool)
Updates the current score's text.

- `miss` - Whether the player misses or not, returns `true` if missed.

### fullComboFunction()
Updates the current score's rating combo name.

## FPSCounter
- `Main.fpsVar` - Prefix path for the `FPSCounter` class.

### updateText()
Updates the current frame per second (FPS) text in the top-left corner of the screen.

## Discord
- `DiscordClient` - Prefix path for the `Discord` class.

### shutdown()
Activates when the game window is closed.