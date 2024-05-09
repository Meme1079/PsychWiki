# Start/End Callbacks
### onCreate()
Triggered <ins>every time the script is started</ins>, can be used for creating objects, precaching, property setters/getters; <ins>Some variables</ins> aren't created yet depending on when it is started.

### onCreatePost()
Triggered at the <ins>post/after start of the script</ins>. The <ins>HUD elements and characters</ins> are created here; Will only be triggered once.

### onDestroy()
Triggered when the <ins>script has been closed</ins>.

***

# Gameplay Callbacks
### onStepHit()
Triggered at default <ins>16 times per section</ins>. I'd recommended to use the `curStep` variable here, since it will be called every beat.

### onBeatHit()
Triggered at default <ins>4 times per section</ins>. I'd recommended to use the `curBeat` variable here, since it will be called every beat.

### onSectionHit()
Triggered at max <ins>1 time per section</ins>. I'd recommended to use the `curSection` variable here, since it will be called every beat.

### onRecalculateRating()
Triggered <ins>before the calculation</ins> of the rating. Recommended to use `setRatingPercent()` function for the accuracy percent on the calculation, and the `setRatingName()` function for your epic rating names.

> [!NOTE]
> _`Function_Stop` is able to be used on this callback; Must NOT be returning `Function_Stop` for the rating to be recalculated._

### onMoveCamera(focus)
Triggered when the <ins>camera focuses on a character</ins>; Can either be `boyfriend`, `dad` or `gf`.

- `focus` - The character to check for.

Example:
```lua
function onMoveCamera(focus)
	if focus == 'boyfriend' then
		-- called when the section has Must Hit Section enabled; Aka when the camera focuses to boyfriend.
	elseif focus == 'dad' then
		-- called when the section does not have Must Hit Section enabled; Aka when the camera focuses to dad.
	elseif focus == 'gf' then
		-- called when the section has GF Section enabled; Aka when the camera focuses to gf.
	end
end
```

## Updates
### onUpdate(elapsed)
Triggered <ins>before every frame</ins> in the game.

- `elapsed` - Every frame display in milliseconds; Shortcut to `getPropertyFromClass('flixel.FlxG', 'elapsed')`.

### onUpdatePost(elapsed)
Triggered <ins>every frame</ins> in the game. The HUD elements are updated here.

- `elapsed` - Every frame display in milliseconds; Shortcut to `getPropertyFromClass('flixel.FlxG', 'elapsed')`.

### onUpdateScore(miss)
Triggered <ins>after</ins> the `scoreTxt` text updates.

- `miss` - Checks if the player missed a note; Returns a `boolean`.

### preUpdateScore(miss)
Triggered <ins>before</ins> the `scoreTxt` text updates.

> [!NOTE]
> _`Function_Stop` is able to be used on this callback; Must NOT be returning `Function_Stop` for `scoreTxt` variable to update and for `onUpdateScore()` to be called._

- `miss` - Checks if the player missed a note; Returns a `boolean`.

## Songs
### onSongStart()
Triggered at the <ins>beginning of the song</ins> or at the <ins>completion of the countdown</ins>.

### onEndSong()
Triggered at the <ins>end of the song</ins>, will be <ins>delayed if an achievement is unlocked</ins>; Not to be confused with `onDestroy()`.

> [!NOTE]
> _`Function_Stop` is able to be used on this callback; Must NOT be returning `Function_Stop` for the song to end._

***

# Countdown Callbacks
### onStartCountdown()
Triggered at the <ins>start of the countdown</ins>; Not to be confused with `onCountdownStarted()`.

> [!NOTE]
> _`Function_Stop` is able to be used on this callback; Must NOT be returning `Function_Stop` for the countdown to start and for `onCountdownStarted()` to be called._

### onCountdownStarted()
Triggered at the <ins>post/after start of the countdown</ins>; the <ins>note strums</ins> are created here.

### onCountdownTick(counter)
Triggered every <ins>countdown tick</ins>.

- `counter` - The current countdown tick; Goes from `0` to `4`.

Example:
```lua
function onCountdownTick(counter)
     local counterArray = {'Three', 'Two', 'One', 'Go!', 'The song starts here'}
     debugPrint('Counter Num: '..counter..' | '..counterArray[counter + 1]) 
end
```

Will print:
```terminal
Counter Num: 0 | Three
Counter Num: 1 | Two
Counter Num: 2 | One
Counter Num: 3 | Go!
Counter Num: 4 | The song starts here
```

<details><summary><b>Haxe Exclusive:</b></summary>
<p> 

- `tick` - The current countdown tick in words; Goes from `THREE` to `START`.
- `counter` - The current countdown tick; Goes from `0` to `4`.

Example:
```lua
function onCountdownTick(counter)
     local counterArray = {'Three', 'Two', 'One', 'Go!', 'The song starts here'}
     debugPrint('Counter Num: '..counter..' | '..counterArray[counter + 1]) 
end
```

Will print:
```terminal
Counter Num: 0 | Three
Counter Num: 1 | Two
Counter Num: 2 | One
Counter Num: 3 | Go!
Counter Num: 4 | The song starts here
```

</p>
</details>

***

# Event Hook Callbacks
### onEvent(eventName, value1, value2, strumTime)
Triggered if <ins> an event note plays</ins>; Can be used to create an event.

- `eventName` - The name of the event to be used.
- `value1` - The first value of the event.
- `value2` - the second value of the event.
- `strumTime` - The strum time where the event was executed.

### onEventPushed(name, value1, value2, strumTime)
Triggered for <ins>every event note</ins>, it's recommended to precache assets.

- `eventName` - The name of the event to be used.
- `value1` - The first value of the event.
- `value2` - the second value of the event.
- `strumTime` - The strum time where the event was executed.

### eventEarlyTrigger(eventName, value1, value2, strumTime)
Makes the <ins>event trigger earlier</ins>. Use the `return` statement with the specified offset <ins>number in milliseconds</ins>.

- `eventName` - The name of the event to be used.
- `value1` - The first value of the event.
- `value2` - the second value of the event.
- `strumTime` - The strum time where the event was executed.

Example:
```lua
function eventEarlyTrigger(eventName)
     if eventName == 'Your event' then
          return 1000; -- will return 1 second earlier
     end
end
```

***

# Dialogue Callbacks
### onNextDialogue(dialogueCount)
Triggered if the player <ins>moves on to the next dialogue line</ins>.

- `dialogueCount` - The next dialogue line to check for; Starts at `0`, but won't actually get called until the next dialogue line.

### onSkipDialogue(dialogueCount)
Triggered if the <ins>current dialogue line is skipped mid text</ins>.

- `dialogueCount` - The current dialogue line to check for; Starts at `0`.

***

# Substate Callbacks
### onPause()
Triggered if the game is <ins>paused from playing</ins>.

> [!NOTE]
> _`Function_Stop` is able to be used on this callback; Must NOT be returning `Function_Stop` for the pause menu to open._

### onResume()
Triggered if the game is <ins>resumed from pausing</ins>.

### onGameOver()
Triggered if the <ins>player dies from skill issues</ins>.

> [!NOTE]
> _`Function_Stop` is able to be used on this callback; Must NOT be returning `Function_Stop` for the player to be able to die._

### onGameOverStart()
Triggered at the <ins>start of the game-over screen</ins>.

### onGameOverConfirm(retry)
Triggered if the <ins>player confirmed the retry</ins> or go back to the menu.

- `retry` - Checks if the player pressed the retry button; Returns a `boolean`.

***

# Pressing Callbacks
## Notes
> [!Warning] 
> _For Note related callbacks, the parameters on HScript are replaced with just the Note itself; Example: `note.noteType`_.

### goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
Triggered if the <ins>player hits a note</ins>.

> [!NOTE]
> _`Function_Stop` is able to be used on this callback, but it is currently only used to prevent the HScript version from getting called; Lua version must NOT be returning `Function_Stop` for the HScript version to get called._

- `membersIndex` - The note member id.
- `noteData` - The direction of the notes; Values: `0,1,2,3`.
- `noteType` - The note type to check.
- `isSustainNote` - Checks if the note is a sustain note; Returns a `boolean`.

### goodNoteHitPre(membersIndex, noteData, noteType, isSustainNote)
Triggered <ins>before the good note hit calculations</ins>; Has the same parameters as `goodNoteHit`.

> [!NOTE]
> _`Function_Stop` is able to be used on this callback, but it is currently only used to prevent the HScript version from getting called; Lua version must NOT be returning `Function_Stop` for the HScript version to get called._

### opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
Triggered if the <ins>opponent hits a note</ins>; Has the same parameters as `goodNoteHit`.

> [!NOTE]
> _`Function_Stop` is able to be used on this callback, but it is currently only used to prevent the HScript version from getting called; Lua version must NOT be returning `Function_Stop` for the HScript version to get called._

### opponentNoteHitPre(membersIndex, noteData, noteType, isSustainNote)
Triggered <ins>before the opponent note hit calculations</ins>; Has the same parameters as `goodNoteHit`. 

> [!NOTE]
> _`Function_Stop` is able to be used on this callback, but it is currently only used to prevent the HScript version from getting called; Lua version must NOT be returning `Function_Stop` for the HScript version to get called._

### onSpawnNote(membersIndex, noteData, noteType, isSustainNote, strumTime)
Triggered if a <ins>note is spawned</ins>.

### noteMiss(membersIndex, noteData, noteType, isSustainNote)
Triggered if the <ins>player misses a note</ins>; Has the same parameters as `goodNoteHit`.

> [!NOTE]
> _`Function_Stop` is able to be used on this callback, but it is currently only used to prevent the HScript version from getting called; Lua version must NOT be returning `Function_Stop` for the HScript version to get called._

### noteMissPress(noteData)
Triggered if the <ins>player presses while a note isn't present</ins>. This will only activate when <ins>`Ghost Tapping` is disabled</ins>.

- `noteData` - The direction in each strum note; Values: `0,1,2,3` into `left, down, up, right`.

## Keys
### onKeyPress(key)
Triggered if the player presses <ins>one of the note control buttons</ins>.

- `key` - The direction in each strum note; Values: `0,1,2,3` into `left, down, up, right`.

### onKeyPressPre(key)
Triggered <ins>before the key press calculations</ins>.

> [!NOTE]
> _`Function_Stop` is able to be used on this callback; Must NOT be returning `Function_Stop` for the input system to work and for `onKeyPress()` and `onGhostTap()` to be called; Would not recommend using `Function_Stop` on this unless you plan on making your own input system._

- `key` - The direction in each strum note; Values: `0,1,2,3` into `left, down, up, right`.

### onKeyRelease(key)
Triggered if the player releases <ins>one of the note control buttons</ins>.

- `key` - The note direction in each strum of the note; Values: `0,1,2,3` into `left, down, up, right`.

### onKeyReleasePre(key)
Triggered <ins>before the key release calculations</ins>.

> [!NOTE]
> _`Function_Stop` is able to be used on this callback; Must NOT be returning `Function_Stop` for the strum animations to play and for `onKeyRelease()` to be called._

- `key` - The note direction in each strum of the note; Values: `0,1,2,3` into `left, down, up, right`.

### onGhostTap(key)
Triggered if the note control buttons are <ins>pressed while a note isn't present</ins>; Not to be confused with `noteMissPress()`.

- `key` - The note direction in each strum of the note; Values: `0,1,2,3` into `left, down, up, right`.

***

# Complete Callbacks
### onTimerCompleted(tag, loops, loopsLeft)
Triggered when a <ins>timer is finished</ins>; Not to be confused with `onTweenCompleted()` function, just in case to add this lol.

- `tag` - The timer tag to be used.
- `loops` - Checks how many loops it will have done when it ends completely.
- `loopsLeft` - Checks how many loops remaining on the timer.

### onTweenCompleted(tag, vars)
Triggered when a <ins>tween is finished</ins>.

- `tag` - The tween tag to be used.
- `vars` - The vars that was in the tween to be used; Only gets called on `startTween()` and `doTween()` functions.

### onSoundFinished(tag)
Triggered when a <ins>sound is finished</ins>.

- `tag` - The sound tag to be used.

***

# Dynamic Functions
Dynamic functions/callbacks are able to <ins>be overridden</ins> on HScript or `runHaxeCode()`, meaning you can change how the functions work. 

Example:
```haxe
function onCreatePost() {
     game.updateIconsPosition = function() {
          game.iconP1.x = 314;
          game.iconP2.x = 114;
          // Instead of updating the positions depending on the health
          // The icons will now update on these positions and stay static
          // You can even make the function empty if you don't want it to do anything
     }
}
```

List of Dynamic functions/callbacks currently available:
- From `PlayState.hx`:
     - `updateIconsPosition()`
     - `updateIconsScale(elapsed)`
     - `updateScore(miss)`
     - `fullComboFunction()`
- From `FPSCounter.hx`:
     - `updateText()` _(Accessed by using `Main.fpsVar.updateText`)_
- From `Discord.hx`:
     - `shutdown()` _(Static function)_

***

# Deprecated Callbacks
> [!CAUTION]
> Both of these functions were added in `0.7.2`, but later removed in `0.7.3`.

### goodNoteHitPost(membersIndex, noteData, noteType, isSustainNote)
In `0.7.2`, this is triggered AFTER `goodNoteHit()` and `goodNoteHit()` gets called before the good note hit calculations; Has the same parameters as `goodNoteHit()` callback.

### opponentNoteHitPost(membersIndex, noteData, noteType, isSustainNote)
In `0.7.2`, this is triggered AFTER `opponentNoteHit()` and `opponentNoteHit()` gets called before the opponent note hit calculations; Has the same parameters as `opponentNoteHit()` callback.