# About
Before getting into it, a bit of context about this. An event is an action or occurrence that signify either a user events, such as pressing buttons or pausing, or a system events, such as spawning notes or the camera moving. When a specific event occurs the corresponding callback will be executed from that event.

Callbacks are special event handler functions that are dealt for specific events design for it. It uses a regular function syntax for its callbacks. Instead of being designed to be stored as data and be execute by another function, from an event listener function. This is were you'll put the designated code for a specific event. Some functions and variables are only have their functionality exclusive to callbacks. For instance updated values for variables and some functions like the `getProperty()` function.

Examples:
```lua
function onCreate()
     -- starts on create
end

function onUpdate(elapsed)
     -- update every frame
end
```
```haxe
function onCreate() {
     // starts on create
}

function onUpdate(elapsed:Float) {
     // update every frame
}
```

## Disabling Callbacks
> *For more information; Main article:* Disabling Callbacks

Callbacks have the ability to be disabled completely, this is done by returning `Function_Stop` variable inside the said callback. This is useful for making your own custom functionality for that callback or disabling the callback altogether. But this is only applied to specific callbacks that have this ability.

Example:
```lua
function onGameOver()
     return Function_Stop
end
```

## Dynamic Callbacks
> *For more information; Main article:* Dynamic Callbacks

Dynamic callbacks are only exclusive to HScript or the `runHaxeCode()` function. It has the ability to override the original functionality by reassigning it with new function content and with the given parameters, if included.

Example:
```haxe
function onCreatePost() {
     game.updateIconsPosition = function() {
          game.iconP1.x = 314;
          game.iconP2.x = 114;
     }
}
```

***

# Event Callbacks
## Initiate Callbacks
### onCreate()
<ins>Triggered when the script has initiated/started</ins>, this is only triggered once. This is only used for c<ins>reating objects, precaching, or setting and getting properties</ins>.

### onCreatePost()
Triggered <ins>post initiation/start of the script</ins>, this is only triggered once. This is only for manipulating its HUD elements, especially for the <ins>notes or splash properties</ins>.

### onDestroy()
<ins>Triggered when the script has been destroyed</ins>, in other words the script has stop executing.

### onSongStart()
Triggered when the <ins>song starts</ins>, after the countdown has ended.

### onEndSong()
Triggered when the <ins>song ends</ins>, after the song's timer has completed.

## Gameplay Callbacks
### onStepHit()
Triggered <ins>every step, `16` beat per section of the song</ins>; this only executes after the countdown. Both the `curStep` and `curDecStep` variables must be recommended to be used here, since they were both specifically designed for this purpose.

### onBeatHit()
Triggered <ins>every beat, `4` beat per section of the song</ins>; this only executes after the countdown. Both the `curBeat` and `curDecBeat` variables must be recommended to be used here, since they were both specifically designed for this purpose.

### onSectionHit()
Triggered <ins>every `1` beat per section of the song</ins>; this only executes after the countdown. The `curSection` variable must be recommended to be used here, since it was specifically designed for this purpose.

### onMoveCamera(focus:String)
Triggered when the <ins>camera moves to focus on a specific character</ins>. It could either focus on the player, opponent, or girlfriend.

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

## Gameplay & Score Update Callbacks
### onUpdate(elapsed:Float)
<ins>Triggered every current frame of the game</ins>, used for updating values from variables.

- `elapsed` - Every current frame display in milliseconds; Shortcut to `getPropertyFromClass('flixel.FlxG', 'elapsed')`.

### onUpdatePost(elapsed:Float)
Triggered <ins>after every current frame of the game</ins>, used for updating values from variables. This only for manipulating its HUD elements, especially for the notes or splashes properties.

- `elapsed` - Every current frame display in milliseconds; Shortcut to `getPropertyFromClass('flixel.FlxG', 'elapsed')`.

### onUpdateScore(miss:Bool)
Triggered <ins>before every score update, from hitting or missing notes</ins>. This is only recommended to be used for <ins>manipulating the score's current text content</ins> either by setting or getting.

- `miss` - Whether the player misses or not, returns `true` if missed.

Example:
> An example of a custom score text.
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
Triggered every score update, from hitting or missing notes. This is only recommended to be used for manipulating the score's rating percent, name, and combo names from their derived functions, from: `setRatingPercent()`, `setRatingName()`, `setRatingFC()` functions.

- `miss` - Whether the player misses or not, returns `true` if missed.

Example:
> Changes the current score's ratings to: `Wario Wah (3.14%) - PP`, statically.
```lua
function preUpdateScore(miss)
     setRatingPercent(math.pi / 100)
     setRatingName('Wario Wah')
     setRatingFC('PP')
end
```

### onRecalculateRating()
Triggered <ins>before the calculation of the rating data</ins>.

## Countdown Callbacks
### onStartCountdown()
Triggered <ins>before the countdown has even started</ins>, this is only triggered once. This is recommended to be used for <ins>playing dialogues, vidoes, and other cutscene related stuff</ins>.

### onCountdownStarted()
<ins>Triggered when the countdown has already been started</ins>, this is only triggered once. Some stuff has been updated like the <ins>note's strumlines will update to their new positions</ins>.

Example:
> Swaps the player and opponent positions opposite to each-other.
```lua
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
Triggered in <ins>every countdown counter tick until it ended</ins>.

- `counter` - The current countdown counter tick; Goes from `0` to `4`.

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
Triggered when the <ins>next dialogue line starts</ins>.

- `dialogueCount` - The current dialogue line; Starts at `1`.

### onSkipDialogue(dialogueCount:Int)
Triggered when <ins>skipping a dialogue that was still being typed/loaded</ins>.

- `dialogueCount` - The current dialogue line; Starts at `1`.

## Note Callbacks
> [!NOTE]
> _The parameters for each callback in this section are listed here. Due to stupid, repetitive copy and paste in each callback description. They all work the same as usual in each callback, If you want to know which parameters are included or not, look at each callbacks title, idiot._

- `membersIndex` - The current note member ID index.
- `noteData` - The current direction index of the note; Goes from: `0` to `3`, basically left, down, up and right.
- `noteType` - The current notetype of the note.
- `isSustainNote` - Whether the notes are sustain (long notes) or not.
- `strumTime` - The strum time of the notes appearing in game.

### onSpawnNote(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float, strumTime:Float)
Triggered on <ins>every note that has currently spawned</ins>.

### goodNoteHit(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float)
Triggered on <ins>each **note hit** from the **player**</ins>.

### goodNoteHitPre(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float)
Triggered <ins>**before note hit** calculations from the **player**</ins>.

### opponentNoteHit(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float)
Triggered on <ins>each **note hit** from the **opponent**</ins>.

### opponentNoteHitPre(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float)
Triggered <ins>**before note hit** calculations from the **opponent**</ins>.

### noteMiss(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float)
Triggered on <ins>each **note miss** from the **player**</ins>.

### noteMissPress(noteData:Int)
Triggered on <ins>each **misspress** from the **player**, while no note isn't present</ins>. This will be disabled if the "Ghost Tapping" option is enabled.

## Key Pressing Callbacks
> [!NOTE]
> _The parameters for each callback in this section are listed here. Due to stupid, repetitive copy and paste in each callback description. They all work the same as usual in each callback, If you want to know which parameters are included or not, look at each callbacks title, idiot._

- `key` - The key associate for each note direction index; Goes from: `0` to `3`, basically left, down, up and right. 

### onKeyPress(key:Int)
Triggered if the <ins>player **presses** their own key</ins> associate for each note strum.

### onKeyPressPre(key:Int)
Triggered <ins>**before any calculation** when the player **presses** their own key</ins> associate for each note strum.

### onKeyRelease(key:Int)
Triggered if the <ins>player **releases** their own key</ins> associate for each note strum.

### onKeyReleasePre(key:Int)
Triggered <ins>**before any calculation** when the player **releases** their own key</ins> associate for each note strum.

### onGhostTap(key:Int)
Triggered if the <ins>player did a ghost tap for each note strum</ins>.

## Event Hook Callbacks
> [!NOTE]
> _The parameters for each callback in this section are listed here. Due to stupid, repetitive copy and paste in each callback description. They all work the same as usual in each callback, If you want to know which parameters are included or not, look at each callbacks title, idiot._

- `eventName` - The current event name that was executed currently.
- `value1` - The current first value inherited by the event.
- `value2` - The current second value inherited by the event.
- `strumTime` - The strum time of the notes appearing in game.

### onEvent(eventName:String, value1:String, value2:String, strumTime:Float)
Triggered on <ins>each event note that is currently executed</ins> or from the `triggerEvent()` function. This is where <ins>you'll put each custom event code functionality</ins>.

### onEventPushed(eventName:String, value1:String, value2:String, strumTime:Float)
Triggered only once when the game's event note loads; <ins>every event note inside the chart</ins>. This only used for <ins>precaching events that use certain assets like image, sound, etc</ins>.

### eventEarlyTrigger(eventName:String)
Triggered the <ins>event note much more earlier by offsetting it by milliseconds</ins>. It must be returning the <ins>specified number in milliseconds on each event name</ins>.

Example:
> The event "Hey!" will be triggered earlier by `1` second.
```lua
function eventEarlyTrigger(eventName)
     if eventName == 'Hey!' then
          return 1000
     end
end
```

## Substates & Gameover Substate Callbacks
### onPause()
Triggered if the <ins>game is currently paused</ins>.

### onResume()
Triggered if the <ins>game resumed from being paused</ins>.

### onGameOver()
Triggered <ins>before the game has started a game-over screen</ins>, this is only triggered once. Basically in other words—the health has no health left causing a game-over screen to appear immediately.

### onGameOverStart()
Triggered <ins>when the game-over screen has been started</ins>, this is only triggered once. Some stuff has been updated, <ins>the game-over character has been loaded and the game-over music is playing</ins>.

### onGameOverConfirm(retry:Bool)
Triggered when the <ins>player confirmed a retry</ins> or exited to the menu.

- `retry` - Whether the player confirmed a retry in the game-over screen or not.

## Complete Hook Callbacks
### onTimerCompleted(tag:String, loops:Int, loopsLeft:Int)
Triggered <ins>when the **timer**</ins> from the `runTimer()` function has completed its timer.

- `tag` - The current timer tag name that has finished executed currently.
- `loops` - The current loops that the timer inherited.
- `loopsLeft` - How many number of loops left does the timer has.

### onTweenCompleted(tag:String, vars:String)
Triggered <ins>when the **tween**</ins> from any tween functions has completed its timer.

- `tag` - The current tween tag name that has finished executed currently.
- `vars` - The object of the tag that it inherited.

### onSoundFinished(tag:String)
Triggered <ins>when the **sound**</ins> has completed its timer.

- `tag` - The current sound tag name that has finished executed currently.

***

# See also
- Deprecated Callbacks
- Unique Haxe Parameter Callbacks