# Unique Lua Variables
> **Note**: _These are the only variables can be change by using `= true` or `= false` for now; Example: `luaDebugMode = true`. For now you will have to use `setProperty()` function if you want to change the rest of the variables._

- `Function_StopLua` - Stops all Lua script currently executing.
- `Function_StopHScript` - Stops all Haxe script currently executing.
- `Function_StopAll` - Stops all scripts currently executing.
- `Function_Stop` - Stops the function.
- `Function_Continue` - Continues the function.
- `luaDebugMode` - Enables debug mode; Default value: `false`.
- `luaDeprecatedWarnings` - Checks if the function or variable is deprecated or not; Only works in debug mode tho.
- `inChartEditor` - Checks if the Lua script is running inside the Chart Editor's chart playtest.

***

# Song & Week Variables
- `curBpm` Checks the current BPM value of the song.
- `bpm` - Returns the starting BPM value of the song.
- `scrollSpeed` - Checks the scroll speed of the song.
- `crochet` - Checks the interval between `curBeat` variable.
- `stepCrochet` - Checks the interval between `curStep` variable.
- `songLength` - Returns the maximum song length displayed in milliseconds.
- `songName` - Returns the current song name. (CASE SENSITIVE)
- `songPath` - Returns the song's path.
- `startedCountdown` - Checks if the countdown has already begun.
- `curStage` - Checks the current stage of the song.
- `isStoryMode` - Checks if the song is in story mode or not.
- `difficulty` - Returns the current difficulty ID number.
- `difficultyName` - Returns the current difficulty name. (CASE SENSITIVE)
- `difficultyPath` - Returns the current difficulties path.
- `weekRaw` - Returns the raw current week number.
- `week` - Returns the current week name from the JSON file name.
- `seenCutscene` - Checks if the cutscene is seen.
- `hasVocals` - Checks if the song has vocals enable or not.

<details><summary><b>All Shortcut to:</b></summary>
<p>

- `curBpm` - `getPropertyFromClass('backend.Conductor', 'bpm')`
- `bpm` - `getPropertyFromClass('states.PlayState', 'SONG.bpm')` 
- `scrollSpeed` - `getPropertyFromClass('states.PlayState', 'SONG.speed')`
- `crochet` - `getPropertyFromClass('backend.Conductor', 'crochet')`
- `stepCrochet` - `getPropertyFromClass('backend.Conductor', 'stepCrochet')`
- `songLength` - `getPropertyFromClass('flixel.FlxG', 'sound.music.length')`
- `songName` - `getPropertyFromClass('states.PlayState', 'SONG.song')`
- `songPath` - `getPropertyFromClass('backend.Paths', 'formatToSongPath('..songName..')')`
- `startedCountdown` - `getProperty('startedCountdown')`
- `curStage` - `getPropertyFromClass('states.Playstate', 'curStage')`
- `isStoryMode` - `getPropertyFromClass('states.Playstate', 'isStoryMode')`
- `difficulty` - `getPropertyFromClass('states.Playstate', 'storyDifficulty')`
- `difficultyName` - `getPropertyFromClass('backend.Difficulty', 'getString()')`
- `difficultyPath` - `getPropertyFromClass('backend.Paths', 'formatToSongPath('..difficultyName..')')`
- `weekRaw` - `getPropertyFromClass('states.Playstate', 'storyWeek')`
- `week` - `getPropertyFromClass('backend.WeekData', 'weeksList['..weekRaw..']')`
- `seenCutscene` - `getPropertyFromClass('states.PlayState', 'bpm')`
- `hasVocals` - `getPropertyFromClass('states.PlayState', 'SONG.needsVoices')`

<details><summary><b>Deprecated Original Shorcuts:</b></summary>
<p>

- `curBpm` - `getPropertyFromClass('Conductor', 'bpm')`
- `bpm` - `getPropertyFromClass('PlayState', 'SONG.bpm')` 
- `scrollSpeed` - `getPropertyFromClass('PlayState', 'SONG.speed')`
- `crochet` - `getPropertyFromClass('Conductor', 'crochet')`
- `stepCrochet` - `getPropertyFromClass('Conductor', 'stepCrochet')`
- `songLength` - `getPropertyFromClass('FlxG', 'sound.music.length')`
- `songName` - `getPropertyFromClass('PlayState', 'SONG.song')`
- `songPath` - `getPropertyFromClass('Paths', 'formatToSongPath('..songName..')')`
- `startedCountdown` - `getProperty('startedCountdown')`
- `curStage` - `getPropertyFromClass('Playstate', 'curStage')`
- `isStoryMode` - `getPropertyFromClass('Playstate', 'isStoryMode')`
- `difficulty` - `getPropertyFromClass('PlayState', 'storyDifficulty')`
- `difficultyName` - `getPropertyFromClass('CoolUtil', 'difficulties['..difficulty..']')`
- `difficultyPath` - `getPropertyFromClass('Paths', 'formatToSongPath(Difficulty.getString())')`
- `weekRaw` - `getPropertyFromClass('Playstate', 'storyWeek')`
- `week` - `getPropertyFromClass('WeekData', 'weeksList['..weekRaw..']')`
- `seenCutscene` - `getPropertyFromClass('PlayState', 'bpm')`
- `hasVocals` - `getPropertyFromClass('PlayState', 'SONG.needsVoices')`

</p>
</details>

</p>
</details>

***

# PlayState Variables
- `curStep` - The current step per number.
- `curBeat` - The current beat per number.
- `curSection` - The current section per number.
- `curDecStep` - The current decimal step per number.
- `curDecBeat` - The current decimal beat per number.
- `score` - The current amount of score inside the song.
- `misses` - The current amount of note misses inside the song.
- `hits` - The current amount of note hits inside the song.
- `combo` - The current amount of note combo inside the song.
- `rating` - The current song score rating percent; Goes from `0` to `1`.
- `ratingName` - The current song score rating name.
- `ratingFC` - The current song score rating combo.
- `version` - The current version of Psych Engine.
- `inGameOver` - Checks if the player is in game-over screen or not.
- `mustHitSection` - Checks if the section is in `Must Hit Section` from the Chart Editor.
- `altAnim` - Checks if the section is in `Alt Animation Section` from the Chart Editor.
- `gfSection` - Checks if the section is in `GF Section` from the Chart Editor.
- `buildTarget` - Checks the current build target of Psych Engine; Returns: `windows`, `linux`, `mac`, `browser`, `android`, `unknown`.

<details><summary><b>All Shortcut to:</b></summary>
<p>

- `curStep` - `getProperty('curStep')`
- `curBeat` - `getProperty('curBeat')`
- `curSection` - `getProperty('curSection')`
- `curDecStep` - `getProperty('curDecStep')`
- `curDecBeat` - `getProperty('curDecBeat')`
- `score` - `getProperty('songScore')`
- `misses` - `getProperty('songMisses')`
- `hits` - `getProperty('songHits')`
- `combo` - `getProperty('combo')`
- `rating` - `getProperty('ratingPercent')`
- `ratingName` - `getProperty('ratingName')`
- `ratingFC` - `getProperty('ratingFC')`
- `version` - `getPropertyFromClass('states.MainMenuState', 'psychEngineVersion')`

<details><summary><b>Deprecated Original Shorcuts:</b></summary>
<p>

- `version` - `getPropertyFromClass('MainMenuState', 'psychEngineVersion')`

</p>
</details>

</p>
</details>

***

# Gameplay Settings Variables
- `healthGainMult` - The amount of health gain when hitting a note.
- `healthLossMult` - The amount of health loss when missing/missinputing a note.
- `playbackRate` - The amount of play-back rate of the song.
- `instakillOnMiss` - Enables instant death when missing/missinputing a note.
- `botPlay` - Checks if botplay mode is enable or not.
- `practice` - Checks if practice mode is enable or not.

<details><summary><b>All Shortcut to:</b></summary>
<p>

- `healthGainMult` - `getProperty('healthGain')`
- `healthLossMult` - `getProperty('healthLoss')`
- `playbackRate` - `getProperty('playbackRate')`
- `instakillOnMiss` - `getProperty('instakillOnMiss')`
- `botPlay` - `getProperty('cpuControlled')`
- `practice` - `getProperty('practiceMode')`

</p>
</details>

***

# Client Preferences Variables
- `downscroll` - Checks if downscroll is enable or not.
- `middlescroll` - Checks if middlescroll is enable or not.
- `framerate` - Checks the current framerate inside the 
- `ghostTapping` - Checks if ghost tapping is enable or not.
- `hideHud` - Checks if the score bar/health bar elements are hidden or not.
- `timeBarType` - Checks the current time-bar display type.
- `scoreZoom` - Checks if the score is being zoom when hitting a note.
- `cameraZoomOnBeat` - Checks if the camera does a zoom on beat hit.
- `flashingLights` - Checks if flishing lights is enable or not. _(Disable this, if you have epilepsy!)_
- `noteOffset` - Checks the note offset displayed in milliseconds; Goes from `0` to `500`.
- `healthBarAlpha` - Checks the current amount of alpha/opacity value of the health bar.
- `noResetButton` - Checks if the reset button is enable or not.
- `lowQuality` - Checks if low quality on songs, is enable or not. _(Disable it, if you have a potato computer)_
- `shadersEnabled` - Checks if shaders is enable or not. _(Disable it, if you have motion sickness!)_
- `scriptName` - Checks the current script name.
- `currentModDirectory` - Checks the current mod directory.
- `noteSkin` - The current noteskin that you're using.
- `splashSkin` - The current splashskin that you're using.
- `splashAlpha` - The current alpha/opacity value of the splashnote.

<details><summary><b>All Shortcut to:</b></summary>
<p>

- `downscroll` - `getPropertyFromClass('backend.ClientPrefs', 'data.downScroll')`
- `middlescroll` - `getPropertyFromClass('backend.ClientPrefs', 'data.middleScroll')`
- `framerate` - `getPropertyFromClass('backend.ClientPrefs', 'data.framerate')`
- `ghostTapping` - `getPropertyFromClass('backend.ClientPrefs', 'data.ghostTapping')`
- `hideHud` - `getPropertyFromClass('backend.ClientPrefs', 'data.hideHud')`
- `timeBarType` - `getPropertyFromClass('backend.ClientPrefs', 'data.timeBarType')`
- `scoreZoom` - `getPropertyFromClass('backend.ClientPrefs', 'data.scoreZoom')`
- `cameraZoomOnBeat` - `getPropertyFromClass('backend.ClientPrefs', 'data.camZooms')`
- `flashingLights` - `getPropertyFromClass('backend.ClientPrefs', 'data.flashing')`
- `noteOffset` - `getPropertyFromClass('backend.ClientPrefs', 'data.noteOffset')`
- `healthBarAlpha` - `getPropertyFromClass('backend.ClientPrefs', 'data.healthBarAlpha')`
- `noResetButton` - `getPropertyFromClass('backend.ClientPrefs', 'data.noReset')`
- `lowQuality` - `getPropertyFromClass('backend.ClientPrefs', 'data.lowQuality')`
- `shadersEnabled` - `getPropertyFromClass('backend.ClientPrefs', 'data.shaders')`
- `scriptName` - `getPropertyFromClass('backend.ClientPrefs', 'scriptName')`
- `currentModDirectory` - `getPropertyFromClass('backend.Mods', 'currentModDirectory')`
- `noteSkin` - `getPropertyFromClass('backend.ClientPrefs', 'data.noteSkin')`
- `splashSkin` - `getPropertyFromClass('backend.ClientPrefs', 'data.splashSkin')`

<details><summary><b>Deprecated Original Shortcuts:</b></summary>
<p>

- `downscroll` - `getPropertyFromClass('ClientPrefs', 'downscroll')`
- `middlescroll` - `getPropertyFromClass('ClientPrefs', 'middlescroll')`
- `framerate` - `getPropertyFromClass('ClientPrefs', 'framerate')`
- `ghostTapping` - `getPropertyFromClass('ClientPrefs', 'ghostTapping')`
- `hideHud` - `getPropertyFromClass('ClientPrefs', 'hideHud')`
- `timeBarType` - `getPropertyFromClass('ClientPrefs', 'timeBarType')`
- `scoreZoom` - `getPropertyFromClass('ClientPrefs', 'scoreZoom')`
- `cameraZoomOnBeat` - `getPropertyFromClass('ClientPrefs', 'camZooms')`
- `flashingLights` - `getPropertyFromClass('ClientPrefs', 'flashing')`
- `noteOffset` - `getPropertyFromClass('ClientPrefs', 'noteOffset')`
- `healthBarAlpha` - `getPropertyFromClass('ClientPrefs', 'healthBarAlpha')`
- `noResetButton` - `getPropertyFromClass('ClientPrefs', 'noReset')`
- `lowQuality` - `getPropertyFromClass('ClientPrefs', 'lowQuality')`
- `shadersEnabled` - `getPropertyFromClass('ClientPrefs', 'shaders')`
- `scriptName` - `getPropertyFromClass('ClientPrefs', 'scriptName')`
- `currentModDirectory` - `getPropertyFromClass('Mods', 'currentModDirectory')`

</p>
</details>

</p>
</details>

***

# Screen & Camera Variables
- `screenWidth` - Returns the current width of the window screen; Default value: `720`.
- `screenHeight` - Returns the current width of the window screen; Default value: `720`.
- `cameraX` - Returns the current x position of camera.
- `cameraY` - Returns the current y position of camera.

<details><summary><b>All Shortcut to:</b></summary>
<p>

- `screenWidth` - `getPropertyFromClass('flixel.FlxG', 'width')`
- `screenHeight` - `getPropertyFromClass('flixel.FlxG', 'height')`
- `cameraX` - `getProperty('camGame.scroll.x') - (screenWidth / 2)`
- `cameraY` - `getProperty('camGame.scroll.y') - (screenHeight / 2)`

<details><summary><b>Deprecated Original Shortcuts:</b></summary>
<p>

- `screenWidth` - `getPropertyFromClass('FlxG', 'width')`
- `screenHeight` - `getPropertyFromClass('FlxG', 'height')`
- `cameraX` - `getProperty('camFollowPos.x')`
- `cameraY` - `getProperty('camFollowPos.y')`

</p>
</details>

</p>
</details>

***

# Character Variables
- `boyfriendName` - Checks the current boyfriend character name.
- `dadName` - Checks the current opponent character name.
- `gfName` - Checks the current girlfriend character name.
- `defaultBoyfriendX` - The player's default x position, defined by the stages JSON file.
- `defaultBoyfriendY` - The player's default y position, defined by the stages JSON file.
- `defaultOpponentX` - The opponent's default x position, defined by the stages JSON file.
- `defaultOpponentY` - The opponent's default y position, defined by the stages JSON file.
- `defaultGirlfriendX` - The girlfriend's default x position, defined by the stages JSON file.
- `defaultGirlfriendY` - The girlfriend's default x position, defined by the stages JSON file.

<details><summary><b>All Shortcut to:</b></summary>
<p>

- `boyfriendName` - `getProperty('boyfriend.curCharacter')`
- `dadName` - `getProperty('dad.curCharacter')`
- `gfName` - `getProperty('gf.curCharacter')`
- `defaultBoyfriendX` - `getProperty('BF_X')`
- `defaultBoyfriendY` - `getProperty('BF_Y')`
- `defaultOpponentX` - `getProperty('DAD_X')`
- `defaultOpponentY` -`getProperty('DAD_Y')`
- `defaultGirlfriendX` - `getProperty('GF_X')`
- `defaultGirlfriendY` - `getProperty('GF_Y')`

</p>
</details>

***

# Strum Receptor Variables
### Player Strum Positions
- `defaultPlayerStrumX0` - The player's <ins>left arrow</ins> default x position value; Returns: `732`.
- `defaultPlayerStrumX1` - The player's <ins>down arrow</ins> default x position value; Returns: `844`.
- `defaultPlayerStrumX2` - The player's <ins>up arrow</ins> default x position value; Returns: `956`.
- `defaultPlayerStrumX3` - The player's <ins>right arrow</ins> default x position value; Returns: `1068`.
- `defaultPlayerStrumY0` - The player's <ins>left arrow</ins> default y position value; Returns: `50`.
- `defaultPlayerStrumY1` - The player's <ins>down arrow</ins> default y position value; Returns: `50`.
- `defaultPlayerStrumY2` - The player's <ins>up arrow</ins> default y position value; Returns: `50`.
- `defaultPlayerStrumY3` - The player's <ins>right arrow</ins> default y position value; Returns: `50`.

<details><summary><b>All Shortcut to:</b></summary>
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
- `defaultOpponentStrumX0` - The opponent's <ins>left arrow</ins> default x position value; Returns: `92`.
- `defaultOpponentStrumX1` - The opponent's <ins>down arrow</ins> default x position value; Returns: `204`.
- `defaultOpponentStrumX2` - The opponent's <ins>up arrow</ins> default x position value; Returns: `316`.
- `defaultOpponentStrumX3` - The opponent's <ins>right arrow</ins> default x position value; Returns: `428`.
- `defaultOpponentStrumY0` - The opponent's <ins>left arrow</ins> default y position value; Returns: `50`.
- `defaultOpponentStrumY1` - The opponent's <ins>down arrow</ins> default y position value; Returns: `50`.
- `defaultOpponentStrumY2` - The opponent's <ins>up arrow</ins> default y position value; Returns: `50`.
- `defaultOpponentStrumY3` - The opponent's <ins>right arrow</ins> default y position value; Returns: `50`.

<details><summary><b>All Shortcut to:</b></summary>
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