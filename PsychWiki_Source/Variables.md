# Lua/Unique variables

Note: 
Those are the only variables that can be changed by using `= true` or `= false` for now, you will have to use [setProperty](https://github.com/Meme1079/PsychWiki/Lua-Script-API:-Value-Setting-and-Getting-Functions#setpropertyvariablestring-valuedynamic) if you want to change the rest of them.

- `Function_Stop` - Stops the game. _(Must have return)_
- `Function_StopLua` - Stops the any lua files. _(Must have return)_
- `Function_Continue` - Continue the game. _(Must have return)_
- `luaDebugMode` - Enables debug mode, use `luaDebugMode = true` to enable it, Default value: `false`
- `luaDeprecatedWarnings` - Only works in Debug mode; use `luaDeprecatedWarnings = false` to turn it off; default value is 'true'. Informs you if a function or variable is deprecated and shouldn't be used anymore.
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
- `difficultyName` - Returns the difficulty name.
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
- `startedCountdown` - Indicates whether the countdown has already begun, Shortcut to `getProperty('startedCountdown')`.
- `skipCountdown` - The countdown is skipped, Shortcut to `getProperty('skipCountdown')`.
- `seenCutscene` - Checks if the cutscene is seen, Shortcut to `getPropertyFromClass('PlayState', 'seenCutscene'))`.
- `curStep` - The current step number, Shortcut to `getProperty('curStep')`.
- `curDecStep` - The current decimal step number, Shortcut to `getProperty('curDecStep')`.
- `curBeat` - The current beat number, Shortcut to `getProperty('curBeat')`.
- `curDecBeat` - The current decimal beat number, Shortcut to `getProperty('curDecBeat')`.
- `curSection` - The current number, Shortcut to `getProperty('curSection')`.
- `score` - The current song score, Shortcut to `getProperty('songScore')`.
- `hits` - The current note hits, Shrotcut to `getProperty('songHits')`.
- `misses` - The current song misses, Shortcut to `getProperty('songMisses')`.
- `ghostMisses` - The current song ghost misses, Shortcut to `getProperty('ghostMisses')`.
- `rating` - The current rating percentage this goes from `0` to `1`, Shortcut to `getProperty('ratingPercent')`.
- `ratingName` - The current ratings name, Shortcut to `getProperty('ratingString')`.
- `ratingFC` - The current ratings combo, Shortcut to `getProperty('ratingFC')`.
- `inGameOver` - Tells if the player is in the game over screen.
- `mustHitSection` - Tells if the current section is a `Must Hit Section` from the Chart Editor.
- `altAnim` - Tells if the current section is a `Alt Animation Section` from the Chart Editor.
- `gfSection` - Tells if the current section is a `GF Section` from  theChart Editor.
- `healthGainMult` - The current health gain of hitting a note, Shortcut to `getProperty('healthGainMult')`.
- `healthLossMult` - The current health loss of missing a note, Shortcut to `getProperty('healthLossMult')`.
- `instakillOnMiss` - If you missed a note you die, Shortcut to `getProperty('instakillOnMiss')`.
- `botPlay` - Tells if botplay is enabled, Shortcut to `getProperty('cpuControlled')`.
- `practice` - Tells if practice is enabled, Shortcut to `getProperty('practiceMode')`.
- `version` - The version of Psych Engine that is currently in, Shortcut to `getPropertyFromClass('MainMenuState', 'psychEngineVersion')`.
- `debugKeysChart` - The Chart Editor key, Shortcut to `getProperty('debugKeysChart')`. 
- `debugKeysCharacter` - The Character Editor key, Shortcut to `getProperty('debugKeysCharacter')`.

***

# Character Variables
- `boyfriendName` - The name of the boyfriend character, Shortcut to `getProperty('SONG.player1')`.
- `dadName` - The name of the dad character, Shortcut to `getProperty('SONG.player2')`.
- `gfName` - The name of the girlfriend character, Shortcut to `getProperty('SONG.gfVersion')`.

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

Except: `scriptName`, `noResetButton`, `buildTarget`

Example: `getPropertyFromClass('ClientPrefs', 'downscroll')`

- `downscroll` - Checks if the player notes are in downscroll.
- `middlescroll` - Checks if the player notes are in centerfield.
- `opponentStrums` - Checks the opponents strums visibility.  
- `framerate` - Checks the current framerate on the game. 
- `ghostTapping` - Checks if ghost tapping is enabled. 
- `hideHud` - Checks if the accuracy bar, icons, and health bar is hidden.
- `hideTime` - Checks if the time bar is hidden.
- `timeBarType` - Checks the time bar displayed.
- `cameraZoomOnBeat` - Checks the camera zoom on beat.
- `flashingLights` - Checks if the song has flashing lights . _(Recommended to disable it, if you have one!)_
- `lowQuality` - Checks if the song is low quality. _(Recommended to enable it, if you have a potato computer)_
- `noteOffset` - Checks the note offset in milliseconds, Goes from `0` to `500`.
- `noResetButton` - Checks if the reset button is activated, Shortcut to `getPropertyFromClass('ClientPrefs', 'noReset')`.
- `healthBarAlpha` - Checks the alpha/opacity of the health bar.
- `scoreZoom` - Checks if the score is being zoom when hitting a note.
- `shadersEnabled` - Checks if the shaders is enabled.
- `scriptName` - Checks the script name that is running in game.
- `buildTarget` - Checks the build target of Psych Engine.