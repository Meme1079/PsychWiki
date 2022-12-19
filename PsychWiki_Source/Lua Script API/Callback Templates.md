# Start/End functions
### onCreate()
Triggered at the <ins>start of the lua script</ins>, used for creating or setting objects and precaching. Some variables weren't created yet.

### onCreatePost()
Triggered at the <ins>post/after start of the lua script</ins>.

### onDestroy()
Triggered at the end of the lua script.

***

# Gameplay/Song Functions
### onBeatHit()
Triggered <ins>4 times per section</ins>; recommended to use `curBeat` and `curDecBeat` variable in here.

### onStepHit()
Triggered <ins>16 times per section</ins>; recommended to use `curStep` and `curDecStep` variable in here.

### onSectionHit()
Triggered <ins>1 times per section</ins>; recommended to use `curSection` variable in here.

### onUpdate(elapsed)
Triggered in <ins>every frame of the game</ins>.

### onUpdatePost(elapsed)
Triggered in <ins>every post/after frame of the game</ins>.

### onUpdateScore(miss)
Triggered in every update of the score in the game.

### onSongStart()
Triggered at the start of the song and the countdown ending.

### onEndSong()
Triggered at the end of the song, it will be delayed if you unlocked an achievment.

Add `return Function_Stop` if you want to stop the song from ending. If not, use `return Function_Continue` if you want to <ins>end the song</ins>.

***

# Countdown Functions
### onStartCountdown()
Triggered at the start of the countdown, used for dialogue and cutscene stuff. If you want to trigger the countdown use `startCountdown()`. 

Add `return Function_Stop` if you want to stop the countdown from happening. If not, use `return Function_Continue` if you want to <ins>continue the countdown from happening</ins>.

### onCountdownStarted()
Triggered during the countdown.

### onCountdownTick(counter)
Triggered in each countdown tick.

- `counter` - Each countdown tick sound, Goes from `0` to `4`. 

<details><summary><b>Example:</b></summary>
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
Triggered while you're in the pause screen.

Add `return Function_Stop` if you want to stop the player from going to the pause screen. If not, use `return Function_Continue` if you want to <ins>access the pause screen</ins>.

### onResume()
Triggered after the game has been resumed from a pause. Not necessarily from the pause screen, but most likely is.

### onGameOver()
Triggered if you gat a game-over screen or the health is equal to zero.

Add `return Function_Stop` if you don't want to go to the game-over screen. If not, use `return Function_Continue` if you want to <ins>access the game-over screen</ins>.

### onGameOverConfirm(retry)
Triggered when pressing the retry button on the game-over screen. 

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

<details><summary><b>Example:</b></summary>
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
     elseif focus == 'dad' then
	     -- called when the camera focus on dad
     end
end
```

</p>
</details>

### onSoundFinished(tag)
If the sound has finished playing. Then the `tag` parameter of the sound will be called here

- `tag` - The sound tag from the `playSound()` function.

***

### onEvent(name, value1, value2)
This will create your custom event script.

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
Will create a timer.

- `tag` - The tag on the timer to use in `runTimer()` function.
- `loops` - The duration on the timer to start.
- `loopsLeft` - An optional parameter, how many loops will the timer make.

### onTweenCompleted(tag)
If the tween that has been called in `onTimerCompleted()` function has been completed. Then the `tag` parameter will be called here.

- `tag` - The tag on the timer to use in `runTimer()` function.