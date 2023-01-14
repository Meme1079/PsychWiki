# Lua/Unique variables
> **Note**: _Those are the only variables that can be changed by using `= true` or `= false` for now, you will have to use [`setProperty()`](https://github.com/Meme1079/PsychWiki/Lua-Script-API:-Value-Setting-and-Getting-Functions#setpropertyvariablestring-valuedynamic) if you want to change the rest of them._

- `Function_Continue` - Continues the game, Will return to `1`; The `return` keyword is used here.
- `Function_Stop` - Stops the game, Will return to `2`; The `return` keyword is used here.
- `Function_StopLua` - Stops any lua files to be runed, Will return to `3`; The `return` keyword is used here.
- `luaDebugMode` - Enables debug mode.
- `luaDeprecatedWarnings` - Informs you if a function or variable is deprecated and shouldn't be used anymore. Only works in Debug mode.
- `inChartEditor` - Tells you if your script is running on Chart Editor's chart playtest.

***

# Song/Week Variables
- `curStage` - The current stage of the song.
- `curBpm` - The current BPM of the song.
- `bpm` - The starting BPM of the song.
- `scrollSpeed` - The starting scroll speed of the song.
- `crochet` - The interval between Beat hits.
- `stepCrochet` - The interval between Step hits.
- `songLength` - The song duration in milliseconds.
- `songName` - The current song name of the song.
- `isStoryMode` - Tells if it's in story mode.
- `difficulty` - Returns the difficulty ID number.
- `difficultyName` - Returns the difficulty name to be chosen.
- `weekRaw` - Returns the raw current week number. I am 99% doubt you will ever use this ever in your life.
- `week` - Returns the properly formatted current week file name.
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
- `difficulty` - `getPropertyFromClass('PlayState', 'storyDifficulty')`
- `difficultyName` - `getPropertyFromClass('CoolUtil', 'difficulties['..difficulty..']')`
- `weekRaw` - `getPropertyFromClass('PlayState', 'storyWeek')`
- `week` - `getPropertyFromClass('WeekData', 'weeksList['..getProperty('storyWeek')..']')`
- `currentModDirectory` - `getPropertyFromClass('Paths', 'currentModDirectory')`

</p>
</details>

***

# Gameplay Variables
- `startedCountdown` - Indicates whether the countdown has already begun.
- `seenCutscene` - Checks if the cutscene is seen.
- `curStep` - The current step number.
- `curBeat` - The current beat number.
- `curSection` - The current section number.
- `curDecBeat` - The current decimal beat number.
- `curDecStep` - The current decimal step number.
- `score` - The current song score.
- `hits` - The current note hits.
- `misses` - The current song misses.
- `ghostMisses` - The current song ghost misses.
- `rating` - The current rating percentage, Goes from `0` to `1`.
- `ratingName` - The current rating name.
- `ratingFC` - The current rating combo.
- `inGameOver` - Tells if the player is inside the game over screen. 
- `mustHitSection` - Tells if the current section is a `Must Hit Section` from the Chart Editor.
- `altAnim` - Tells if the current section is a `Alt Animation Section` from the Chart Editor.
- `gfSection` - Tells if the current section is a `GF Section` from  theChart Editor.
- `healthGainMult` - The current health gain when hitting a note.
- `healthLossMult` - The current health loss when missing a note.
- `playbackRate` - The current playback rate on the song.
- `instakillOnMiss` - If you missed a note you die.
- `botPlay` - Tells if botplay mode is enabled.
- `practice` - Tells if practice mode is enabled.
- `version` - The version of Psych Engine that is currently in.

<details><summary><b>All Shortcut to:</b></summary>
<p>

- `startedCountdown` - `getProperty('startedCountdown')`
- `seenCutscene` - `getPropertyFromClass('PlayState', 'seenCutscene'))`
- `curStep` - `getProperty('curStep')`
- `curBeat` - `getProperty('curBeat')`
- `curSection` - `getProperty('curSection')`
- `curDecStep` - `getProperty('curDecStep')`
- `curDecBeat` - `getProperty('curDecBeat')`
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

# Preferences Variables
- `downscroll` - Checks if downscoll is enabled.
- `middlescroll` - Checks if middlescrrol is enabled.
- `opponentStrums` - Checks the opponents strums visibility.  
- `framerate` - Checks the current framerate on the game. 
- `ghostTapping` - Checks if ghost tapping is enabled. 
- `hideHud` - Checks if the accuracy bar, icons, and health bar are hidden.
- `hideTime` - Checks if the time bar is hidden.
- `timeBarType` - Checks the time bar displayed.
- `cameraZoomOnBeat` - Checks the camera zoom on beat.
- `flashingLights` - Checks if the song has flashing lights. _(Recommended to disable it, if you have epilepsy!)_
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

***

# Miscellaneous Variables
- `cameraX` - The current x position of camera, Shortcut to `getProperty('camFollowPos.s')`.
- `cameraY` - The current y position of camera, Shortcut to `getProperty('camFollowPos.y')`.
- `screenWidth` - The current width of the window, Shortcut to `getPropertyFromClass('FlxG', width)`.
- `screenHeight` - The current height of the window, Shortcut to `getPropertyFromClass('FlxG', heigth)`.
- `boyfriendName` - The name of the boyfriend character, Shortcut to `getProperty('SONG.player1')`.
- `dadName` - The name of the dad character, Shortcut to `getProperty('SONG.player2')`.
- `gfName` - The name of the girlfriend character, Shortcut to `getProperty('SONG.gfVersion')`.

***

# Strum Receptor/Character Variables
- `defaultPlayerStrumX0` - Players default <ins>left arrow</ins> X.
- `defaultPlayerStrumX1` - Players default <ins>down arrow</ins> X.
- `defaultPlayerStrumX2` - Players default <ins>up arrow</ins> X.
- `defaultPlayerStrumX3` - Players default <ins>right arrow</ins> X.
- `defaultPlayerStrumY0` - Players default <ins>left arrow</ins> Y.
- `defaultPlayerStrumY1` - Players default <ins>down arrow</ins> Y.
- `defaultPlayerStrumY2` - Players default <ins>up arrow</ins> Y.
- `defaultPlayerStrumY3` - Players default <ins>right arrow</ins> Y.
- `defaultOpponentStrumX0` - Opponents default <ins>left arrow</ins> X.
- `defaultOpponentStrumX1` - Opponents default <ins>down arrow</ins> X.
- `defaultOpponentStrumX2` - Opponents default <ins>up arrow</ins> X.
- `defaultOpponentStrumX3` - Opponents default <ins>right arrow</ins> X.
- `defaultOpponentStrumY0` - Opponents default <ins>left arrow</ins> Y.
- `defaultOpponentStrumY1` - Opponents default <ins>down arrow</ins> Y.
- `defaultOpponentStrumY2` - Opponents default <ins>up arrow</ins> Y.
- `defaultOpponentStrumY3` - Opponents default <ins>right arrow</ins> Y.

***

- `defaultBoyfriendX` - Players default X position, defined by the stages `json` file.
- `defaultBoyfriendY` - Players default Y position, defined by the stages `json` file.
- `defaultOpponentX` - Opponents default X position, defined by the stages `json` file.
- `defaultOpponentY` - Opponents default Y position, defined by the stages `json` file.
- `defaultGirlfriendX` - Girlfriends default X position, defined by the stages `json` file.
- `defaultGirlfriendY` - Girlfriends default Y position, defined by the stages `json` file.