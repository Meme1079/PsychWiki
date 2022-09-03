# Start/End functions

### onCreate()
Triggered when the lua file is started, some variables weren't created yet 

Example: `function onCreate()` this applies all the callback templates

### onCreatePost()
Triggered after `onCreate()` also can be used if you put something `onCreate()` and it doesn't work

### onDestroy()
Triggered when the lua file is ended _(Song fade out finished)_

***

# Gameplay/Song interactions

### onBeatHit()
Triggered 4 times per section

### onStepHit()
Triggered 16 times per section

### onSectionHit()
Triggered per section

### onUpdate(elapsed)
Every frame on the game, some variables weren't updated yet

### onUpdatePost(elapsed)
Triggered after `onUpdate()`, works the same as `onCreatePost()`

### onStartCountdown()
Note: Must have `return Function_Continue` when creating this function if you're not adding `return Function_Stop`

Starts on countdown also can be used to trigger dialogues and stuff! You can trigger the countdown with `startCountdown()`. Add `return Function_Stop` if you want to stop the countdown from happening 

Example:

```lua
function onStartCountdown()
     return Function_Continue -- this is important to use
end
```

### onCountdownTick(counter)
Activate when the countdown is started

- `counter == 0` - Three
- `counter == 1` - Two
- `counter == 2` - One
- `counter == 3` - Go!
- `counter == 4` - Trigger on the start of the song

### onSongStart()
Triggered on the start of the song

### onEndSong()
Note: Must have `return Function_Continue` when creating this function if you're not adding `return Function_Stop`

Triggered on the end of the song, will be delayed if you're unlocking an achievement. Add `return Function_Stop` to stop the song from ending for playing a cutscene or something.

***

# Substate interactions

### onPause()
Note: Must have `return Function_Continue` when creating this function if you're not adding `return Function_Stop`

Triggered when you're in the pause screen while not on a cutscene/etc. Add `return Function_Stop` if you want to stop the player from pausing the game

### onResume()
Triggered after the game has been resumed from a pause (WARNING: Not necessarily from the pause screen, but most likely is!!!)

### onGameOver()
Note: Must have `return Function_Continue` when creating this function if you're not adding `return Function_Stop`

You died! Called every single frame your health is lower _(or equal to)_ zero. Add `return Function_Stop` if you want to stop the player from going into the game over screen

### onGameOverConfirm(retry)
Called when you Press Enter/Esc on Game Over. If you've pressed Esc, value "retry" will be false

***

# Dialogue 
When a dialogue is finished, it calls startCountdown again

### onNextDialogue(line)
Triggered when the next dialogue line starts, dialogue line starts with 1

### onSkipDialogue(line)
Triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1

***

# Note miss/hit

### goodNoteHit(id, direction, noteType, isSustainNote)
Trigger when you hit a note (after note hit calculations)

- `id` - The note member id, you can get whatever variable you want from this note, Example: `getPropertyFromGroup('notes', id, 'strumTime')`
- `direction` - Direction of the note, 0 = Left, 1 = Down, 2 = Up, 3 = Right
- `noteType` - The note type string/tag
- `isSustainNote` - If it's a hold note, can be either true or false

### opponentNoteHit(id, direction, noteType, isSustainNote)
Works the same as `goodNoteHit()`, but for Opponent's notes being hit

### noteMissPress(direction)
Player pressed a button, but there was no note to hit and called after the note press miss calculations

### noteMiss(id, direction, noteType, isSustainNote)
Player missed a note by letting it go offscreen and called after the note miss calculations

***

# Keys Press

### onGhostTap(key)
Triggered when you did a ghost tapping

key: 0 = Left, 1 = Down, 2 = Up, 3 = Right

### onKeyPress(key)
Triggered when a key is pressed a key

key: 0 = Left, 1 = Down, 2 = Up, 3 = Right

### onKeyRelease(key)
Triggered when a key is release the key

key: 0 = Left, 1 = Down, 2 = Up, 3 = Right

***

# Other function hooks

### onRecalculateRating()
Note: Must have `return Function_Continue` when creating this function if you're not adding `return Function_Stop`

This is called before the calculation. Use `setRatingPercent()` to set the number on the calculation and `setRatingString()` to set the funny rating name

### onMoveCamera(focus)
Detects if the cam moves to `boyfriend` or `dad`

- `focus` - Can be either boyfriend or dad

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

# Event notes hooks

### onEvent(name, value1, value2)
Makes an a event! and `triggerEvent()` does not call this function!!

- `name` - Name of the Event
- `value1` - Value 1 on Chart Editor
- `value2` - Value 2 on Chart Editor

### eventEarlyTrigger(name)
Makes the event earlier when triggered
	
Here's a port of the Kill Henchmen early trigger but on Lua instead of Haxe:
```lua
function eventEarlyTrigger(name)
     if name == 'Kill Henchmen' then
	  return 280; --[[This makes the "Kill Henchmen" event be triggered 280 miliseconds earlier 
          so that the kill sound is perfectly timed with the song]]
     end
end
```

***

# Tween/Timer hooks

### onTimerCompleted(tag, loops, loopsLeft)
Makes a timer

- `tag` - A loop from a timer you called has been completed
- `loops` - how many loops it will have done when it ends completely
- `loopsLeft` - how many are remaining

### onTweenCompleted(tag)
A tween you called has been completed, value "tag" is it's tag