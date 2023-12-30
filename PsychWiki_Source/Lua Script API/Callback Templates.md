# Start/End functions
### onCreate()
Triggered at the <ins>start of the Lua script</ins>, can be used for creating objects, precaching, property setters/getters; <ins>some variables</ins> weren't created; Will only be triggered once.

### onCreatePost()
Triggered at the <ins>post/after start of the Lua script</ins>; The <ins>HUD elements</ins> are created here; Will only be triggered once.

### onDestroy()
Triggered at the <ins>end of the Lua script</ins>; Will only be triggered once.

***

# Gameplay/Song Functions
### onBeatHit()
Triggered at max <ins>4 times</ins> per section; The `curBeat` variable is <ins>recommended to be used</ins> here since it will be called every beat.

### onStepHit()
Triggered at max <ins>16 times</ins> per section; The `curStep` variable is <ins>recommended to be used</ins> here since it will be called every step.

### onSectionHit()
Triggered at max <ins>1 time</ins> per section; The `curSection` variable is <ins>recommended to be used</ins> here since it will be called every section.

### onUpdate(elapsed)
Triggered <ins>every frame</ins> in the game.

- `elapsed` - Every frame display in milliseconds; Shortcut to `getPropertyFromClass('flixel.FlxG', 'elapsed')`.

### onUpdatePost(elapsed)
Triggered at <ins>post/after every frame</ins> in the game; The <ins>HUD elements</ins> are updated here.

- `elapsed` - Every frame display in milliseconds; Shortcut to `getPropertyFromClass('flixel.FlxG', 'elapsed')`.

### preUpdateScore(miss)
> **Note**: _`Function_Stop` is able to be used on this callback; Must be returning `Function_Continue` for the score to update and for `onUpdateScore` to be called._

Triggered before the <ins>score change</ins>.

- `miss` - Returns if the player missed a note; This parameter is a `bool`.

### onUpdateScore(miss)
Triggered after the <ins>score change</ins>.

- `miss` - Returns if the player missed a note; This parameter is a `bool`.

### onSongStart()
Triggered at the <ins>beginning of the song</ins> or at the <ins>completion of the countdown</ins>.

### onEndSong()
> **Note**: _`Function_Stop` is able to be used on this callback; Must be returning `Function_Continue` for the song to end._

Triggered at the <ins>end of the song</ins>, will be <ins>delayed if an achievement is unlocked</ins>; Not to be confused with `onDestroy()`; 

### onMoveCamera(focus)
Triggered when the <ins>camera focuses on a character</ins>; Can either be `boyfriend`, `dad` or `gf`.

- `focus` - Called when the camera focuses on this character.

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

### onRecalculateRating()
> **Note**: _`Function_Stop` is able to be used on this callback; Must be returning `Function_Continue` for the rating to be recalculated._

Triggered <ins>before the calculation</ins> of the rating. Recommended to use `setRatingPercent()` function for the accuracy percent on the calculation. And the `setRatingString()` function for your epic rating names;

***

# Countdown Functions
### onStartCountdown()

> **Note**: _`Function_Stop` is able to be used on this callback; Must be returning `Function_Continue` for the countdown to start and for `onCountdownStarted` to be called._

Triggered at the <ins>start of the countdown</ins>; Not to be confused with `onCountdownStarted()`.

### onCountdownStarted()
Triggered at the <ins>post/after start of the countdown</ins>; the <ins>note strums</ins> are created here.

### onCountdownTick(counter)
> **Note**: _On HScript, the parameters are changed to `onCountdownTick(tick, counter)`_.

Triggered at <ins>each countdown tick</ins>.

- `counter` - The specified countdown tick; Goes from `0` to `4`.

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

***

# Event Hook Functions
### onEvent(eventName, value1, value2, strumTime)
Creates a <ins>local event</ins> script or <ins>modifies</ins> the event script.

- `eventName` - The name of the event to be used.
- `value1` - The first value of the event.
- `value2` - the second value of the event.
- `strumTime` - The specified strum time where the event is executed.

### onEventPushed(name, value1, value2, strumTime)
Triggered for <ins>every event note</ins>, it's recommended to precache assets.

- `eventName` - The name of the event to be used.
- `value1` - The first value of the event.
- `value2` - the second value of the event.
- `strumTime` - The specified strum time where the event is executed.

### eventEarlyTrigger(eventName, value1, value2, strumTime)
Makes the <ins>event trigger earlier</ins>. Use the `return` statement with the specified offset <ins>number in milliseconds</ins>.

- `eventName` - The name of the event to be used.
- `value1` - The first value of the event.
- `value2` - the second value of the event.
- `strumTime` - The specified strum time where the event is executed.

Example:
```lua
function eventEarlyTrigger(eventName)
     if eventName == 'Your event' then
          return 1000; -- will return 1 second earlier
     end
end
```

***

# Dialogue Functions
### onNextDialogue(dialogueCount)
Triggered when the <ins>next dialogue is called</ins>.

- `dialogueCount` - The dialogue duh; Starts at `1`.

### onSkipDialogue(dialogueCount)
Triggered when the <ins>dialogue is skip mid text</ins>.

- `dialogueCount` - The dialogue duh; Starts at `1`.

***

# Substate Functions
### onPause()
> **Note**: _`Function_Stop` is able to be used on this callback; Must be returning `Function_Continue` for the pause menu to open._

Triggered if the game is <ins>paused from playing</ins>;

### onResume()
Triggered if the game is <ins>resumed from pausing</ins>.

### onGameOver()
> **Note**: _`Function_Stop` is able to be used on this callback; Must be returning `Function_Continue` for the player to be able to die._

Triggered if the <ins>player dies from skill issues</ins>.

### onGameOverStart()
Triggered at the <ins>start of the game-over screen</ins>.

### onGameOverConfirm(retry)
Triggered if the <ins>player confirmed the retry</ins> or go back to the menu.

- `retry` - Checks if the player pressed the retry button; Returns `true`.

***

# Note/Key Pressing Functions

> **Warning**: _For Note related callbacks, the parameters on HScript are replaced with just the Note itself; Example: `note.noteType`_.

### goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
> **Note**: _`Function_Stop` is able to be used on this callback, BUT weirdly enough, it is only used to prevent the HScript version from getting called; For the HScript version to work, Lua version must be returning `Function_Continue`._

Triggered if the <ins>player hits a note</ins>.

- `membersIndex` - The note member id.
- `noteData` - The direction of the notes; Values: `0,1,2,3`.
- `noteType` - The note type to check.
- `isSustainNote` - Checks if the note is a sustain note; Returns a `boolean`.

### goodNoteHitPost(membersIndex, noteData, noteType, isSustainNote)
> **Note**: _`Function_Stop` is able to be used on this callback, BUT weirdly enough, it is only used to prevent the HScript version from getting called; For the HScript version to work, Lua version must be returning `Function_Continue`._

Triggered after `goodNoteHit`.

Has the same parameters as `goodNoteHit`.

### opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
> **Note**: _`Function_Stop` is able to be used on this callback, BUT weirdly enough, it is only used to prevent the HScript version from getting called; For the HScript version to work, Lua version must be returning `Function_Continue`._

Triggered if the <ins>opponent hits a note</ins>.

Has the same parameters as `goodNoteHit`.

### opponentNoteHitPost(membersIndex, noteData, noteType, isSustainNote)
> **Note**: _`Function_Stop` is able to be used on this callback, BUT weirdly enough, it is only used to prevent the HScript version from getting called; For the HScript version to work, Lua version must be returning `Function_Continue`._

Triggered after `opponentNoteHit`.

Has the same parameters as `goodNoteHit`.

### onSpawnNote(membersIndex, noteData, noteType, isSustainNote, strumTime)
Triggered if a <ins>note is spawned</ins>.

- `membersIndex` - The note member id.
- `noteData` - The direction of the notes; Values: `0,1,2,3`.
- `noteType` - The note type to check.
- `isSustainNote` - Checks if the note is a sustain note; Returns a `boolean`.
- `strumTime` - Returns the note's strumTime; Returns a `float`.

### noteMiss(membersIndex, noteData, noteType, isSustainNote)
> **Note**: _`Function_Stop` is able to be used on this callback, BUT weirdly enough, it is only used to prevent the HScript version from getting called; For the HScript version to work, Lua version must be returning `Function_Continue`._

Triggered if the <ins>player misses a note</ins>.

Has the same parameters as `goodNoteHit`.

### noteMissPress(noteData)
Triggered if the <ins>player presses while a note isn't present</ins>. This will only activate when <ins>`Ghost Tapping` is disabled</ins>.

- `noteData` - The direction in each strum note; Values: `0,1,2,3` into `left, down, up, right`.

### onKeyPressPre(key)
> **Note**: _`Function_Stop` is able to be used on this callback; Must be returning `Function_Continue` for the <ins>input system to work</ins> and for `onKeyPress` to be called; Would not recommend using `Function_Stop` on this unless you plan on making your own input system._

Triggered before the note control buttons were <ins>detected as pressed</ins>.

- `key` - The direction in each strum note; Values: `0,1,2,3` into `left, down, up, right`.

### onKeyPress(key)
Triggered after the note control buttons were <ins>detected as pressed</ins>.

- `key` - The direction in each strum note; Values: `0,1,2,3` into `left, down, up, right`.

### onKeyReleasePre(key)
> **Note**: _`Function_Stop` is able to be used on this callback; Must be returning `Function_Continue` for the strum animations to play and for `onKeyRelease` and `onGhostTap` to be called._

Triggered before the note control buttons were <ins>detected as released</ins>.

- `key` - The note direction in each strum of the note; Values: `0,1,2,3` into `left, down, up, right`.

### onKeyRelease(key)
Triggered after the note control buttons were <ins>detected as released</ins>.

- `key` - The note direction in each strum of the note; Values: `0,1,2,3` into `left, down, up, right`.

### onGhostTap(key)
Triggered if the note control buttons were <ins>pressed while a note isn't present</ins>; Not to be confused with `noteMissPress()`.

- `key` - The note direction in each strum of the note; Values: `0,1,2,3` into `left, down, up, right`.

***

# Complete Functions
### onTimerCompleted(tag, loops, loopsLeft)
Triggered after the <ins>timer tag is finished</ins>; Not to be confused with `onTweenCompleted()` function, just in case to add this lol.

- `tag` - The timer tag to be used.
- `loops` - Checks many loops it will have done when it ends completely
- `loopsLeft` - Checks how many loops remaining on the timer.

### onTweenCompleted(tag)
Triggered after the <ins>tween tag is finished</ins>.

- `tag` - The timer tween to be used.

### onSoundFinished(tag)
Triggered after the <ins>sound tag is finished</ins>.

- `tag` - The timer sound to be used.