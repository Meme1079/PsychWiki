# Lua/Unique variables

Note: 
Those are the only variables that can be changed by using `= true` or `= false` for now, you will have to use [setProperty](https://github.com/Meme1079/PsychWiki/Lua-Script-API:-Value-Setting-and-Getting-Functions#setpropertyvariablestring-valuedynamic) if you want to change the rest of them.

- `Function_Stop` - Stops the game _(Must have return)_.
- `Function_Continue` - Continue the game _(Must have return)_.
- `luaDebugMode` - Enables debug mode, use `luaDebugMode = true` to enable it, Default value: `false`
- `luaDeprecatedWarnings` - Only works in Debug mode; use 'luaDeprecatedWarnings = false' to turn it off; default value is 'true'. Informs you if a function or variable is deprecated and shouldn't be used anymore.
- `inChartEditor` - Tells you if your script is running on Chart Editor's chart playtest.

***

# Song/Week Variables
- `curBpm` - Current BPM of the Song, shortcut to `getPropertyFromClass('Conductor', 'bpm')`.
- `bpm` - Starting BPM of the Song, shortcut to `getProperty('SONG.bpm')`.
- `scrollSpeed` - Starting Scroll speed of the Song, shortcut to `getProperty('SONG.speed')`.
- `crochet` - Interval between Beat hits.
- `stepCrochet` - Interval between Step hits.
- `songLength` - Song duration in milliseconds.
- `songName` - Self-explanatory, Shortcut to `getProperty('SONG.song')`.
- `isStoryMode` - Self-explanatory, Shortcut to `getProperty('isStoryMode')`.
- `difficulty` - Returns the difficulty ID [Easy = 0, Normal = 1, Hard = 2], Shortcut to `getProperty('storyDifficulty')`.
- `difficultyName` - Returns the difficulty Name.
- `weekRaw` - Returns the raw current week number. I doubt you will ever use this, but hey, just in case you do, it's here.
- `week` - Returns the properly formatted current week file name.

***

# Camera/Screen Variables
- `cameraX` - The current x position of camera, Shortcut to `getProperty('camFollowPos.s')`.
- `cameraY` - The current y position of camera, Shortcut to `getProperty('camFollowPos.y')`.
- `screenWidth` - The current width of the window, Shortcut to `getPropertyFromClass('FlxG', width)`.
- `screenHeight` - The current height of the window, Shortcut to `getPropertyFromClass('FlxG', heigth)`.

***

# Gameplay Variables
- `startedCountdown` - Tells you if the countdown already started.
- `skipCountdown` - Skips the countdown.
- `seenCutscene` - Is set to `true` after `onCreate()` function, Shortcut to `getProperty('seenCutscene')`.
- `curStep` - Current step number. _(Must be in `onStepHit()`)_
- `curDecStep` - Current decimal step number. _(Must be in `onStepHit()`)__
- `curBeat` - Current beat number. _(Must be in `onBeatHit()`)_
- `curDecBeat` - Current decimal beat number. _(Must be in `onBeatHit()`)_
- `curSection` - Current section number. _(Must be in `onSectionHit()`)_
- `score` - Current score, Shortcut to `getProperty('songScore')`.
- `misses` - Current total number of notes missed, Shortcut to `getProperty('songMisses')`.
- `ghostMisses` - Current number of Key press misses, Shortcut to `getProperty('ghostMisses')`.
- `hits` - Current number of notes hit, Shortcut to `getProperty('songHits')`.
- `rating` - Current rating percentage this goes from `0` to `1`, Shortcut to `getProperty('ratingPercent')`.
- `ratingName` - Current rating's name, Shortcut to `getProperty('ratingString')`.
- `ratingFC` - Current rating's combo, Shortcut to `getProperty('ratingFC')`.
- `mustHitSection` - Tells if the current section is a `Must Hit Section`. _(from Chart Editor)_
- `altAnim` - Tells if the current section is a `Alt Animation Section`. _(from Chart Editor)_
- `gfSection` - Tells if the current section is a `GF Section`. _(from Chart Editor)_
- `inGameOver` - When the player is the game over screen.
- `botPlay` - Tells if Botplay is enabled, Shortcut to `getProperty('cpuControlled')`.
- `version` - The version of Psych Engine that is currently in.
- `debugKeysChart` - The Chart Editor.
- `debugKeysCharacter` - The Character Editor.

***

# Strum/Receptor Variables
- `defaultPlayerStrumX0` - Player's default left arrow X.
- `defaultPlayerStrumY0` - Player's default left arrow Y.
- `defaultPlayerStrumX1` - Player's default down arrow X.
- `defaultPlayerStrumY1` - Player's default down arrow Y.
- `defaultPlayerStrumX2` - Player's default up arrow X.
- `defaultPlayerStrumY2` - Player's default up arrow Y.
- `defaultPlayerStrumX3` - Player's default right arrow X.
- `defaultPlayerStrumY3` - Player's default right arrow Y.
- `defaultOpponentStrumX0` - Opponent's default left arrow X.
- `defaultOpponentStrumY0` - Opponent's default left arrow Y.
- `defaultOpponentStrumX1` - Opponent's default down arrow X.
- `defaultOpponentStrumY1` - Opponent's default down arrow Y.
- `defaultOpponentStrumX2` - Opponent's default up arrow X.
- `defaultOpponentStrumY2` - Opponent's default up arrow Y.
- `defaultOpponentStrumX3` - Opponent's default right arrow X.
- `defaultOpponentStrumY3` - Opponent's default right arrow Y.

***

- `defaultBoyfriendX` - Player's Default X position, defined by the Stages `json` file.
- `defaultBoyfriendY` - Player's Default Y position, defined by the Stages `json` file.
- `defaultOpponentX` - Opponent's Default X position, defined by the Stages `json` file.
- `defaultOpponentY` - Opponent's Default Y position, defined by the Stages `json` file.
- `defaultGirlfriendX` - Girlfriend's Default X position, defined by the Stages `json` file.
- `defaultGirlfriendY` - Girlfriend's Default Y position, defined by the Stages `json` file.

***

# Preferences Variables

Note: All the shortcuts on Preferences Variables are `getPropertyFromClass('ClientPrefs', 'Preferences Variable')`.

Example: `getPropertyFromClass('ClientPrefs', 'downscroll')`

- `downscroll` - Sets the Player notes to down.
- `middlescroll` - Sets the Player notes to the centerfield. 
- `opponentStrums` - The `opponentStrums` visibility.  
- `framerate` - The current framerate limit. 
- `ghostTapping` - Ghost tapping is enabled. 
- `hideHud` - Hides the health, score, icons.
- `hideTime` - Hides the time bar.
- `cameraZoomOnBeat` - Every Section it does a Zoom .
- `flashingLights` - Use for people you have epilepsy. _(Recommended to disable it, if you have one!)_
- `noteOffset` - Represents the note delay in milliseconds, Goes from `0` to `500`,
- `lowQuality` - Enable's low quality which reduced sprites.
- `noResetButton` - Disable the reset button.
- `healthBarAlpha` - The Opacity of the health bar.
- `scoreZoom` - When you hit a note it does a zoom on `scoreTxt`.
- `shadersEnabled` - Enables the shader!