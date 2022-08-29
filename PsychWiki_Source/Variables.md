## Lua/Unique variables

### Note: Those are the only variables that can be changed by using = true or = false for now, you will have to use [setProperty()](https://github.com/ShadowMario/FNF-PsychEngine/wiki/Lua-Script-API:-Value-Setting-and-Getting-Functions#setpropertyvariablestring-valuedynamic) if you want to change the rest of them

- `Function_Stop` - Stops the game **(Must have return)**
- `Function_Continue` - Continue the game **(Must have return)**
- `luaDebugMode` - Enables debug mode, use luaDebugMode = true to enable it. Default value: false
- `luaDeprecatedWarnings` - Tells you if a function/variable is deprecated (shouldn't be used anymore), only works when Debug mode is on, use `luaDeprecatedWarnings = false` to disable it. Default value: `true`
- `inChartEditor` - Tells you if your script is running on Chart Editor's chart playtest.

***

### Song/Week Variables
- `curBpm` - Current BPM of the Song, shortcut to getPropertyFromClass('Conductor', 'bpm')
- `bpm` - Starting BPM of the Song, shortcut to getProperty('SONG.bpm')
- `scrollSpeed` - Starting Scroll speed of the Song, shortcut to getProperty('SONG.speed')
- `crochet` - Interval between Beat hits
- `stepCrochet` - Interval between Step hits
- `songLength` - Song duration in milliseconds
- `songName` - Shortcut to getProperty('SONG.song')
- `isStoryMode` - Shortcut to getProperty('isStoryMode')
- `difficulty` - Returns the difficulty ID (Easy = 0, Normal = 1, Hard = 2), Shortcut to `getProperty('storyDifficulty')`
- `difficultyName` - Returns the difficulty Name
- `weekRaw` - Returns the raw current week number. I doubt you will ever use this, but hey, just in case you do, it's here.
- `week` - Returns the properly formatted current week file name.

***

### Camera Variables
- `cameraX` - Shortcut to `getProperty('camFollowPos.x')`
- `cameraY` - Shortcut to `getProperty('camFollowPos.y')`

***

### Screen variables
- `screenWidth` - Shortcut to `getPropertyFromClass('FlxG', width)`
- `screenHeight` - Shortcut to `getPropertyFromClass('FlxG', heigth)`

***

### Gameplay Variables
- `startedCountdown` - Tells you if the countdown already started
- `seenCutscene` - Is set to `true` after `onCreate()` function, Shortcut to `getProperty('seenCutscene')`
- `curStep` - Current step number (**Highly recommend using in `onStepHit()`**)
- `curDecStep` - Current decimal step number (**Highly recommend using in `onStepHit()`**)
- `curBeat` - Current beat number (**Highly recommend using in `onBeatHit()`**)
- `curDecBeat` - Current decimal beat number (**Highly recommend using in `onBeatHit()`**)
- `curSection` - Current section number (**Highly recommend using in `onSectionHit()`**)
- `score` - Current score, Shortcut to `getProperty('songScore')`
- `misses` - Current total number of notes missed, Shortcut to `getProperty('songMisses')`
- `ghostMisses` - Current number of Key press misses, Shortcut to `getProperty('ghostMisses')`
- `hits` - Current number of notes hit. Shortcut to `getProperty('songHits')`
- `rating` - Current rating percentage, goes from `0` to `1`. Shortcut to `getProperty('ratingPercent')`
- `ratingName` - Current rating's name. Shortcut to `getProperty('ratingString')`
- `ratingFC` - Current rating's combo. Shortcut to `getProperty('ratingFC')`
- `mustHitSection` - Tells if the current section is a `Must Hit Section` (from Chart Editor)
- `altAnim` - Tells if the current section is a `Alt Animation Section` (from Chart Editor)
- `gfSection` - Tells if the current section is a `GF Section` (from Chart Editor)
- `inGameOver` - Player is Dead
- `botPlay` - Tells if Botplay is enabled. Shortcut to `getProperty('cpuControlled')`

***

### Strum/Receptor Variables
- `defaultPlayerStrumX0` - Player's default left arrow X
- `defaultPlayerStrumY0` - Player's default left arrow Y
- `defaultPlayerStrumX1` - Player's default down arrow X
- `defaultPlayerStrumY1` - Player's default down arrow Y
- `defaultPlayerStrumX2` - Player's default up arrow X
- `defaultPlayerStrumY2` - Player's default up arrow Y
- `defaultPlayerStrumX3` - Player's default right arrow X
- `defaultPlayerStrumY3` - Player's default right arrow Y
- `defaultOpponentStrumX0` - Opponent's default left arrow X
- `defaultOpponentStrumY0` - Opponent's default left arrow Y
- `defaultOpponentStrumX1` - Opponent's default down arrow X
- `defaultOpponentStrumY1` - Opponent's default down arrow Y
- `defaultOpponentStrumX2` - Opponent's default up arrow X
- `defaultOpponentStrumY2` - Opponent's default up arrow Y
- `defaultOpponentStrumX3` - Opponent's default right arrow X
- `defaultOpponentStrumY3` - Opponent's default right arrow Y

***

- `defaultBoyfriendX` - Player's Default X position, defined by the Stage's JSON file.
- `defaultBoyfriendY` - Player's Default Y position, defined by the Stage's JSON file.
- `defaultOpponentX` - Opponent's Default X position, defined by the Stage's JSON file.
- `defaultOpponentY` - Opponent's Default Y position, defined by the Stage's JSON file.
- `defaultGirlfriendX` - Girlfriend's Default X position, defined by the Stage's JSON file.
- `defaultGirlfriendY` - Girlfriend's Default Y position, defined by the Stage's JSON file.

***

### Preferences Variables

Note: All the shortcuts on Preferences Variables are `getPropertyFromGroup('ClientPrefs', 'the Preferences Variables')`

Example: `getPropertyFromGroup('ClientPrefs', 'downscroll')`

- `downscroll` - Sets the Player notes to down 
- `middlescroll` - Sets the Player notes to the centerfield 
- `opponentStrums` - The `opponentStrums` visibility  
- `framerate` - The current framerate limit 
- `ghostTapping` - Ghost tapping is enabled 
- `hideHud` - Hides the `health,score,time` 
- `hideTime` - Hides the time bar 
- `cameraZoomOnBeat` - Every Section it does a Zoom 
- `flashingLights` - Use for people you have epilepsy _(Recommended to disable it, if you have one!)_
- `noteOffset` - Represents the note delay in milliseconds (Goes from `0` to `500`)
- `lowQuality` - Enable's low quality which reduced sprites
- `noResetButton` - Disable the reset button
- `healthBarAlpha` - The Opacity of the health bar
- `scoreZoom` - When you hit a note it does a zoom on `scoreTxt`
- `shadersEnabled` - Enables the shader!

***

### NoteData Types

Note: if you're using these use it in `setPropertyFromGroup()` or `getPropertyFromGroup()`

- `noAnimation` - If you hit a note, will not play an animation **(Boolean)**
- `noMissAnimation` - If you miss a note, will not play an animation **(Boolean)**
- `hitCausesMiss` - If you hit a note, will cause to miss **(Boolean)**
- `texture` - The texture of the note skin **(String)**
- `noteSplashTexture` -  The texture of the note splash **(String)**
- `noteSplashDisabled` - Disables the note splashes **(Boolean)**
- `hitsoundDisabled` -  Disables the hitsounds **(Boolean)**
- `ratingDisabled` - Disables the ratings **(Boolean)**
- `noteSplashHue` - HUE of the note splash **(Int)**
- `noteSplashSat` - Saturation of the note splash **(Int)**
- `noteSplashBrt` - Brightness of the note splash **(Int)**
- `hitHealth` - If you hit a note, it will add a health and you can customize it! **(Int or Float)**
- `missHealth` - If you miss a note, it will add a health and you can customize it! **(Int or Float)**
- `noteType` - A custom note type **(String)**
- `ignoreNote` - If botplay is on then it will not hit the note **(Boolean)**
