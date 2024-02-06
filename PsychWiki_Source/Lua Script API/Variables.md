# Unique Lua Variables
> **Note**: _These are the only variables that can be changed by using `= true` or `= false` for now; Example: `luaDebugMode = true`. For now you will have to use the `setProperty()` function if you want to change the rest of the variables._

- `Function_StopLua` - Stops the Lua version of the function that this is used on; Must be returned.
- `Function_StopHScript` - Stops the HScript version of the function that this is used on; Must be returned.
- `Function_StopAll` - Stops both the Lua and HScript version of the function that this is used on; Must be returned.
- `Function_Stop` - Stops the function that this is used on; Must be returned.
- `Function_Continue` - Continues the function that this is used on; Must be returned.
- `luaDebugMode` - Enables debug mode; Default value: `false`.
- `luaDeprecatedWarnings` - Checks if the function or variable is deprecated or not; Only works in debug mode tho.
- `inChartEditor` - Checks if the Lua script is running inside the Chart Editor's chart playtest.

***

# Song & Week Variables
- `curBpm` Returns the current BPM value of the song.
- `bpm` - Returns the starting BPM value of the song.
- `scrollSpeed` - Returns the current scroll speed of the song.
- `crochet` - Returns the interval between `curBeat` variable.
- `stepCrochet` - Returns the interval between `curStep` variable.
- `songLength` - Returns the maximum song length displayed in milliseconds.
- `songName` - Returns the current song name.
- `songPath` - Returns the song's path.
- `startedCountdown` - Checks if the countdown has already begun.
- `curStage` - Returns the current stage of the song.
- `isStoryMode` - Checks if the song is in story mode or not.
- `difficulty` - Returns the current difficulty ID number.
- `difficultyName` - Returns the current difficulty name.
- `difficultyPath` - Returns the current difficulties path.
- `weekRaw` - Returns the current week number.
- `week` - Returns the current week name from the JSON file name.
- `seenCutscene` - Checks if the cutscene has been seen.
- `hasVocals` - Checks if the song has vocals enabled or not.

<details><summary><b>All Shortcut to:</b></summary>
<p>

- `curBpm` - `getPropertyFromClass('backend.Conductor', 'bpm')`
- `bpm` - `getPropertyFromClass('states.PlayState', 'SONG.bpm')` 
- `scrollSpeed` - `getPropertyFromClass('states.PlayState', 'SONG.speed')`
- `crochet` - `getPropertyFromClass('backend.Conductor', 'crochet')`
- `stepCrochet` - `getPropertyFromClass('backend.Conductor', 'stepCrochet')`
- `songLength` - `getPropertyFromClass('flixel.FlxG', 'sound.music.length')`
- `songName` - `getPropertyFromClass('states.PlayState', 'SONG.song')`
- `songPath` - `callMethodFromClass('backend.Paths', 'formatToSongPath', {songName})`
- `startedCountdown` - `getProperty('startedCountdown')`
- `curStage` - `getPropertyFromClass('states.PlayState', 'curStage')`
- `isStoryMode` - `getPropertyFromClass('states.PlayState', 'isStoryMode')`
- `difficulty` - `getPropertyFromClass('states.PlayState', 'storyDifficulty')`
- `difficultyName` - `callMethodFromClass('backend.Difficulty', 'getString', {difficulty})`
- `difficultyPath` - `callMethodFromClass('backend.Paths', 'formatToSongPath', {difficultyName})`
- `weekRaw` - `getPropertyFromClass('states.PlayState', 'storyWeek')`
- `week` - `getPropertyFromClass('backend.WeekData', 'weeksList['..weekRaw..']')`
- `seenCutscene` - `getPropertyFromClass('states.PlayState', 'seenCutscene')`
- `hasVocals` - `getPropertyFromClass('states.PlayState', 'SONG.needsVoices')`

<details><summary><b>Deprecated Original Shorcuts:</b></summary>
<p>

- `curBpm` - `getPropertyFromClass('Conductor', 'bpm')`
- `bpm` - `getPropertyFromClass('PlayState', 'SONG.bpm')` 
- `songSpeed` - `getPropertyFromClass('PlayState', 'SONG.speed')`
- `crochet` - `getPropertyFromClass('Conductor', 'crochet')`
- `stepCrochet` - `getPropertyFromClass('Conductor', 'stepCrochet')`
- `songName` - `getPropertyFromClass('PlayState', 'SONG.song')`
- `songPath` - `runHaxeCode('Paths.formatToSongPath('..songName..');')`
- `startedCountdown` - `getProperty('startedCountdown')`
- `curStage` - `getPropertyFromClass('PlayState', 'curStage')`
- `isStoryMode` - `getPropertyFromClass('PlayState', 'isStoryMode')`
- `difficulty` - `getPropertyFromClass('PlayState', 'storyDifficulty')`
- `difficultyName` - `getPropertyFromClass('CoolUtil', 'difficulties['..difficulty..']')`
- `difficultyPath` - `runHaxeCode('Paths.formatToSongPath(Difficulty.getString());')`
- `weekRaw` - `getPropertyFromClass('PlayState', 'storyWeek')`
- `week` - `getPropertyFromClass('WeekData', 'weeksList['..weekRaw..']')`
- `seenCutscene` - `getPropertyFromClass('PlayState', 'seenCutscene')`
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
- `inGameOver` - Checks if the player is in the game-over screen or not.
- `mustHitSection` - Checks if the section is a `Must Hit Section` from the Chart Editor.
- `altAnim` - Checks if the section is an `Alt Animation` section from the Chart Editor.
- `gfSection` - Checks if the section is a `GF Section` from the Chart Editor.
- `buildTarget` - Checks the current OS that the current Psych Engine is running on; Can return: `windows`, `linux`, `mac`, `browser`, `android`, `switch`, or `unknown`.

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
- `healthLossMult` - The amount of health loss when missing/missinputting a note.
- `playbackRate` - The play-back rate multiplier of the song.
- `instakillOnMiss` - Enables instant death when missing/missinputing a note.
- `botPlay` - Checks if Botplay is enabled or not.
- `practice` - Checks if Practice Mode is enabled or not.
- `guitarHeroSustains` - Checks if Guitar Hero Sustains are enabled. _(Sustains As One Note Option)_

<details><summary><b>All Shortcut to:</b></summary>
<p>

- `healthGainMult` - `getProperty('healthGain')`
- `healthLossMult` - `getProperty('healthLoss')`
- `playbackRate` - `getProperty('playbackRate')`
- `instakillOnMiss` - `getProperty('instakillOnMiss')`
- `botPlay` - `getProperty('cpuControlled')`
- `practice` - `getProperty('practiceMode')`
- `guitarHeroSustains - `getProperty('guitarHeroSustains')`

</p>
</details>

***

# Client Preferences Variables
- `downscroll` - Checks if downscroll is enabled or not.
- `middlescroll` - Checks if middlescroll is enabled or not.
- `framerate` - Returns the current framerate inside the options menu.
- `ghostTapping` - Checks if ghost tapping is enabled or not.
- `hideHud` - Checks if the score txt/health bar/rating elements will be hidden or not.
- `timeBarType` - Checks the current time-bar txt display type.
- `scoreZoom` - Checks if the score will do a zoom bop when hitting a note.
- `cameraZoomOnBeat` - Checks if the camera will do a zoom every 4th beat. _("Add Camera Zoom" event will not work if this is disabled)_
- `flashingLights` - Checks if flashing lights are enabled or not. _(Disable this, if you have epilepsy!)_
- `noteOffset` - Checks the note offset displayed in milliseconds; Goes from `0` to `500`.
- `healthBarAlpha` - Checks the current amount of alpha/opacity value of the health bar.
- `noResetButton` - Checks if the reset button is enabled or not.
- `lowQuality` - Checks if low quality on songs, is enabled or not. _(Enable it, if you have a potato computer)_
- `shadersEnabled` - Checks if shaders are enabled or not. _(Disable it, if you have motion sickness!)_
- `scriptName` - Checks the current script name.
- `currentModDirectory` - Checks the current mod directory.
- `noteSkin` - Checks the current noteskin that the player is using.
- `noteSkinPostfix` - Checks the current noteskin postfix from the current noteskin image that the player is using.
- `splashSkin` - Checks the current splashskin that the player is using.
- `splashSkinPostfix` - Checks the current splashskin postfix from the current splashskin image that the player is using.
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
- `scriptName` - _(Idk how to get this one)_
- `currentModDirectory` - `getPropertyFromClass('backend.Mods', 'currentModDirectory')`
- `noteSkin` - `getPropertyFromClass('backend.ClientPrefs', 'data.noteSkin')`
- `noteSkinPostfix` - `callMethodFromClass('objects.Note', 'getNoteSkinPostfix', {})`
- `splashSkin` - `getPropertyFromClass('backend.ClientPrefs', 'data.splashSkin')`
- `splashSkinPostfix` - `callMethodFromClass('objects.NoteSplash', 'getSplashSkinPostfix', {})`
- `splashAlpha` - `getPropertyFromClass('backend.ClientPrefs', 'data.splashAlpha')`

<details><summary><b>Deprecated Original Shortcuts:</b></summary>
<p>

- `downscroll` - `getPropertyFromClass('ClientPrefs', 'downScroll')`
- `middlescroll` - `getPropertyFromClass('ClientPrefs', 'middleScroll')`
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
- `currentModDirectory` - `getPropertyFromClass('Mods', 'currentModDirectory')`

</p>
</details>

</p>
</details>

***

# Screen & Camera Variables
- `screenWidth` - Returns the current width of the window screen; Default value: `1280`.
- `screenHeight` - Returns the current width of the window screen; Default value: `720`.
- `cameraX` - Returns the current x position of the camera.
- `cameraY` - Returns the current y position of the camera.

<details><summary><b>All Shortcut to:</b></summary>
<p>

- `screenWidth` - `getPropertyFromClass('flixel.FlxG', 'width')`
- `screenHeight` - `getPropertyFromClass('flixel.FlxG', 'height')`
- `cameraX` - `getProperty('camFollow.x')`
- `cameraY` - `getProperty('camFollow.y')`

<details><summary><b>Deprecated Original Shortcuts:</b></summary>
<p>

- `cameraX` - `getProperty('camFollowPos.x')`
- `cameraY` - `getProperty('camFollowPos.y')`

</p>
</details>

</p>
</details>

***

# Character Variables
- `boyfriendName` - Returns the current boyfriend character name.
- `dadName` - Returns the current opponent character name.
- `gfName` - Returns the current girlfriend character name.
- `defaultBoyfriendX` - The player's default x position, defined by the stage's JSON file.
- `defaultBoyfriendY` - The player's default y position, defined by the stage's JSON file.
- `defaultOpponentX` - The opponent's default x position, defined by the stage's JSON file.
- `defaultOpponentY` - The opponent's default y position, defined by the stage's JSON file.
- `defaultGirlfriendX` - The girlfriend's default x position, defined by the stage's JSON file.
- `defaultGirlfriendY` - The girlfriend's default x position, defined by the stage's JSON file.

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
- `defaultPlayerStrumY0` - The player's <ins>left arrow</ins> default y position value; Returns: `50` **(Upscroll)** or `570` **(Downscroll)**.
- `defaultPlayerStrumY1` - The player's <ins>down arrow</ins> default y position value; Returns: `50` **(Upscroll)** or `570` **(Downscroll)**.
- `defaultPlayerStrumY2` - The player's <ins>up arrow</ins> default y position value; Returns: `50` **(Upscroll)** or `570` **(Downscroll)**.
- `defaultPlayerStrumY3` - The player's <ins>right arrow</ins> default y position value; Returns: `50` **(Upscroll)** or `570` **(Downscroll)**.

<details><summary><b>All Shortcut to:</b></summary>
<p>

- `defaultPlayerStrumX0` - `getPropertyFromGroup('playerStrums', 0, 'x')`
- `defaultPlayerStrumX1` - `getPropertyFromGroup('playerStrums', 1, 'x')`
- `defaultPlayerStrumX2` - `getPropertyFromGroup('playerStrums', 2, 'x')`
- `defaultPlayerStrumX3` - `getPropertyFromGroup('playerStrums', 3, 'x')`
- `defaultPlayerStrumY0` - `getPropertyFromGroup('playerStrums', 0, 'y')`
- `defaultPlayerStrumY1` - `getPropertyFromGroup('playerStrums', 1, 'y')`
- `defaultPlayerStrumY2` - `getPropertyFromGroup('playerStrums', 2, 'y')`
- `defaultPlayerStrumY3` - `getPropertyFromGroup('playerStrums', 3, 'y')`

</p>
</details>

### Opponent Strum Positions
- `defaultOpponentStrumX0` - The opponent's <ins>left arrow</ins> default x position value; Returns: `92`.
- `defaultOpponentStrumX1` - The opponent's <ins>down arrow</ins> default x position value; Returns: `204`.
- `defaultOpponentStrumX2` - The opponent's <ins>up arrow</ins> default x position value; Returns: `316`.
- `defaultOpponentStrumX3` - The opponent's <ins>right arrow</ins> default x position value; Returns: `428`.
- `defaultOpponentStrumY0` - The opponent's <ins>left arrow</ins> default y position value; Returns: `50` **(Upscroll)** or `570` **(Downscroll)**
- `defaultOpponentStrumY1` - The opponent's <ins>down arrow</ins> default y position value; Returns: `50` **(Upscroll)** or `570` **(Downscroll)**
- `defaultOpponentStrumY2` - The opponent's <ins>up arrow</ins> default y position value; Returns: `50` **(Upscroll)** or `570` **(Downscroll)**
- `defaultOpponentStrumY3` - The opponent's <ins>right arrow</ins> default y position value; Returns: `50` **(Upscroll)** or `570` **(Downscroll)**

<details><summary><b>All Shortcut to:</b></summary>
<p>

- `defaultOpponentStrumX0` - `getPropertyFromGroup('opponentStrums', 0, 'x')`
- `defaultOpponentStrumX1` - `getPropertyFromGroup('opponentStrums', 1, 'x')`
- `defaultOpponentStrumX2` - `getPropertyFromGroup('opponentStrums', 2, 'x')`
- `defaultOpponentStrumX3` - `getPropertyFromGroup('opponentStrums', 3, 'x')`
- `defaultOpponentStrumY0` - `getPropertyFromGroup('opponentStrums', 0, 'y')`
- `defaultOpponentStrumY1` - `getPropertyFromGroup('opponentStrums', 1, 'y')`
- `defaultOpponentStrumY2` - `getPropertyFromGroup('opponentStrums', 2, 'y')`
- `defaultOpponentStrumY3` - `getPropertyFromGroup('opponentStrums', 3, 'y')`

</p>
</details>
