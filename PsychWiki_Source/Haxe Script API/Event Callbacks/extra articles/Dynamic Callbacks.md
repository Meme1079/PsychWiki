# About
Dynamic callbacks are a special unqiue callbacks that are only exclusive to HScripts entirely. They have the ability to override the original functionality of the callback. Meaning you can change the callback functionality with your own custom functionality. You can do this by utilizing the dynamic callback that you're using and reassigning it with its new functions content, with its given parameters if included.

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

# Dynamic Functions
### game.updateScore(miss:Bool = false):Void
Updates every score rating calculations, such as hitting or missing notes.

- `miss` - An optional parameter, whether the player misses a note or not.

### game.updateIconsScale():Void
Updates the icon scaling on each beat from both the player and opponent.

### game.updateIconsPosition():Void
Updates the icon positions from both the player and opponent.

### game.updateScoreText():Void
Updates the current score text content when changing any of its rating calculations, that's it.

### game.fullComboFunction():Void
Updates the current score rating combo names.