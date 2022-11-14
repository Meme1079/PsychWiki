# Start/End functions
### onCreate()
The <ins>start of the lua script</ins> used for creating or setting objects and precaching, some variables weren't created yet.

### onCreatePost()
The <ins>post/after start of the lua script</ins>. You these, if the code didn't work in `onCreate()`. 

### onDestroy()
The <ins>end of the lua script</ins>. 

***

# Gameplay/Song Functions
### onBeatHit()
Triggered <ins>4 times per section</ins> used for `curStep` and `curDecStep` variable.

### onStepHit()
Triggered <ins>16 times per section</ins> used for `curBeat` and `curDecBeat` variable.

### onSectionHit()
Triggered <ins>1 times per section</ins> used for `curSection` variable.

### onUpdate(elapsed)
The <ins>every frame on the game currently</ins>, some variables weren't updated yet.

### onUpdatePost(elapsed)
The <ins>post/after every frame on the game currently</ins>. You these, if the code didn't work in `onUpdate(elapsed)`. 

### onSongStart()
The end of the countdown and the <ins>start of the song</ins>.

### onEndSong()
The <ins>end of the song</ins>, this will be delayed if you unlocked an achievment. Add `return Function_Stop` if you want to stop the song from ending.

If not, use `return Function_Continue` if you want to end the song.

***

# Countdown Functions
### onStartCountdown()
The start of the countdown used for <ins>dialogue and cutscene stuff</ins>. If you want to trigger the countdown use `startCountdown()`. Add `return Function_Stop` if you want to stop the countdown from happening.

If not, use `return Function_Continue` if you want to continue the countdown from happening.

<details><summary>Example:</summary>
<p>

```lua
function onStartCountdown()
     return Function_Continue -- this is important to use
end
```

</p>
</details>

### onCountdownStarted()
Triggered <ins>during the countdown</ins>.

### onCountdownTick(counter)
Triggered <ins>in each countdown tick</ins>.

- `counter` - In each tick of the countdown sound. 

<details><summary>Example:</summary>
<p>

```lua
function onCountdownTick(counter)
     if counter == 0 then
          debugPrint('Three')
     elseif counter == 1 then
          debugPrint('Two')
     elseif counter == 2 then
          debugPrint('One')
     elseif counter == 3 then
          debugPrint('Go')
     elseif counter == 4 then
          debugPrint(songName..' is now playing') -- The start of the song
     end
end
```

</p>
</details>

***

# Substate Functions
### onPause()
Triggered when you're in the <ins>pause screen of the game while not on a cutscene or cutscene</ins>. Add `return Function_Stop` if you want to stop the player from going to the pause screen.

If not, use `return Function_Continue` if you want to access the pause screen.

### onResume()
Triggered after the game has been <ins>resumed from a pause</ins>. Not necessarily from the pause screen, but most likely is.

### onGameOver()
Triggered when you got a <ins>game-over screen or the health is equal to zero</ins>. Add `return Function_Stop` if you don't want to go to the game-over screen.

If not, use `return Function_Continue` if you want to access the game-over screen.

### onGameOverConfirm(retry)
Triggered when you press the <ins>retry button on the game-over screen</ins>. 

- `retry` - This will trigger if you press the retry button. If you exit the game-over screen then the `retry` parameter will return `false`.

***

# Custom Substate Functions
> **Warning**: _You need [`runHaxeCode()`](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-General-Functions#runhaxecodecodetorunstring) for order to these functions work properly._

### onCustomSubstateCreate(name)
The <ins>start of the lua script</ins> on the custom substate.

- `name` - The name of the custom substate. _(This is important to use!)_

### onCustomSubstateCreatePost(name)
The <ins>post/after start of the lua script</ins> on the custom substate.

### onCustomSubstateUpdate(name, elapsed)
The <ins>every frame on the game currently</ins> on the custom substate.

### onCustomSubstateUpdatePost(name, elapsed)
The <ins>post/after every frame on the game currently</ins> on the custom substate.

### onCustomSubstateDestroy(name)
The <ins>end of the lua script</ins> on the custom substate. 

***

# Dialogue Functions
### onNextDialogue(line)
Triggered when the <ins>next dialogue line starts</ins>, dialogue line starts with `1`.

### onSkipDialogue(line)
Triggered when you <ins>press enter and skip a dialogue line </ins>that was still being typed, dialogue line starts with `1`.

***

# Note Miss/Hit Functions
### goodNoteHit(id, direction, noteType, isSustainNote)
Triggered when the <ins>player hit a note during gamplay</ins>, after calculating note hit.

- `id` - The current note id property.
- `direction` - The direction axis of the note.
- `noteType` - The type of the note duh.
- `isSustainNote` - If the note has a tail, will return `false` if not.

<details><summary>Example:</summary>
<p>

```lua
function goodNoteHit(id, direction, noteType, isSustainNote)
     debugPrint(getPropertyFromGroup('notes', id, 'noteSplashDisabled'))
     -- id parameter example
     -- this will check if the notesplash is disable or not

     if direction == 0 then
          debugPrint('left')
     elseif direction == 1 then
          debugPrint('down')
     elseif direction == 2 then
          debugPrint('up')
     elseif direction == 3 then
          debugPrint('right')
     end
     -- direction parameter example
     -- this will print each corresponding direction

     if noteType == 'No Animation' then
          debugPrint('No animation detected!')
     end
     -- noteType parameter example
     -- this will print if the 'No Animation' note was hit

     if isSustainNote == true then
          debugPrint('loooooong')
     end
     -- isSustainNote parameter example 
     -- this will check if the note has a tail
end
```

</p>
</details>

### opponentNoteHit(id, direction, noteType, isSustainNote)
Triggered when the <ins>opponent hit a note during gamplay</ins>, after calculating note hit.

### noteMiss(id, direction, noteType, isSustainNote)
Triggered if you <ins>missed a note</ins>, after the note miss calculations.

### noteMissPress(direction)
Triggered if you <ins>pressed a button but there is note present there</ins>, after the note press miss calculations.

***

# Keys Press Functions
### onGhostTap(key)
Triggered if the note controls were <ins>recently pressed but there is note present</ins> there on the current game.

- `key` - This works the same as the `direction` on the `goodNoteHit()` function.

### onKeyPress(key)
Triggered if the note controls were <ins>recently pressed</ins> on the current game.

- `key` - This works the same as the `direction` on the `goodNoteHit()` function.

### onKeyRelease(key)
Triggered if the note controls were <ins>recently released</ins> on the current game.

- `key` - This works the same as the `direction` on the `goodNoteHit()` function.

***

# Other Functions
### onRecalculateRating()
Triggered <ins>before the calculation</ins>. You can use the `setRatingPercent()` to set the accuracy percent on the calculation. And the `setRatingString()` for the funny rating name. 

Add `return Function_Stop` if you don't want to add accuracy percent and rating. You don't need to add `return Function_Continue`.

### onMoveCamera(focus)
Triggered by the <ins>camera focusing</ins> on `boyfriend` or `dad`.

- `focus` - Which character for the camera to focus on.

<details><summary>Example:</summary>
<p>

```lua
function onMoveCamera(focus)
     if focus == 'boyfriend' then
	     -- called when the camera focus on boyfriend
     end

     if focus == 'dad' then
	     -- called when the camera focus on dad
     end
end
```

</p>
</details>

### onEvent(name, value1, value2)
This will create your <ins>custom event script</ins>.

- `name` - The name of the event.
- `value1` - The first value to be set in value 1 tab.
- `value2` - The second value to be set in value 2 tab.

### eventEarlyTrigger(name)
This will make your custom event trigger earlier.
	
<details><summary>Example:</summary>
<p>

```lua
-- Here's a port of the Kill Henchmen early trigger but on Lua instead of Haxe
function eventEarlyTrigger(name)
     if name == 'Kill Henchmen' then
          -- This makes "Kill Henchmen" event be triggered 280 miliseconds earlier 
          -- so that the kill sound is perfectly timed with the song
          return 280 
     end
end
```

</p>
</details>

### onTimerCompleted(tag, loops, loopsLeft)
Will <ins>create a timer</ins> that's it.

- `tag` - The tag on the timer to use in `runTimer()` function.
- `loops` - The duration on the timer to start.
- `loopsLeft` - How many loops will the timer make.

### onTweenCompleted(tag)
If the tween on `onTimerCompleted()` is <ins>complete then this function will be triggered</ins>.

- `tag` - The tag on the timer to use in `runTimer()` function.