# Start/End functions
### onCreate()
Triggered when the lua file is started used for creating a sprite and precaching, some variables weren't created yet.

### onCreatePost()
Triggered after the lua file has been created. This can be used if you put something in the `onCreate()` method and it fails.

### onDestroy()
Triggered when the lua file has ended, the song has ended at that point.

***

# Gameplay/Song Functions
### onBeatHit()
Triggered 4 times per section used for `curStep` and `curDecStep` variable.

### onStepHit()
Triggered 16 times per section used for `curBeat` and `curDecBeat` variable.

### onSectionHit()
Triggered 1 times per section used for `curSection` variable.

### onUpdate(elapsed)
Triggered every frame on the game currently, some variables weren't updated yet.

### onUpdatePost(elapsed)
Triggered after every frame on the game currently.

### onStartCountdown()
Triggered on the start of the countdown, used for dialogue and cutscene stuff. If you want to trigger the countdown use `startCountdown()`. Add `return Function_Stop` if you wan to stop the countdown from happening.

If not, use `return Function_Continue` if you wan't to continue the countdown from happening.

Example:

```lua
function onStartCountdown()
     return Function_Continue -- this is important to use
end
```

### onCountdownStarted()
Triggered during the countdown.

### onCountdownTick(counter)
Triggered on each countdown tick.

- `counter = 0` - Three
- `counter = 1` - Two
- `counter = 2` - One
- `counter = 3` - Go!
- `counter = 4` - Trigger on the start of the song.

### onSongStart()
Triggered on the start of the song.

### onEndSong()
Triggered on the end of the song just like `onDestroy()`, this will be delayed if you unlocked an achievment. Add `return Function_Stop` if you wan't to stop the song from ending.

If not, use `return Function_Continue` if you wan't to end the song.

***

# Substate Functions
### onPause()
Triggered when you're in the pause screen of the game while not on a cutscene or cutscene. Add `return Function_Stop` if you wan't to stop the player from going to the pause screen.

If not, use `return Function_Continue` if you wan't to access the pause screen.

### onResume()
Triggered after the game has been resumed from a pause. Not necessarily from the pause screen, but most likely is!!!

### onGameOver()
Triggered when you're in a game over screen or health is equal to zero. Add `return Function_Stop` if you don't want to go to the game-over screen.

If not, use `return Function_Continue` if you wan't to access the game-over screen.

### onGameOverConfirm(retry)
Triggered when you press the retry button on the game-over screen. 

- `retry` - This will trigger if you press the retry button. If you exit the game-over screen then the `retry` parameter will return `false`.

***

# Custom Substate Functions
### onCustomSubstateCreate(name)
Triggered when the lua file is started.

- `name` - The name of the custom substate.

### onCustomSubstateCreatePost(name)
Triggered after the lua file has been created.

### onCustomSubstateUpdate(name, elapsed)
Triggered every frame on the game currently.

### onCustomSubstateUpdatePost(name, elapsed)
Triggered after every frame on the game currently.

### onCustomSubstateDestroy(name)
Triggered when the lua file has ended.

***

# Dialogue Functions
### onNextDialogue(line)
Triggered when the next dialogue line starts, dialogue line starts with `1`.

### onSkipDialogue(line)
Triggered when you press enter and skip a dialogue line that was still being typed, dialogue line starts with `1`.

***

# Note Miss/Hit Functions
### goodNoteHit(id, direction, noteType, isSustainNote)
Triggered when you hit a note, after calculating note hit.

- `id` - The note id property, you can get the current note variable from the note, Example: `getPropertyFromGroup('notes', id, 'copyAlpha')`.
- `direction` - The direction on the note strum, Directions: `0 = Left`, `1 = Down`, `2 = Up`, `3 = Right`.
- `noteType` - The type of note that can be hit.
- `isSustainNote` - If a long note is present, the long note will return `true`.

### opponentNoteHit(id, direction, noteType, isSustainNote)
Triggered when the opponent hit a note, after calculating note hit.

### noteMiss(id, direction, noteType, isSustainNote)
Triggered if you missed a note, after the note miss calculation's.

### noteMissPress(direction)
Triggered when you pressed a button but there is no note present there, after the note press miss calculation's.

***

# Keys Press Functions
### onGhostTap(key)
Triggered when you pressed a button but there is no note present there. _(It's just the same as `noteMissPress()`)_

- `key` - The `direction` parameter on the `goodNoteHit()`.

### onKeyPress(key)
Triggered when you hit a note or did a ghost hit.

- `key` - The `direction` parameter on the `goodNoteHit()`.

### onKeyRelease(key)
Triggered after you hit a note or did a ghost hit.

- `key` - The `direction` parameter on the `goodNoteHit()`.

***

# Other Functions
### onRecalculateRating()
Triggered before the calculation. You can use the `setRatingPercent()` to set the accuracy percent on the calculation. And the `setRatingString()` for the funny rating name. Add `return Function_Stop` if you don't want to add accuracy percent and rating.

You don't need to add `return Function_Continue`.

### onMoveCamera(focus)
Triggered by the camera focusing on `boyfriend` or `dad`.

- `focus` - Which character for the camera to focus on.

Example:
```lua
function onMoveCamera(focus)
     if focus == 'boyfriend' then
	   -- called when the camera focus on boyfriend
     elseif focus == 'dad' then
	   -- called when the camera focus on dad
     end
end
```

***

# Event Functions
### onEvent(name, value1, value2)
This will make a custom event.

- `name` - The name of the event.
- `value1` - The value 1 on the chart editor
- `value2` - The value 2 on the chart editor

### eventEarlyTrigger(name)
This will make the event trigger early.
	
Example of a port of the Kill Henchmen early trigger but on Lua instead of Haxe:
```lua
function eventEarlyTrigger(name)
     if name == 'Kill Henchmen' then
          return 280; --[[ This makes "Kill Henchmen" event be triggered 280 miliseconds earlier 
          so that the kill sound is perfectly timed with the song]]
     end
end
```

***

# Tween/Timer Functions
### onTimerCompleted(tag, loops, loopsLeft)
This will create a timer.

- `tag` - The tag on the timer to use in `runTimer()` function.
- `loops` - The duration on the timer to start.
- `loopsLeft` - How many loops will the timer make.

### onTweenCompleted(tag)
After the tween is completed this function will be called.