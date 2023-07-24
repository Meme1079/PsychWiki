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
Triggered at <ins>every 4 times</ins> per section; `curBeat` or `curDecBeat` variables is <ins>recommended to be used</ins> here since it will be called once.

### onStepHit()
Triggered at <ins>every 16 times</ins> per section; `curStep` or `curDecStep` variables is <ins>recommended to be used</ins> here since it will be called once.

### onSectionHit()
Triggered at <ins>every 1 times</ins> per section; `curSection` variable is <ins>recommended to be used</ins> here since it will be called once.

### onUpdate(elapsed)
Triggered at <ins>every frame</ins> inside the game.

- `elapsed` - Every frame display in milliseconds; Shortcut to `getPropertyFromClass('flixel.FlxG', 'elapsed')`.

### onUpdatePost(elapsed)
Triggered at <ins>post/after every frame</ins> inside the game; The <ins>HUD elements</ins> are updated here.

- `elapsed` - Every frame display in milliseconds; Shortcut to `getPropertyFromClass('flixel.FlxG', 'elapsed')`.

### onUpdateScore(miss)
Triggered at every <ins>update change at the score</ins>.

- `miss` - The current song miss total.

### onSongStart()
Triggered at the <ins>beginning of the song</ins> or at the <ins>completion of the countdown</ins>.

### onEndSong()
Triggered at the <ins>end of the song</ins>, will be <ins>delayed if an achievement is unlocked</ins>; Not to be confused with `onDestroy()`.

### onMoveCamera(focus)
Triggered at the <ins>camera focusing</ins> either the `boyfriend` or `dad`.

- `focus` - Which character for the camera to focus on.

### onRecalculateRating()
Triggered <ins>before the calculation</ins> of the rating. Recommended to use `setRatingPercent()` function for the accuracy percent on the calculation. And the `setRatingString()` function for your epic rating names.

### onEvent(eventName, value1, value2)
Creates a <ins>local event</ins> script or <ins>modifies</ins> the event script.

- `eventName` - The name of the event to be used.
- `value1` - The first value of the event.
- `value2` - the second value of the event.

### eventEarlyTrigger(eventName, value1, value2)
Makes the <ins>event trigger earlier</ins>. Use the `return` statement with the specified offset <ins>number in milliseconds</ins>.

- `eventName` - The name of the event to be used.
- `value1` - The first value of the event.
- `value2` - the second value of the event.

Example:
```lua
function eventEarlyTrigger(eventName)
     if eventName == 'Your event' then
          return 1000; -- will return 1 second earlier
     end
end
```

***

# Countdown Functions
### onStartCountdown()
Triggered at the <ins>start of the countdown</ins>; Not to be confused with `onCountdownStarted()`.

### onCountdownStarted()
Triggered at the <ins>post/after start of the countdown</ins>; the <ins>note strums</ins> are created here.

### onCountdownTick(counter)
Triggered at <ins>each countdown tick</ins>.

- `counter` - The specified countdown tick; Goes from `0` to `3`.

Example:
```lua
function onCountdownTick(counter)
     local counterArry = {'Three', 'Two', 'One', 'Go!', 'The song starts here'}
     debugPrint('Counter Num: '..counter..' | '..counterArry[counter + 1]) 
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
Triggered if the game is <ins>paused from playing</ins>.

### onResume()
Triggered if the game is <ins>resumed from pausing</ins>.

### onGameOver()
Triggered if the <ins>player dies from skill issues</ins>.

### onGameOverStart()
Triggered at the <ins>start of the game-over screen</ins>.

### onGameOverConfirm(retry)
Triggered if the <ins>player confirmed the retry</ins> or go back to the menu.

- `retry` - Checks if the player pressed the retry button; Returns `true`.

# Custom Substate Functions
### onCustomSubstateCreate(name)
Works similair to <ins>`onCreate()` callback function</ins> but for your custom substate; Will only be triggered once.

- `name` - The name of your substate.

### onCustomSubstateCreatePost(name)
Works similair to <ins>`onCreatePost()` callback function</ins>; Will only be triggered once.

- `name` - The name of your substate.

### onCustomSubstateUpdate(name, elapsed)
Works similair to <ins>`onUpdate()` callback function</ins>.

- `name` - The name of your substate.
- `elapsed` - Every frame display in milliseconds; Shortcut to `getPropertyFromClass('flixel.FlxG', 'elapsed')`.

### onCustomSubstateUpdatePost(name, elapsed)
Works similair to <ins>`onUpdatePost()` callback function</ins>.

- `name` - The name of your substate.
- `elapsed` - Every frame display in milliseconds; Shortcut to `getPropertyFromClass('flixel.FlxG', 'elapsed')`.

### onCustomSubstateDestroy(name)
Triggered if the <ins>substate is closed</ins>; Works similair to <ins>`onDestroy()` callback function</ins>; Will only be triggered once.

- `name` - The name of your substate.

***

# Note/Key Functions
### goodNoteHit(membersIndex, noteDirect, noteType, isSustainNote)
Triggered if the <ins>player hit a note</ins>.

- `membersIndex` - The note member id; Boyfriend: `0,1,2,3` and Opponent: `4,5,6,7`.
- `noteDirect` - The note direction in each strum of the note; Values: `0,1,2,3` into `left, down, up, right`.
- `noteType` - The specific note type to be used.
- `isSustainNote` - Checks if the note is long or not; Returns a `boolean`.

### opponentNoteHit(membersIndex, noteDirect, noteType, isSustainNote)
Triggered if the <ins>opponent hit a note</ins>.

### onSpawnNote(membersIndex, noteData, noteType, isSustainNote)
Triggered if the <ins>note is spawn inside the game</ins>.

### noteMiss(membersIndex, noteDirect, noteType, isSustainNote)
Triggered if the <ins>player miss a note</ins>.

### noteMissPress(noteDirect)
Triggered if the <ins>player tap while the note isn't present</ins>. This will only activate when <ins>`Ghost Tapping` is disable</ins>.

- `noteDirect` - The note direction in each strum of the note; Values: `0,1,2,3` into `left, down, up, right`.

***

### onKeyPress(key)
Triggered if the note control buttons were <ins>recently pressed</ins>.

- `key` - The note direction in each strum of the note; Values: `0,1,2,3` into `left, down, up, right`.

### onKeyRelease(key)
Triggered if the note control buttons were <ins>recently released</ins>.

- `key` - The note direction in each strum of the note; Values: `0,1,2,3` into `left, down, up, right`.

### onGhostTap(key)
Triggered if the note control buttons were <ins>tap while the note isn't present</ins>; Not to be confused with `noteMissPress()`.

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