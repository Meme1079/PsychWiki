# About
Before getting into it, a bit of context about this. An event is an action or occurrence that signify either a user events, such as pressing buttons or pausing, or a system events, such as spawning notes or the camera moving. When a specific event occurs the corresponding callback will be executed from that event.

Callbacks are special event handler functions that are dealt for specific events design for it. It uses a regular function syntax for its callbacks. Instead of being designed to be stored as data and be execute by another function, from an event listener function. This is were you'll put the designated code for a specific event. Some functions and variables are only exclusive and work properly with callbacks; additionally, it's the only way to get currently updating values for certain variables and functions.

Callbacks are also included in HScript. But with a slight alteration of the given parameters by giving its corresponding type, and may include extra parameters in some cases. With an added syntax alteration becuase of Haxe.

Examples:
```lua
function onCreate() -- start script
end

function onUpdate(elapsed) -- update every frame
end
```
```haxe
function onCreate() { // start script
}

function onUpdate(elapsed:Float) { // update every frame
}
```

***

# Event Callbacks
> [!NOTE]
> 

## Initiate Callbacks
### onCreate()
<ins>Triggered when the script has initiated/started</ins>, this is only triggered once. This is only used for creating objects, precaching, and setting and getting properties. 

### onCreatePost()
<ins>Triggered post initiation of the script,</ins> this is only triggered once. This only for manipulating its HUD elements, especially for the notes or splashes properties.

### onDestroy()
<ins>Triggered when the script has been destroyed</ins>, in other words the script has stop executing.

### onSongStart()
<ins>Triggered when the song start</ins> after the countdown ended.

### onEndSong()
<ins>Triggered when the song ends</ins> after the song's timer is completed.

## Gameplay Callbacks
### onStepHit()
<ins>Triggered every step, 16 beat per section</ins> of the song; this only executes after the countdown. Both the `curStep` and `curDecStep` variables must be recommended to be used here, since they were both specifically designed for this purpose.

### onBeatHit()
<ins>Triggered every beat, 4 beat per section</ins> of the song; this only executes after the countdown. Both the `curBeat` and `curDecBeat` variables must be recommended to be used here, since they were both specifically designed for this purpose.

### onSectionHit()
<ins>Triggered every 1 beat per section</ins> of the song; this only executes after the countdown. The `curSection` variable must be recommended to be used here, since it was specifically designed for this purpose.

### onMoveCamera(focus:String)
<ins>Triggered when the camera moves to focus on a specific character</ins>, either the player, opponent, or girlfriend.

- `focus` - The current character that the camera focus to; Could either return: `boyfriend`, `dad`, `gf`.

Example:
```lua
function onMoveCamera(focus)
     if focus == 'boyfriend' then 
          -- called if the section is a "Must Hit Section"; focusing the camera to boyfriend.
     elseif focus == 'dad' then
          -- called if the section is NOT a "Must Hit Section"; focusing the camera to dad.
     elseif focus == 'gf' then
          -- called if the section is a "GF Section"; focusing the camera to gf.
     end
end
```

## Gameplay & Score Update Callbacks
### onUpdate(elapsed:Float)
<ins>Triggered every current frame</ins> of the game, used for updating values from variables.

- `elapsed` - Every current frame display in milliseconds; Shortcut to `getPropertyFromClass('flixel.FlxG', 'elapsed')`.

### onUpdatePost(elapsed:Float)
<ins>Triggered after every current frame</ins> of the game, used for updating values from variables. This only for manipulating its HUD elements, especially for the notes or splashes properties.

- `elapsed` - Every current frame display in milliseconds; Shortcut to `getPropertyFromClass('flixel.FlxG', 'elapsed')`.

### onUpdateScore(miss:Bool)
<ins>Triggered before every score update</ins>, from hitting or missing notes. This is only recommended to be used for manipulating the score's current text content either by setting or getting.

- `miss` - Whether the player misses or not, returns `true` if missed.

Example:
```lua
local function round(num, decimals)
     local mult = 10^(decimals or 0)
     return math.floor(num * mult + 0.5) / mult
end

function onCreatePost()      -- Initial start
     setProperty('scoreTxt.text', 'Taxes: 0 • Ratios: 0 • Knuckles: ?')
end

function onUpdateScore(miss) -- Changes when the score updates
     local newScore    = 'Taxes: '..score..' • '
     local newMiss     = 'Ratios: '..misses..' • '
     local newAccuracy = 'Knuckles: '..ratingName..' ('..round(rating, 2)..'%)'..' - '..ratingFC
     setProperty('scoreTxt.text', newScore..newMiss..newAccuracy)
end
```

### preUpdateScore(miss:Bool)
<ins>Triggered every score update</ins>, from hitting or missing notes. This is only recommended to be used for manipulating the score's rating percent, name, and fc from their derived functions, from: `setRatingPercent()`, `setRatingName()`, `setRatingFC()` functions.

- `miss` - Whether the player misses or not, returns `true` if missed.

Example:
```lua
-- These will change the current ratings to:
-- Wario Wah (3.14%) - PP
function preUpdateScore(miss)
     setRatingPercent(math.pi / 100)
     setRatingName('Wario Wah')
     setRatingFC('PP')
end
```

### onRecalculateRating()
<ins>Triggered before the calculation of the rating data</ins>.

## Countdown Callbacks
### onStartCountdown()
<ins>Triggered before the countdown</ins> has started.

### onCountdownStarted()
<ins>Triggered when the countdown</ins> has already been started, the note's strumlines will update to their new positions.

Example:
```lua
-- Swaps the player and opponent positions opposite to each-other
local playerStrumLines   = {732, 844, 956, 1068}
local opponentStrumLines = {92, 204, 316, 428}
function onCountdownStarted()
     for ind = 0,3 do            -- stupid for loop
          local newInd = ind + 1 -- becuase lua uses 1-index for its table
          setPropertyFromGroup('playerStrums', ind, 'x', opponentStrumLines[newInd])
          setPropertyFromGroup('opponentStrums', ind, 'x', playerStrumLines[newInd])
     end
end
```

### onCountdownTick(counter:Int)
<ins>Triggered in every countdown tick</ins> until it ends.

- `counter` - The current countdown tick; Goes from `0` to `4`.

Example:
```lua
local countdownContent = {'Three', 'Two', 'One', 'Go!', 'The song starts here'}
function onCountdownStarted(counter)
     debugPrint('Counter Tick: '..counter..' = '..countdownContent[counter + 1])
     --> Counter Tick: 0 = Three
     --> Counter Tick: 1 = Two
     --> Counter Tick: 2 = One
     --> Counter Tick: 3 = Go!
     --> Counter Tick: 4 = The song starts here
end
```

## Dialogue Callbacks
### onNextDialogue(dialogueCount:Int)
<ins>Triggered when the next dialogue line starts</ins>.

- `dialogueCount` - The current dialogue line; Starts at `1`.

### onSkipDialogue(dialogueCount:Int)
<ins>Triggered when skipping a dialogue</ins> that was still being typed.

- `dialogueCount` - The current dialogue line; Starts at `1`.

## Note Callbacks
> [!NOTE]
> The parameters of each callback of this section have been listed here. Due to stupid the repetitive copy and paste on each callbacks description. And all of theme just work the same as usual. If you want to know what parameters the don't include or include stuff and it type on each callbacks. Just check the title, idiot.

- `membersIndex` - The current note member ID index.
- `noteData` - The current direction index of the note; Goes from: `0` to `3`, basically left, down, up and right.
- `noteType` - The current notetype of the note.
- `isSustainNote` - Whether the notes are sustain (long notes) or not.
- `strumTime` - The current strum time of the note, if the notes are sustain.

***

### onSpawnNote(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float, strumTime:Float)
<ins>Triggered on every note that has spawned</ins>.

### goodNoteHit(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float)
<ins>Triggered if the player hits</ins> the note.

### opponentNoteHit(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float)
<ins>Triggered if the opponent hits</ins> the note.

### goodNoteHitPre(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float)
<ins>Triggered before the player note</ins> hit calculations.

### opponentNoteHitPre(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float)
<ins>Triggered before the opponent note</ins> hit calculations.

### noteMiss(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float)
<ins>Triggered if the player misses</ins> a note.

### noteMissPress(noteData:Int)
<ins>Triggered if the player mispresses</ins> while a note isn't present.

## Key Callbacks
> [!NOTE]
> The parameters of each callback of this section have been listed here. Due to stupid the repetitive copy and paste on each callbacks description. And all of theme just work the same as usual. If you want to know what parameters the don't include or include stuff and it type on each callbacks. Just check the title, idiot.

- `key` - The key associate for each note direction index; Goes from: `0` to `3`, basically left, down, up and right. 

***

### onKeyPress(key:Int)
<ins>Triggered if the player presses</ins> their own key associate for each note.

### onKeyRelease(key:Int)
<ins>Triggered if the player releases</ins> their own key associate for each note.

### onKeyPressPre(key:Int)
<ins>Triggered before any calculation when the player presses</ins> their own key associate for each note.

### onKeyReleasePre(key:Int)
<ins>Triggered before any calculation when the player releases</ins> their own key associate for each note.

### onGhostTap(key:Int)
<ins>Triggered if the player mispresses</ins> their own key associate for each note.

## Event Hook Callbacks
> [!NOTE]
> The parameters of each callback of this section have been listed here. Due to stupid the repetitive copy and paste on each callbacks description. And all of theme just work the same as usual. If you want to know what parameters the don't include or include stuff and it type on each callbacks. Just check the title, idiot.

- `eventName` - The said event name from the played event note.
- `value1` - The first value inherited by the event.
- `value2` - The secondary value inherited by the event.
- `strumTime` - The strum time where the event was executed.

### onEvent(eventName:String, value1:String, value2:String, strumTime:Float)
<ins>Triggered if an event note executes</ins> or from the `triggerEvent()` function. This is where you put the functionality of the event, for each corresponding event name.

### onEventPushed(eventName:String, value1:String, value2:String, strumTime:Float)
<ins>Triggered for every event note</ins> inside the chart.

### eventEarlyTrigger(eventName:String)
<ins>Makes the specific event trigger earlier</ins>. By returning the specified amount of offset before executing in milliseconds.


Example:
```lua
function eventEarlyTrigger(eventName)
     if eventName == 'Your event' then
          return 1000; -- will return 1 second earlier
     end
end
```

## Substates & Gameover Substate Callbacks
### onPause()
Triggered if the game is currently paused.

### onResume()
<ins>Triggered if the game resumed</ins> from being paused.

### onGameOver()
<ins>Triggered if the health has reach</ins> no value causing a game-over screen.

### onGameOverStart()
Triggered if the game has started a game-over screen.

### onGameOverConfirm(retry:Bool)
Triggered if the player confirms a retry or exit to menu.

- `retry` - Whether the player retries in the game-over screen or not.

## Complete Hook Callbacks
### onTimerCompleted(tag:String, loops:Int, loopsLeft:Int)
### onTweenCompleted(tag:String, vars:String)
### onSoundFinished(tag:String)

***

# Dynamic Callback Functions
## PlayState
### updateIconsPosition()
### updateIconsScale(elapsed)
### updateScore(miss)
### fullComboFunction()

## FPSCounter
### updateText()

## Discord
### shutdown()

***

# Callbacks Affected by `Function_Stop`

***

# Callbacks Altered by Haxe

***

# Deprecated Callbacks