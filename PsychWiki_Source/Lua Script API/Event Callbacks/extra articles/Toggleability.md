# About
Event callbacks have a special ability to completely disable their functionality together. This special functionality can be used for creating custom functionality for that callback or just completely disabling it. To disable the callback's functionality completely, just return the `Function_Stop` variable within the said callback to disable.

Other variables similar to `Function_Stop` variable like `Function_StopLua`, `Function_StopHScript`, and `Function_StopAll` can be used here also. They will disable the callback in different scripting languages such as Lua or HScript. For a basic example—returning the `Function_StopLua` variable will disable the said callback in Lua, but not in HScript.

Example:
> This will disable the ability for the game-over screen to appear, if theres no health left.
```lua
function onGameOver()
     return Function_Stop
end
```

***

# Toggleable Callbacks
> [!NOTE]
> _The table section Affected Callbacks, reffer to any affected event callbacks when that callback is disable._

| Event Callbacks 	| Description 	| Affected Callbacks 	| Availability 	|
|---	|---	|---	|---	|
| `onEndSong()` 	| Disables the song to end 	| *None* 	| *Lua*, *HScript* 	|
| `onRecalculateRating()` 	| Disables the rating calculations of the score. 	| *None* 	| *Lua*, *HScript* 	|
| `onGameOver()` 	| Disables the ability of the game-over screen <br>appearing in game. 	| *None* 	| *Lua*, *HScript* 	|
| `onPause()` 	| Disables the ability of pausing the game. 	| *None* 	| *Lua*, *HScript* 	|
| `preUpdateScore()` 	| Disables the score text updating. 	| `onUpdateScore()` 	| *Lua*, *HScript* 	|
| `onStartCountdown()` 	| Disables the starting of the countdown. 	| `onCountdownStarted()` 	| *Lua*, *HScript* 	|
| `goodNoteHit()` 	| Disables the HScript version <br>of the callback from getting triggered. 	| `goodNoteHit()` 	| *Lua* 	|
| `opponentNoteHit()` 	| Disables the HScript version <br>of the callback from getting triggered. 	| `opponentNoteHit()` 	| *Lua* 	|
| `goodNoteHitPre()` 	| Disables the HScript version <br>of the callback from getting triggered. 	| `goodNoteHitPre()` 	| *Lua* 	|
| `opponentNoteHitPre()` 	| Disables the HScript version <br>of the callback from getting triggered. 	| `opponentNoteHitPre()` 	| *Lua* 	|
| `onKeyPressPre()` 	| Disables the input system to work. 	| `onKeyPress()`, `onGhostTap()` 	| *Lua*, *HScript* 	|
| `onKeyReleasePre()` 	| Disables the strum note animations playing. 	| `onKeyRelease()` 	| *Lua*, *HScript* 	|

Examples:
> Plays a video cutscene before the countdown begins immediately. It checks to see whether both the variables `seenCutscene` and `allowCountdown`, a local variable, are either `false` to each-other. If both are `false`, it plays a video followed by setting the local variable `allowCountdown` to `true`, thus re-enabling the callback to start the countdown.
```lua
local allowCountdown = false
function onStartCountdown()
     if allowCountdown == false and seenCutscene == false then
          startVideo('your_cutscene') -- Plays a video cutscene; insert your video file from "videos/name.mp4"
          allowCountdown = true       -- Sets the 'allowCountdown' to true to re-enable the callback
          return Function_Stop        -- Disables the callbacks' functionality
     end
     return Function_Continue         -- Re-enables the callbacks' functionality, after playing the video
end
```

> The callback `onRecalculateRating()`, has been disabled; disabling the rating calculations. Thus making a custom rating calculations for the score, in the code below it uses a reverse accuracy, inaccuracy. This done by modulating the current `totalPlayed` and `totalNotesHit` variables then dividing by the `totalPlayed` variable.
```lua
local function round(num, decimals) -- rounding function
     local mult = 10^(decimals or 0)
     return math.floor(num * mult) / mult
end

function onUpdateScore(miss)
     local totalPlayed   = getProperty('totalPlayed')   -- Gets the total note hits and misses
     local totalNotesHit = getProperty('totalNotesHit') -- Gets the total note hits

     local ratingReverseFormula = totalPlayed % totalNotesHit / totalPlayed         -- reverse accuracy
     local ratingReverse        = math.max(round(ratingReverseFormula * 100, 2), 0) -- rounding and filtering shit
     local newScoreTxt = 'Score: '..score..' | Misses: '..misses..' | '..'Inaccuracy: '..ratingReverse ..'%'
     setProperty('scoreTxt.text', newScoreTxt)
end

function onRecalculateRating()
     return Function_Stop
end
```