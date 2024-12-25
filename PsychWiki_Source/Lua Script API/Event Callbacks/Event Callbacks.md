# About
Events are a action or occurence that signify either a user event, such as pressing buttons or pausing, or a system event, such as spawning notes or the camera moving. When a specific event occurs the corresponding callback will be executed from that event.

Event callbacks are special type of event handler functions that are used to dealt for specific events design for it. It uses a regular function for utilizing the event callbacks, with the corresponding name attached to the event. For instance: `onUpdate()` event callback, it calls on every update of each frame. The body of the event callback is were you'll put the designated code for that specific event. 

They can used both either in Lua scripts or HScripts, with a bit of syntax alteration. Tho the parameters of some event callbacks are different to each scripts, see the differences of event callback parameters.

Examples:
```lua
function onCreate()
     -- starts on create
end
```
```haxe
function onCreate() {
     // starts on create
}
```

Furthermore functions and variables from Psych Engine can only have their functionality working exclusively to that event callback. If called outside or in different event callbacks, it will either only have nothing, unupdated, or a constant value. A great example of this is the `curBeat` variable, it will change on every beat of the section. When called from outside, it will remain constant, whereas when called from separate event callbacks, it will either remain constant or updated.

## Toggleability
> *For more information; Main article:* [Toggleability]()

Event callbacks have a special ability to completely disable their functionality together. This special functionality can be used for creating custom functionality for that callback or just completely disabling it. To disable the callback's functionality completely, just return the `Function_Stop` variable within the said callback to disable.

## Dynamic Callbacks
> *For more information; Main article:* [Dynamic Callbacks]()

Dynamic callbacks are a special unqiue callbacks that are only exclusive to HScripts entirely. They have the ability to override the original functionality of the callback. 

***

# Event Callbacks
## Initiating
### onCreate()
<ins>Triggered when the script has initiated or started running</ins>, this only triggered once throughout the script. This is used for creating objects—such as sprites and texts, precaching, or setting and getting certain properties.

### onCreatePost()
<ins>Triggered after the initiation, post start of the script</ins>, this only triggered once throughout the script. This is used for manipulating the HUD elements, such as healthbar, score, and especially both the note and splashes.

### onDestroy()
<ins>Triggered when the script has been completely destroyed</ins>, i.e. has stop execution. This only triggered once throughout the script. Such as exiting said song, quitting the game, going through different states (i.e. menu, debug mode, etc), etc.

### onSongStart()
<ins>Triggered when the song starts</ins>, after the countdown has ended.

### onEndSong()
<ins>Triggered when the song ends</ins>, after the duration length has completed.

## Gameplay
### onStepHit()
<ins>Triggered every step, 16-beat per section of the song</ins>; this only executes after the countdown. Both the `curStep` and `curDecStep` variables must be recommended to be used here, since they were both specifically designed for this purpose.

Example:
```lua
function onStepHit()
     if curStep == 23 then
          -- insert awesome code
     elseif curStep == 34 then
          -- insert awesome code
     elseif curStep == 45 then
          -- insert awesome code
     end
end
```

### onBeatHit()
<ins>Triggered every beat, 4-beat per section of the song</ins>; this only executes after the countdown. Both the `curBeat` and `curDecBeat` variables must be recommended to be used here, since they were both specifically designed for this purpose.

Example:
```lua
function onBeatHit()
     if curBeat == 2 then
          -- insert awesome code
     elseif curBeat == 6 then
          -- insert awesome code
     elseif curBeat == 10 then
          -- insert awesome code
     end
end
```

### onSectionHit()
<ins>Triggered every 1-beat per section of the song</ins>; this only executes after the countdown. The `curSection` variable must be recommended to be used here, since it was specifically designed for this purpose.

Example:
```lua
function onSectionHit()
     if curBeat == 1 then
          -- insert awesome code
     elseif curBeat == 3 then
          -- insert awesome code
     elseif curBeat == 5 then
          -- insert awesome code
     end
end
```

### onMoveCamera(focus:String)
Triggered when the camera focuses to a specific target character.

- `focus` - The specified character type to focus at; Can be either: `boyfriend`, `dad`, or `gf`.

Example:
```lua
function onMoveCamera(focus)
     if focus == 'boyfriend' then -- called if the section is a "Must Hit Section"
          -- insert code
     elseif focus == 'dad' then   -- called if the section is NOT a "Must Hit Section"
          -- insert code
     elseif focus == 'gf' then    -- called if the section is a "GF Section"
          -- insert her
     end
end
```

### onUpdate(elapsed:Float)
<ins>Triggers every frame of the game</ins>, used for updating certain variable values.

- `elapsed` - Every current frame display in milliseconds; Shortcut to `getPropertyFromClass('flixel.FlxG', 'elapsed')`.

### onUpdatePost(elapsed:Float)
<ins>Triggers after every frame of the game</ins>, used for updating certain variable values. Such as manipulating the HUD elements, such as healthbar, score, and especially both the note and splashes.

- `elapsed` - Every current frame display in milliseconds; Shortcut to `getPropertyFromClass('flixel.FlxG', 'elapsed')`.

## Score
### onUpdateScore(miss:Bool)
<ins>Triggered every score rating update calculations</ins>, such as hitting or missing notes. Used for manipulating the score's rating percent, name, and combo names from their derived functions, from: `setRatingPercent()`, `setRatingName()`, `setRatingFC()` functions.

- `miss` - Whether the player misses a note or not.

Example:
> Creates a custom score rating text.
```lua
local function round(num, decimals)
     return math.floor(num * 10^(decimals or 0)) / 10^(decimals or 0)
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
<ins>Triggered before every score rating update calculations</ins>, such as hitting or missing notes. Used for manipulating the score's current text and properties.

- `miss` - Whether the player misses a note or not.

Example:
> Creates a new rating system within the score rating text, will format to: `Wario Wah (3.14%) - PP`.
```lua
function preUpdateScore(miss)
     setRatingPercent(math.pi / 100)
     setRatingName('Wario Wah')
     setRatingFC('PP')
end
```

### onRecalculateRating()
Triggered before any calculations of the rating data.

## Countdown
### onStartCountdown()
<ins>Triggered before the countdown has even started</ins>, this only triggered once throughout the script. This is used for playing dialogues, videos, and other cutscene related stuff or smth idk.

Example:
```lua
function onStartCountdown()
     startVideo('myAwesomeVideo')
end
```

### onCountdownStarted()
<ins>Triggered when the countdown already started</ins>, this only triggered once throughout the script. Certain stuff has already been updated, such as the note's strumlines updating to their corresponding new position.

Example:
> Switches the corresponding positions on both the player and opponent strums.
```lua
local playerStrumLines   = {732, 844, 956, 1068}
local opponentStrumLines = {92, 204, 316, 428}
function onCountdownStarted()
     for ind = 0,3 do            -- stupid for loop
          local newInd = ind + 1 -- because lua uses 1-index for its table
          setPropertyFromGroup('playerStrums', ind, 'x', opponentStrumLines[newInd])
          setPropertyFromGroup('opponentStrums', ind, 'x', playerStrumLines[newInd])
     end
end
```

### onCountdownTick(counter:Int)
Triggeres every countdown tick until it ended.

- `counter` - The current counter tick number, will go from `4` to `0`.

Example:
> Prints each countdown tick, the bottom example displays each print of the loop.
```lua
local countdownContent = {'Three', 'Two', 'One', 'Go!', 'The song starts here'}
function onCountdownStarted(counter)
     debugPrint('Counter Tick: '..counter..' = '..countdownContent[counter + 1])
end
```
```txt
Counter Tick: 0 = Three
Counter Tick: 1 = Two
Counter Tick: 2 = One
Counter Tick: 3 = Go!
Counter Tick: 4 = The song starts here
```

## Dialogue
### onNextDialogue(dialogueCount:Int)
Triggers when the next dialogue line starts.

- `dialogueCount` - The current dialogue line count; Starting value: `1`.

### onSkipDialogue(dialogueCount:Int)
Triggers when skipping a dialogue while it was still being typed and loaded.

- `dialogueCount` - The current dialogue line count; Starting value: `1`.

## Note
> [!NOTE]
> _The parameters for each callback in this section are listed here. Due to stupid, repetitive copy and paste in each callback description. They all work the same as usual in each callback, If you want to know which parameters are included or not, look at each callbacks title, idiot._

- `membersIndex` - The current note member ID number.
- `noteData` - The current direction index of the note; Goes from: `0` to `3`, basically left, down, up and right.
- `noteType` - The current note-type of the note.
- `isSustainNote` - Whether the notes are sustain (long notes) or not.
- `strumTime` - The strum time of the notes appearing in game in milliseconds.

### onSpawnNote(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float, strumTime:Float)
Triggers every <ins>note spawning currently in the game</ins>.

### goodNoteHit(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float)
Triggers every <ins>good note hit from the **player**</ins>.

### opponentNoteHit(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float)
Triggers every <ins>good note hit from the **opponent**</ins>.

### goodNoteHitPre(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float)
Triggers before every <ins>good note hit calculation from the **player**</ins>.

### opponentNoteHitPre(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float)
Triggers before every <ins>good note hit calculation from the **opponent**</ins>.

### noteMiss(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float)
Triggers every <ins>note miss from the player</ins>.

### noteMissPress(noteData:Int)
Triggers every <ins>misspress from the player, while no note is present</ins>. This wont trigger, if ghost-tapping is enabled from the options menu.

## Key Pressing
> [!NOTE]
> _The parameters for each callback in this section are listed here. Due to stupid, repetitive copy and paste in each callback description. They all work the same as usual in each callback, If you want to know which parameters are included or not, look at each callbacks title, idiot._

- `key` - The key associate for each note direction index; Goes from: `0` to `3`, basically left, down, up and right. 

### onKeyPress(key:Int)
Triggers <ins>every initial key presses</ins> from each associated keybinds for each notes.

### onKeyPressPre(key:Int)
Triggers <ins>before every initial key presses calculations</ins> from each associated keybinds for each notes.

### onKeyRelease(key:Int)
Triggers <ins>every recently released keys after being pressed</ins> from each associated keybinds for each notes.

### onKeyReleasePre(key:Int)
Triggers <ins>before every recently released key calculations after being pressed</ins> from each associated keybinds for each notes.

### onGhostTap(key:Int)
Triggers if the player ghost taps.

## Substates
### onPause()
Triggered if the game currently paused from playing.

### onResume()
Triggered if the game resumed after being paused.

### onGameOver()
Triggered before the game has started a game-over screen, this only triggered once throughout the script. Basically in other words—the health has no health left causing a game-over screen to appear immediately.

### onGameOverStart()
Triggered when the game-over screen has been started, this only triggered once throughout the script. Certain stuff has already been updated, such as the game-over character has been loaded and the game-over music is playing.

### onGameOverConfirm(retry:Bool)
Triggered when the player confirms a retry or has exited to the menu from skill issue.

- `retry` - Whether the player confirmed a retry in the game-over screen or not.

## Event Hook
> [!NOTE]
> _The parameters for each callback in this section are listed here. Due to stupid, repetitive copy and paste in each callback description. They all work the same as usual in each callback, If you want to know which parameters are included or not, look at each callbacks title, idiot._

- `eventName` - The current event name that was executed currently.
- `value1` - The current first value inherited by the event.
- `value2` - The current second value inherited by the event.
- `strumTime` - The strum time of the notes appearing in game.

### onEvent(eventName:String, value1:String, value2:String, strumTime:Float)
<ins>Triggers every event note that is currently executed</ins> either from the chart editor or from the `triggerEvent()` function. This is where you'll put the code from the given event note.

### onEventPushed(eventName:String, value1:String, value2:String, strumTime:Float)
<ins>Triggers only once when every event note loads within the game</ins>. This is only specifically used for precaching objects, like sprites or sound and music.

### eventEarlyTrigger(eventName:String)
<ins>Triggered the event note much more earlier by offsetting it by milliseconds</ins>. It must be returning the specified number in milliseconds on each event name.

## Complete Hook
### onTimerCompleted(tag:String, loops:Int, loopsLeft:Int)
Triggered when the <ins>timer has been completed</ins>.

- `tag` - The finished timer tag name.
- `loops` - The amount of loops inherited from the finished timer.
- `loopsLeft` - The amount of loops left does the finsished timer has. 

### onTweenCompleted(tag:String, object:String)
Triggered when the <ins>tween has been completed</ins>.

- `tag` - The finished tween tag name.
- `object` - The given object tag name inherited when the tween played.

### onSoundFinished(tag:String)
Triggered when the <ins>sound has been completed</ins>.

- `tag` - The finished sound tag name.