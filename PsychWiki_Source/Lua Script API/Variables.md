# Lua/Unique Variables
> **Note**: _These are the only variables can be change by using `= true` or `= false` for now; Example: `luaDebugMode = true`. For now you will have to use `setProperty()` function if you want to change the rest of the variables._

- `Function_Continue` - Continues the game; Returns `0`.
- `Function_StopLua` - Stops the game; Returns `1`.
- `Function_Stop` - Stops the Lua script; Returns `2`.
- `luaDebugMode` - Enables debug mode; default value: `false`.
- `luaDeprecatedWarnings` - Checks if the function or variable is deprecated or not; Only works in debug mode.
- `inChartEditor` - Checks if the Lua script is running inside the Chart Editor's chart playtest.

***

# Song/Week Variables
- `curStage` - Checks the current stage name from the JSON file name.
- `curBpm` - Returns the starting BPM value of the song.
- `bpm` - Checks the current BPM value of the song.
- `crochet` - Checks the interval between `curBeat` variable.
- `stepCrochet` - Checks the interval between `curStep` variable.
- `songLength` - Checks the current song length displayed in milliseconds.
- `songName` - Checks the current song name.
- `scrollSpeed` - Checks the scroll speed of the song.
- `isStoryMode` - Checks if the song is in story mode or not.
- `difficulty` - Returns the difficulty ID number.
- `difficultyName` - Returns the difficulty name.
- `weekRaw` - Returns the raw current week number.
- `week` - Returns the current week name from the JSON file name.
- `currentModDirectory` - Returns the current mod directory.

<details><summary><b>All Shortcuted to:</b></summary>
<p>

- `curStage` - `getPropertyFromClass('PlayState', 'SONG.stage')`
- `curBpm` - `getPropertyFromClass('Conductor', 'bpm')`
- `bpm` - `getProperty('SONG.bpm')`
- `crochet` - `getPropertyFromClass('Conductor', 'crochet')`
- `stepCrochet` - `getPropertyFromClass('Conductor', 'stepCrochet')`
- `songLength` - `getProperty('songLength')`
- `songName` - `getProperty('songLength')`
- `scrollSpeed` - `getProperty('SONG.speed')`
- `isStoryMode` - `getProperty('isStoryMode')`
- `difficulty` - `getPropertyFromClass('PlayState', 'storyDifficulty')`
- `difficultyName` - `getPropertyFromClass('CoolUtil', 'difficulties['..difficulty..']')`
- `weekRaw` - `getPropertyFromClass('PlayState', 'storyWeek')`
- `week` - `getPropertyFromClass('WeekData', 'weeksList['..weekRaw..']')`
- `currentModDirectory` - `getPropertyFromClass('Paths', 'currentModDirectory')`

</p>
</details>

***

# Gameplay Variables
- `curStep` - The current step per number.
- `curBeat` - The current beat per number.
- `curSection` - The current section per number.
- `curDecStep` - The current decimal step per number.
- `curDecBeat` - The current decimal beat per number.
- `score` - The current song score.
- `hits` - The current note hits.
- `misses` - The current song misses.
- `ghostMisses` - The current song ghost misses.
- `rating` - The current song score rating percent; Goes from `0` to `1`.
- `ratingName` - The current song score rating name.
- `ratingFC` - The current song score rating combo.
- `healthGainMult` - The current health gain when hitting a note.
- `healthLossMult` - The current health loss when missing a note.
- `instakillOnMiss` - If you miss you get insta-killed.
- `playbackRate` - The current play-back rate of the song.
- `startedCountdown` - Checks if the countdown has already begun.
- `seenCutscene` - Checks if the cutscene is seen.
- `botPlay` - Checks if botplay is enable or not.
- `practice` - Checks if practice is enable or not.
- `version` - Checks the current version of Psych Engine.
- `inGameOver` - Checks if the player is in game-over screen or not.
- `mustHitSection` - Checks if the section is in `Must Hit Section` from the Chart Editor.
- `altAnim` - Checks if the section is in `Alt Animation Section` from the Chart Editor.
- `gfSection` - Checks if the section is in `GF Section` from  theChart Editor.
- `scriptName` - Returns the location of the Lua script.
- `buildTarget` - Returns the build target of Psych Engine; Example: `windows`, `mac`, etc.

<details><summary><b>All Shortcuted to:</b></summary>
<p>

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
- `instakillOnMiss` - `getProperty('instakillOnMiss')`
- `playbackRate` - `getProperty('playbackRate')`
- `startedCountdown` - `getPropertyFromClass('PlayState', 'seenCutscene'))`
- `seenCutscene` - `getProperty('startedCountdown')`
- `botPlay` - `getProperty('cpuControlled')`
- `practice` - `getProperty('practiceMode')`
- `version` - `getPropertyFromClass('MainMenuState', 'psychEngineVersion')`

</p>
</details>

***

# Preferences Variables
- `downscroll` - Checks if downscoll is enabled or not.
- `middlescroll` - Checks if middlescrrol is enabled or not.
- `opponentStrums` - Checks the opponent strums visibility.  
- `framerate` - Checks the current framerate on the game. 
- `ghostTapping` - Checks if ghost tapping is enabled or not. 
- `hideHud` - Checks if the score bar/health bar elements are hidden or not
- `hideTime` - Checks if the time bar elements are hidden or not.
- `timeBarType` - Checks the time bar display type.
- `cameraZoomOnBeat` - Checks if the camera does a zoom on beat hit.
- `scoreZoom` - Checks if the score is being zoom when hitting a note.
- `flashingLights` - Enables flashing lights on a song(s). _(Disable it, if you have epilepsy!)_
- `shadersEnabled` - Enable shaders or not. _(Disable it, if you have motion sickness!)_
- `lowQuality` - Enables low quality on a song(s). _(Disable it, if you have a potato computer)_
- `noResetButton` - Enables the reset button.
- `noteOffset` - Checks the note offset displayed in milliseconds, Goes from `0` to `500`.
- `healthBarAlpha` - Checks the current alpha/opacity of the health bar.

<details><summary><b>All Shortcuted to:</b></summary>
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
- `scoreZoom` - `getPropertyFromClass('ClientPrefs', 'scoreZoom')`
- `flashingLights` - `getPropertyFromClass('ClientPrefs', 'flashing')`
- `shadersEnabled` - `getPropertyFromClass('ClientPrefs', 'shaders')`
- `lowQuality` - `getPropertyFromClass('ClientPrefs', 'lowQuality')`
- `noResetButton` - `getPropertyFromClass('ClientPrefs', 'noReset')`
- `noteOffset` - `getPropertyFromClass('ClientPrefs', 'noteOffset')`
- `healthBarAlpha` - `getPropertyFromClass('ClientPrefs', 'healthBarAlpha')`

</p>
</details>

***

# Strum Receptor/Character Variables
### Player Strum Positions
- `defaultPlayerStrumX0` - The player's <ins>left arrow</ins> default x position value.
- `defaultPlayerStrumX1` - The player's <ins>down arrow</ins> default x position value.
- `defaultPlayerStrumX2` - The player's <ins>up arrow</ins> default x position value.
- `defaultPlayerStrumX3` - The player's <ins>right arrow</ins> default x position value.
- `defaultPlayerStrumY0` - The player's <ins>left arrow</ins> default y position value.
- `defaultPlayerStrumY1` - The player's <ins>down arrow</ins> default y position value.
- `defaultPlayerStrumY2` - The player's <ins>up arrow</ins> default y position value.
- `defaultPlayerStrumY3` - The player's <ins>right arrow</ins> default y position value.

<details><summary><b>All Shortcuted to:</b></summary>
<p>

- `defaultPlayerStrumX0` - `getPropertyFromGroup('playerStrums.members', 0, 'x')`
- `defaultPlayerStrumX1` - `getPropertyFromGroup('playerStrums.members', 1, 'x')`
- `defaultPlayerStrumX2` - `getPropertyFromGroup('playerStrums.members', 2, 'x')`
- `defaultPlayerStrumX3` - `getPropertyFromGroup('playerStrums.members', 3, 'x')`
- `defaultPlayerStrumY0` - `getPropertyFromGroup('playerStrums.members', 0, 'y')`
- `defaultPlayerStrumY1` - `getPropertyFromGroup('playerStrums.members', 1, 'y')`
- `defaultPlayerStrumY2` - `getPropertyFromGroup('playerStrums.members', 2, 'y')`
- `defaultPlayerStrumY3` - `getPropertyFromGroup('playerStrums.members', 3, 'y')`

</p>
</details>

### Opponent Strum Positions
- `defaultOpponentStrumX0` - The opponent's <ins>left arrow</ins> default x position value.
- `defaultOpponentStrumX1` - The opponent's <ins>down arrow</ins> default x position value.
- `defaultOpponentStrumX2` - The opponent's <ins>up arrow</ins> default x position value.
- `defaultOpponentStrumX3` - The opponent's <ins>right arrow</ins> default x position value.
- `defaultOpponentStrumY0` - The opponent's <ins>left arrow</ins> default y position value.
- `defaultOpponentStrumY1` - The opponent's <ins>down arrow</ins> default y position value.
- `defaultOpponentStrumY2` - The opponent's <ins>up arrow</ins> default y position value.
- `defaultOpponentStrumY3` - The opponent's <ins>right arrow</ins> default y position value.

<details><summary><b>All Shortcuted to:</b></summary>
<p>

- `defaultOpponentStrumX0` - `getPropertyFromGroup('opponentStrums.members', 0, 'x')`
- `defaultOpponentStrumX1` - `getPropertyFromGroup('opponentStrums.members', 1, 'x')`
- `defaultOpponentStrumX2` - `getPropertyFromGroup('opponentStrums.members', 2, 'x')`
- `defaultOpponentStrumX3` - `getPropertyFromGroup('opponentStrums.members', 3, 'x')`
- `defaultOpponentStrumY0` - `getPropertyFromGroup('opponentStrums.members', 0, 'y')`
- `defaultOpponentStrumY1` - `getPropertyFromGroup('opponentStrums.members', 1, 'y')`
- `defaultOpponentStrumY2` - `getPropertyFromGroup('opponentStrums.members', 2, 'y')`
- `defaultOpponentStrumY3` - `getPropertyFromGroup('opponentStrums.members', 3, 'y')`

</p>
</details>

### Character Strum Positions
- `defaultBoyfriendX` - The player's default x position, defined by the stages JSON file.
- `defaultBoyfriendY` - The player's default y position, defined by the stages JSON file.
- `defaultOpponentX` - The opponent's default x position, defined by the stages JSON file.
- `defaultOpponentY` - The opponent's default y position, defined by the stages JSON file.
- `defaultGirlfriendX` - The girlfriend's default x position, defined by the stages JSON file.
- `defaultGirlfriendY` - The girlfriend's default x position, defined by the stages JSON file.

***

# Miscellaneous Variables
- `boyfriendName` - Checks the current boyfriend character.
- `dadName` - Checks the current dad character.
- `gfName` - Checks the current girlfriend character.
- `screenWidth` - Returns the current width of the winow screen; default value: `720`.
- `screenHeight` - Returns the current width of the window screen; default value: `1280`.
- `cameraX` - Returns the current x position of camera.
- `cameraY` - Returns the current y position of camera.


<details><summary><b>All Shortcuted to:</b></summary>
<p>

> 

- `boyfriendName` - `getProperty('SONG.player1')`
- `dadName` - `getProperty('SONG.player2')`
- `gfName` - `getProperty('SONG.gfVersion')`
- `screenWidth` - `getPropertyFromClass('FlxG', 'width')`
- `screenHeight` - `getPropertyFromClass('FlxG', 'heigth')`
- `cameraX` &darr;
     - Version `0.7.0` or Above - `getProperty('camFollowPos.x')`
     - Version `0.6.3` or Below - `getProperty('camGame.scroll.x')`
- `cameraY` &darr;
     - Version `0.7.0` or Above - `getProperty('camFollowPos.y')`
     - Version `0.6.3` or Below - `getProperty('camGame.scroll.y')`

</p>
</details>