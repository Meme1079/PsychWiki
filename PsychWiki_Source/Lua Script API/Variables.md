# Lua/Unique variables
> **Note**: _Those are the only variables that can be changed by using `= true` or `= false` for now, you will have to use [`setProperty()`](https://github.com/Meme1079/PsychWiki/Lua-Script-API:-Value-Setting-and-Getting-Functions#setpropertyvariablestring-valuedynamic) if you want to change the rest of them._

- `Function_Continue` - Continue the game, the `return` keyword is necessary, Will return to `1`.
- `Function_Stop` - Stops the game, the `return` keyword is necessary, Will return to `2`.
- `Function_StopLua` - Stops the any lua files, the `return` keyword is necessary, Will return to `3`.
- `luaDebugMode` - Enables debug mode, use `luaDebugMode = true` to enable it, Default value: `false`.
- `luaDeprecatedWarnings` - Only works in Debug mode; use `luaDeprecatedWarnings = false` to turn it off; Default value is `true`. Informs you if a function or variable is deprecated and shouldn't be used anymore.
- `inChartEditor` - Tells you if your script is running on Chart Editor's chart playtest.

***

# Song/Week Variables
- `curStage` - The current stage of the song.
- `curBpm` - The current BPM of the song.
- `bpm` - The starting BPM of the song.
- `scrollSpeed` - The starting Scroll speed of the song.
- `crochet` - The interval between Beat hits.
- `stepCrochet` - The interval between Step hits.
- `songLength` - The song duration in milliseconds.
- `songName` - The song name to be chosen.
- `isStoryMode` - Tells if its in story mode.
- `difficulty` - Returns the difficulty ID number.
- `difficultyName` - Returns the difficulty name to be chosen.
- `week` - Returns the properly formatted current week file name.
- `weekRaw` - Returns the raw current week number. I doubt you will ever use this, but hey, just in case you do, its here.
- `currentModDirectory` - Checks the current mod directory.

<details><summary><b>All Shortcut to:</b></summary>
<p>

- `curStage` - `getPropertyFromClass('PlayState', 'SONG.stage')`
- `curBpm` - `getPropertyFromClass('Conductor', 'bpm')`
- `bpm` - `getProperty('SONG.bpm')`
- `scrollSpeed` - `getProperty('SONG.speed')`
- `crochet` - `getPropertyFromClass('Conductor', 'crochet')`
- `stepCrochet` - `getPropertyFromClass('Conductor', 'stepCrochet')`
- `songLength` - `getProperty('songLength')`
- `songName` - `getProperty('SONG.song')`
- `isStoryMode` - `getProperty('isStoryMode')`
- `difficulty` - `getProperty('storyDifficulty')`
- `difficultyName` - `getPropertyFromClass('CoolUtil', 'difficulties['..getProperty('storyDifficulty')..']')`
- `week` - `getPropertyFromClass('WeekData', 'weeksList['..getProperty('storyWeek')..']')`
- `weekRaw` - `getPropertyFromClass('PlayState', 'storyWeek')`
- `currentModDirectory` - `getPropertyFromClass('Paths', 'currentModDirectory')`

</p>
</details>

***

# Gameplay Variables
- `startedCountdown` - Indicates whether the countdown has already begun.
- `seenCutscene` - Checks if the cutscene is seen.
- `curStep` - The current step number.
- `curDecStep` - The current decimal step number.
- `curBeat` - The current beat number.
- `curDecBeat` - The current decimal beat number.
- `curSection` - The current number.
- `curStage` - The stages name.
- `score` - The current song score.
- `hits` - The current note hits.
- `misses` - The current song misses.
- `ghostMisses` - The current song ghost misses.
- `rating` - The current rating percentage, Goes from `0` to `1`.
- `ratingName` - The current ratings name.
- `ratingFC` - The current ratings combo.
- `inGameOver` - Tells if the player is in the game over screen. 
- `mustHitSection` - Tells if the current section is a `Must Hit Section` from the Chart Editor.
- `altAnim` - Tells if the current section is a `Alt Animation Section` from the Chart Editor.
- `gfSection` - Tells if the current section is a `GF Section` from  theChart Editor.
- `healthGainMult` - The current health gain of hitting a note.
- `healthLossMult` - The current health loss of missing a note.
- `playbackRate` - The current playback rate on the song.
- `instakillOnMiss` - If you missed a note you die.
- `botPlay` - Tells if botplay is enabled.
- `practice` - Tells if practice is enabled.
- `version` - The version of Psych Engine that is currently in.

<details><summary><b>All Shortcut to:</b></summary>
<p>

- `startedCountdown` - `getProperty('startedCountdown')`
- `seenCutscene` - `getPropertyFromClass('PlayState', 'seenCutscene'))`
- `curStep` - `getProperty('curStep')`
- `curDecStep` - `getProperty('curDecStep')`
- `curBeat` - `getProperty('curBeat')`
- `curDecBeat` - `getProperty('curDecBeat')`
- `curSection` - `getProperty('curSection')`
- `score` - `getProperty('songScore')`
- `hits` - `getProperty('songHits')`
- `misses` - `getProperty('songMisses')`
- `ghostMisses` - `getProperty('ghostMisses')`
- `rating` - `getProperty('ratingPercent')`
- `ratingName` - `getProperty('ratingString')`
- `ratingFC` - `getProperty('ratingFC')`
- `healthGainMult` - `getProperty('healthGainMult')`
- `healthLossMult` - `getProperty('healthLossMult')`
- `playbackRate` - `getProperty('playbackRate')`
- `instakillOnMiss` - `getProperty('instakillOnMiss')`
- `botPlay` - `getProperty('cpuControlled')`
- `practice` - `getProperty('practiceMode')`
- `version` - `getPropertyFromClass('MainMenuState', 'psychEngineVersion')`

</p>
</details>

***

# Camera/Screen Variables
- `cameraX` - The current x position of camera, Shortcut to `getProperty('camFollowPos.s')`.
- `cameraY` - The current y position of camera, Shortcut to `getProperty('camFollowPos.y')`.
- `screenWidth` - The current width of the window, Shortcut to `getPropertyFromClass('FlxG', width)`.
- `screenHeight` - The current height of the window, Shortcut to `getPropertyFromClass('FlxG', heigth)`.

***

# Character Variables
- `boyfriendName` - The name of the boyfriend character, Shortcut to `getProperty('SONG.player1')`.
- `dadName` - The name of the dad character, Shortcut to `getProperty('SONG.player2')`.
- `gfName` - The name of the girlfriend character, Shortcut to `getProperty('SONG.gfVersion')`.

***

# Strum Receptor/Character Variables
- `defaultPlayerStrumX0` - Players default left arrow X.
- `defaultPlayerStrumY0` - Players default left arrow Y.
- `defaultPlayerStrumX1` - Players default down arrow X.
- `defaultPlayerStrumY1` - Players default down arrow Y.
- `defaultPlayerStrumX2` - Players default up arrow X.
- `defaultPlayerStrumY2` - Players default up arrow Y.
- `defaultPlayerStrumX3` - Players default right arrow X.
- `defaultPlayerStrumY3` - Players default right arrow Y.
- `defaultOpponentStrumX0` - Opponents default left arrow X.
- `defaultOpponentStrumY0` - Opponents default left arrow Y.
- `defaultOpponentStrumX1` - Opponents default down arrow X.
- `defaultOpponentStrumY1` - Opponents default down arrow Y.
- `defaultOpponentStrumX2` - Opponents default up arrow X.
- `defaultOpponentStrumY2` - Opponents default up arrow Y.
- `defaultOpponentStrumX3` - Opponents default right arrow X.
- `defaultOpponentStrumY3` - Opponents default right arrow Y.

***

- `defaultBoyfriendX` - Players default X position, defined by the stages `json` file.
- `defaultBoyfriendY` - Players default Y position, defined by the stages `json` file.
- `defaultOpponentX` - Opponents default X position, defined by the stages `json` file.
- `defaultOpponentY` - Opponents default Y position, defined by the stages `json` file.
- `defaultGirlfriendX` - Girlfriends default X position, defined by the stages `json` file.
- `defaultGirlfriendY` - Girlfriends default Y position, defined by the stages `json` file.

***

# Preferences Variables
- `downscroll` - Checks if the player notes are in downscroll.
- `middlescroll` - Checks if the player notes are in centerfield.
- `opponentStrums` - Checks the opponents strums visibility.  
- `framerate` - Checks the current framerate on the game. 
- `ghostTapping` - Checks if ghost tapping is enabled. 
- `hideHud` - Checks if the accuracy bar, icons, and health bar is hidden.
- `hideTime` - Checks if the time bar is hidden.
- `timeBarType` - Checks the time bar displayed.
- `cameraZoomOnBeat` - Checks the camera zoom on beat.
- `flashingLights` - Checks if the song has flashing lights. _(Recommended to disable it, if you have one!)_
- `lowQuality` - Checks if the song is low quality. _(Recommended to enable it, if you have a potato computer)_
- `noteOffset` - Checks the note offset in milliseconds, Goes from `0` to `500`.
- `noResetButton` - Checks if the reset button is activated.
- `healthBarAlpha` - Checks the alpha/opacity of the health bar.
- `scoreZoom` - Checks if the score is being zoom when hitting a note.
- `shadersEnabled` - Checks if the shaders is enabled. _(Recommended to disable it, if you have motion sickness!)_
- `scriptName` - Checks the script name that is running in game.
- `buildTarget` - Checks the build target of Psych Engine.

<details><summary><b>All Shortcut to:</b></summary>
<p>

- `downscroll` - `getPropertyFromClass('ClientPrefs', 'downscroll')`
- `middlescroll` - `getPropertyFromClass('ClientPrefs', 'middlescroll')`
- `opponentStrums` - `getPropertyFromClass('ClientPrefs', 'opponentStrums')`
- `framerate` - `getPropertyFromClass('ClientPrefs', 'framerate')`
- `ghostTapping` - `getPropertyFromClass('ClientPrefs', 'ghostTapping')`
- `hideHud` - `getPropertyFromClass('ClientPrefs', 'hideHud')`
- `hideTime` - `getPropertyFromClass('ClientPrefs', 'hideTime')`
- `timeBarType` - `getPropertyFromClass('ClientPrefs', 'timeBarType')`
- `cameraZoomOnBeat` - `getPropertyFromClass('ClientPrefs', 'cameraZooms')`
- `flashingLights` - `getPropertyFromClass('ClientPrefs', 'flashing')`
- `noteOffset` - `getPropertyFromClass('ClientPrefs', 'noteOffset')`
- `noResetButton` - `getPropertyFromClass('ClientPrefs', 'noReset')`
- `healthBarAlpha` - `getPropertyFromClass('ClientPrefs', 'healthBarAlpha')`
- `scoreZoom` - `getPropertyFromClass('ClientPrefs', 'scoreZoom')`
- `noteOffset` - `getPropertyFromClass('ClientPrefs', 'noteOffset')`
- `shadersEnabled` - `getPropertyFromClass('ClientPrefs', 'shaders')`

</p>
</details>