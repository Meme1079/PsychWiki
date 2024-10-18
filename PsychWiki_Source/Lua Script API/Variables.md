# Lua Variables
> [!NOTE]
> _These are the only unique variables that can be re-assign new values manually, for instance: `luaDebugMode = true`. For now you'll have to use the `setProperty()` or `setPropertyFromClass()` functions, if you want to change the rest of the variables._

| Variables 	| Description 	|
|---	|---	|
| `Function_Continue` 	| Resumes the termination of the callbacks functionality; Must be use in a `return` statement. 	|
| `Function_Stop` 	| Terminates the callback functionality; Must be use in a `return` statement. 	|
| `Function_StopLua` 	| Terminates the currently running Lua file; Must be use in a `return` statement. 	|
| `Function_StopHScript` 	| Terminates the currently running HScript file; Must be use in a `return` statement. 	|
| `luaDebugMode` 	| Enables debug mode; basically throwing error messages for any Lua functions. 	|
| `luaDeprecatedWarnings` 	| Enables deprecated warnings for outdated Lua functions. 	|
| `inChartEditor` 	| Checks if it's running in chart editor or not. 	|

***

# Song & Week Variables
| Variables 	| Description 	|
|---	|---	|
| `bpm` 	| The starting bpm value of the song. 	|
| `curBpm` 	| The current bpm value of the song. 	|
| `scrollSpeed` 	| The current scroll speed of the song. 	|
| `crochet` 	| The intervals between the `curBeat` variable. 	|
| `stepChrochet` 	| The intervals between the `curStep` variable. 	|
| `songName` 	| The current song's name. 	|
| `songPath` 	| The current song's path folder. 	|
| `songLength` 	| The song's maximum length by seconds. 	|
| `loadedSongName` 	| The loaded song's name. 	|
| `loadedSongPath` 	| The loaded song's path folder. 	|
| `difficulty` 	| The song's current difficulty ID number. 	|
| `difficultyName` 	| The song's current difficulty name. 	|
| `difficultyNameTranslation` 	| The song's current translated difficulty name. 	|
| `difficultyPath` 	| The song's current difficulty path folder. 	|
| `weekRaw` 	| The week's current name. 	|
| `week` 	| The week's current name from the `json` file. 	|
| `isStoryMode` 	| Whether is it in story mode or not. 	|
| `startedCountdown` 	| Whether if the countdown begun or not. 	|
| `seenCutscene` 	| Whether if the cutscene has been already seen or not. 	|
| `curStage` 	| The current stage of the song. 	|
| `hasVocals` 	| Whether if the song has vocals or not. 	|

<details><summary><b>All Shortcut to:</b></summary>
<p>

| Variables 	| Property Shortcuts 	|
|---	|---	|
| `bpm` 	| `getPropertyFromClass('states.PlayState', 'SONG.bpm')` 	|
| `curBpm` 	| `getPropertyFromClass('backend.Conductor', 'bpm')` 	|
| `scrollSpeed` 	| `getPropertyFromClass('states.PlayState', 'SONG.speed')` 	|
| `crochet` 	| `getPropertyFromClass('backend.Conductor', 'crochet')` 	|
| `stepChrochet` 	| `getPropertyFromClass('backend.Conductor', 'stepCrochet')` 	|
| `songName` 	| `getPropertyFromClass('states.PlayState', 'SONG.song')` 	|
| `songPath` 	| `callMethodFromClass('backend.Paths', 'formatToSongPath', {songName})` 	|
| `songLength` 	| `getPropertyFromClass('flixel.FlxG', 'sound.music.length')` 	|
| `loadedSongName` 	| `getPropertyFromClass('backend.Song', 'loadedSongName')` 	|
| `loadedSongPath` 	| `callMethodFromClass('backend.Paths', 'formatToSongPath', {loadedSongPath})` 	|
| `difficulty` 	| `getPropertyFromClass('states.PlayState', 'storyDifficulty')` 	|
| `difficultyName` 	| `callMethodFromClass('backend.Difficulty', 'getString', {difficulty, false})` 	|
| `difficultyNameTranslation` 	| `callMethodFromClass('backend.Difficulty', 'getString', {difficulty, true})` 	|
| `difficultyPath` 	| `callMethodFromClass('backend.Paths', 'formatToSongPath', {difficultyName})` 	|
| `weekRaw` 	| `getPropertyFromClass('states.PlayState', 'storyWeek')` 	|
| `week` 	| `getPropertyFromClass('backend.WeekData', 'weeksList, true)[weekRaw]` 	|
| `isStoryMode` 	| `getPropertyFromClass('states.PlayState', 'isStoryMode')` 	|
| `startedCountdown` 	| `getProperty('startedCountdown')` 	|
| `seenCutscene` 	| `getPropertyFromClass('states.PlayState', 'seenCutscene')` 	|
| `curStage` 	| `getPropertyFromClass('states.PlayState', 'curStage')` 	|
| `hasVocals` 	| `getPropertyFromClass('states.PlayState', 'SONG.needsVoices')` 	|

</p>
</details>

<details><summary><b>All Shortcut to (Deprecated):</b></summary>
<p>

| Variables 	| Property Shortcuts 	|
|---	|---	|
| `bpm` 	| `getPropertyFromClass('PlayState', 'SONG.bpm')` 	|
| `curBpm` 	| `getPropertyFromClass('Conductor', 'bpm')` 	|
| `scrollSpeed` 	| `getPropertyFromClass('PlayState', 'SONG.speed')` 	|
| `crochet` 	| `getPropertyFromClass('Conductor', 'crochet')` 	|
| `stepChrochet` 	| `getPropertyFromClass('Conductor', 'stepCrochet')` 	|
| `songName` 	| `getPropertyFromClass('PlayState', 'SONG.song')` 	|
| `songPath` 	| `runHaxeCode('Paths.formatToSongPath('..songName..');')` 	|
| `songLength` 	| `getPropertyFromClass('flixel.FlxG', 'sound.music.length')` 	|
| `loadedSongName` 	| None-Existent; Only in `1.0` Pre-Release version. 	|
| `loadedSongPath` 	| None-Existent; Only in `1.0` Pre-Release version. 	|
| `difficulty` 	| `getPropertyFromClass('PlayState', 'storyDifficulty')` 	|
| `difficultyName` 	| `getPropertyFromClass('CoolUtil', 'difficulties['..difficulty..']')` 	|
| `difficultyNameTranslation` 	| None-Existent; Only in `1.0` Pre-Release version. 	|
| `difficultyPath` 	| `runHaxeCode('Paths.formatToSongPath(Difficulty.getString());')` 	|
| `weekRaw` 	| `getPropertyFromClass('PlayState', 'storyWeek')` 	|
| `week` 	| `getPropertyFromClass('WeekData', 'weeksList['..weekRaw..']')` 	|
| `isStoryMode` 	| `getPropertyFromClass('PlayState', 'isStoryMode')` 	|
| `startedCountdown` 	| `getProperty('startedCountdown')` 	|
| `seenCutscene` 	| `getPropertyFromClass('PlayState', 'seenCutscene')` 	|
| `curStage` 	| `getPropertyFromClass('PlayState', 'curStage')` 	|
| `hasVocals` 	| `getPropertyFromClass('PlayState', 'SONG.needsVoices')` 	|

</p>
</details>

***

# PlayState Variables
| Variables 	| Description 	|
|---	|---	|
| `curStep` 	| The current step per number; Recommended to use in `onStepHit()` callback. 	|
| `curBeat` 	| The current beat per number; Recommended to use in `onBeatHit()` callback. 	|
| `curDecStep` 	| The current step per number in decimals; Recommended to use in `onStepHit()` callback. 	|
| `curDecBeat` 	| The current beat per number in decimals; Recommended to use in `onBeatHit()` callback. 	|
| `curSection` 	| The current section per number; Recommended to use in `onSectionHit()` callback. 	|
| `score` 	| The current score you gained. 	|
| `misses` 	| The current misses you gained. 	|
| `hits` 	| The current note hits you gained. 	|
| `combo` 	| The current combo you gained. 	|
| `rating` 	| The current rating percent; Goes from `0` to `1`. 	|
| `ratingName` 	| The current rating name. 	|
| `ratingFC` 	| The current rating combo. 	|
| `mustHitSection` 	| Whether the section is intended for the player or not, from the chart editor. 	|
| `gfSection` 	| Whether the section is intended for girlfriend or not, from the chart editor. 	|
| `altAnim` 	| Whether the section is in alt-animation, from the chart editor. 	|
| `inGameOver` 	| Whether if the player is in the game-over screen or not. 	|
| `version` 	| The current version of Psych Engine. 	|
| `builTarget` 	| The current build target of Psych Engine.  	|

<details><summary><b>All Shortcut to:</b></summary>
<p>

| Variables 	| Description 	|
|---	|---	|
| `curStep` 	| `getProperty('curStep')` 	|
| `curBeat` 	| `getProperty('curBeat')` 	|
| `curDecStep` 	| `getProperty('curDecStep')` 	|
| `curDecBeat` 	| `getProperty('curDecBeat')` 	|
| `curSection` 	| `getProperty('curSection')` 	|
| `score` 	| `getProperty('songScore')` 	|
| `misses` 	| `getProperty('songMisses')` 	|
| `hits` 	| `getProperty('songHits')` 	|
| `combo` 	| `getProperty('combo')` 	|
| `rating` 	| `getProperty('ratingPercent')` 	|
| `ratingName` 	| `getProperty('ratingName')` 	|
| `ratingFC` 	| `getProperty('ratingFC')` 	|
| `mustHitSection` 	| `getPropertyFromClass('states.PlayState', 'SONG.notes', true)[curSection]['mustHitSection']` 	|
| `gfSection` 	| `getPropertyFromClass('states.PlayState', 'SONG.notes', true)[curSection]['gfSection']` 	|
| `altAnim` 	| `getPropertyFromClass('states.PlayState', 'SONG.notes', true)[curSection]['altAnim']` 	|
| `inGameOver` 	| Non-Existent 	|
| `version` 	| `getPropertyFromClass('states.MainMenuState', 'psychEngineVersion')` 	|
| `builTarget` 	| `callMethodFromClass('psychlua.LuaUtils', 'getBuildTarget')` 	|

</p>
</details>

<details><summary><b>All Shortcut to (Deprecated):</b></summary>
<p>

| Variables 	| Description 	|
|---	|---	|
| `mustHitSection` 	| `getPropertyFromClass('PlayState', 'SONG.notes['..curSection..'].mustHitSection')` 	|
| `gfSection` 	| `getPropertyFromClass('PlayState', 'SONG.notes['..curSection..'].gfSection')` 	|
| `altAnim` 	| `getPropertyFromClass('PlayState', 'SONG.notes['..curSection..'].altAnim')` 	|
| `version` 	| `getPropertyFromClass('MainMenuState', 'psychEngineVersion')` 	|

</p>
</details>

***

# Gameplay Setting Variables

| Variables 	| Description 	|
|---	|---	|
| `healthGainMult` 	| The amount of health gain when hitting a note. 	|
| `healthLossMult` 	| The amount of health loss when missing/missinputting a note. 	|
| `playbackRate` 	| The amount of play-back rate multiplier. 	|
| `guitarHeroSustains` 	| Whether the sustain notes (long notes) can be pressed again when missed. 	|
| `instakillOnMiss` 	| Whether if any miss will intakill you immediately. 	|
| `botPlay` 	| Whether if botplay is enable in gameplay or not. 	|
| `practice` 	| Whether if practice mode is enable in gameplay or not. 	|

<details><summary><b>All Shortcut to:</b></summary>
<p>

| Variables 	| Shortcuts 	|
|---	|---	|
| `healthGainMult` 	| `getProperty('healthGain')` 	|
| `healthLossMult` 	| `getProperty('healthLoss')` 	|
| `playbackRate` 	| `getProperty('playbackRate')` 	|
| `guitarHeroSustains` 	| `getProperty('guitarHeroSustains')` 	|
| `instakillOnMiss` 	| `getProperty('instakillOnMiss')` 	|
| `botPlay` 	| `getProperty('cpuControlled')` 	|
| `practice` 	| `getProperty('practiceMode')` 	|

</p>
</details>

***

# Client Preferences Variables
| Variables 	| Description 	|
|---	|---	|
| `downscroll` 	| Whether if downscroll is enable in gameplay or not. 	|
| `middlescroll` 	| Whether if middlescroll is enable in gameplay or not. 	|
| `ghostTapping` 	| Whether if ghost-tapping is enable in gameplay or not. 	|
| `hideHud` 	| Whether if the HUD elements are hidden in gameplay or not. 	|
| `scoreZoom` 	| Whether if the score text will zoom when hitting a note. 	|
| `cameraZoomOnBeat` 	| Whether the camera should zoom on every beat or not. If enabled<br>the "Add Camera Zoom" event will be disable. 	|
| `flashingLights` 	| Whether if flashing lights are enable or not. This is recommended<br>if you're suffering from epilepsy. 	|
| `lowQuality` 	| Whether if low quality is enabled or not. This will remove <br>any objects that might cause significant lag. 	|
| `shadersEnabled` 	| Whether if shaders will be displayed or not. This is recommended<br>if the shaders are causing lag. 	|
| `noResetButton` 	| Whether if the reset button is enabled or not. 	|
| `timeBarType` 	| The current display of the time bar format. 	|
| `noteOffset` 	| The current note offsets, displayed in milliseconds; Goes from `0` to `500`. 	|
| `healthBarAlpha` 	| The current alpha/opacity of the healthbar. 	|
| `scriptName` 	| The current script name that is running. 	|
| `currentModDirectory` 	| The current mod folder directory that it's in. 	|
| `framerate` 	| The framerate capped value. 	|
| `noteSkin` 	| The current note skin you've selected. 	|
| `noteSkinPostfix` 	| The note skin's suffix name; Example: `-future`. 	|
| `splashSkin` 	| The current splash skin you've selected. 	|
| `splashSkinPostfix` 	| The splash skin's suffix name; Example: `-future`. 	|
| `splashAlpha` 	| The current alpha/opacity of the splash skin. 	|

<details><summary><b>All Shortcut to:</b></summary>
<p>

| Variables 	| Shortcuts 	|
|---	|---	|
| `downscroll` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.downScroll')` 	|
| `middlescroll` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.middleScroll')` 	|
| `ghostTapping` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.ghostTapping')` 	|
| `hideHud` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.hideHud')` 	|
| `scoreZoom` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.scoreZoom')` 	|
| `cameraZoomOnBeat` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.camZooms')` 	|
| `flashingLights` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.flashing')` 	|
| `lowQuality` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.lowQuality')` 	|
| `shadersEnabled` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.shaders')` 	|
| `noResetButton` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.noReset')` 	|
| `timeBarType` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.timeBarType')` 	|
| `noteOffset` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.noteOffset')` 	|
| `healthBarAlpha` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.healthBarAlpha')` 	|
| `scriptName` 	| Non-Existent 	|
| `currentModDirectory` 	| `getPropertyFromClass('backend.Mods', 'currentModDirectory')` 	|
| `framerate` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.framerate')` 	|
| `noteSkin` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.noteSkin')` 	|
| `noteSkinPostfix` 	| `callMethodFromClass('objects.Note', 'getNoteSkinPostfix', {''})` 	|
| `splashSkin` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.splashSkin')` 	|
| `splashSkinPostfix` 	| `callMethodFromClass('objects.NoteSplash', 'getSplashSkinPostfix', {''})` 	|
| `splashAlpha` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.splashAlpha')` 	|

</p>
</details>

<details><summary><b>All Shortcut to (Deprecated):</b></summary>
<p>

| Variables 	| Shortcuts 	|
|---	|---	|
| `downscroll` 	| `getPropertyFromClass('ClientPrefs', 'downScroll')` 	|
| `middlescroll` 	| `getPropertyFromClass('ClientPrefs', 'middleScroll')` 	|
| `ghostTapping` 	| `getPropertyFromClass('ClientPrefs', 'ghostTapping')` 	|
| `hideHud` 	| `getPropertyFromClass('ClientPrefs', 'hideHud')` 	|
| `scoreZoom` 	| `getPropertyFromClass('ClientPrefs', 'scoreZoom')` 	|
| `cameraZoomOnBeat` 	| `getPropertyFromClass('ClientPrefs', 'camZooms')` 	|
| `flashingLights` 	| `getPropertyFromClass('ClientPrefs', 'flashing')` 	|
| `lowQuality` 	| `getPropertyFromClass('ClientPrefs', 'lowQuality')` 	|
| `shadersEnabled` 	| `getPropertyFromClass('ClientPrefs', 'shaders')` 	|
| `noResetButton` 	| `getPropertyFromClass('ClientPrefs', 'noReset')` 	|
| `timeBarType` 	| `getPropertyFromClass('ClientPrefs', 'timeBarType')` 	|
| `noteOffset` 	| `getPropertyFromClass('ClientPrefs', 'noteOffset')` 	|
| `healthBarAlpha` 	| `getPropertyFromClass('ClientPrefs', 'healthBarAlpha')` 	|
| `scriptName` 	| Non-Existent 	|
| `currentModDirectory` 	| `getPropertyFromClass('Mods', 'currentModDirectory')` 	|
| `framerate` 	| `getPropertyFromClass('ClientPrefs', 'framerate')` 	|
| `noteSkin` 	| `getPropertyFromClass('ClientPrefs', 'noteSkin')` 	|
| `noteSkinPostfix` 	| Non-Existent; Only in `0.7.0` version. 	|
| `splashSkin` 	| `getPropertyFromClass('ClientPrefs', 'splashSkin')` 	|
| `splashSkinPostfix` 	| Non-Existent; Only in `0.7.0` version. 	|
| `splashAlpha` 	| `getPropertyFromClass('ClientPrefs', 'splashAlpha')` 	|

</p>
</details>

***

# Miscellaneous Variables
| Variables 	| Description 	|
|---	|---	|
| `screenWidth` 	| The current width value of the game window; Default value: `1280` 	|
| `screenHeight` 	| The current height value of the game window; Default value: `720` 	|


<details><summary><b>All Shortcut to:</b></summary>
<p>

| Variables 	| Shortcuts 	|
|---	|---	|
| `screenWidth` 	| `getPropertyFromClass('flixel.FlxG', 'width')` 	|
| `screenHeight` 	| `getPropertyFromClass('flixel.FlxG', 'height')` 	|

</p>
</details>

<details><summary><b>Removed Variables:</b></summary>
<p>

| Variables 	| Description 	|
|---	|---	|
| `cameraX` 	| The current x-position of the camera. 	|
| `cameraY` 	| The current y-position of the camera. 	|

<details><summary><b>All Shortcut to:</b></summary>
<p>

| Variables 	| Shortcuts 	|
|---	|---	|
| `cameraX` 	| `getProperty('camFollow.x')` 	|
| `cameraY` 	| `getProperty('camFollow.y')` 	|

</p>
</details>

</p>
</details>

***

# Character Variables
| Variables 	| Description 	|
|---	|---	|
| `boyfriendName` 	| The current boyfriend (player) character name. 	|
| `dadName` 	| The current dad (opponent) character name. 	|
| `gfName` 	| The current girlfriend character name. 	|
| `defaultBoyfriendX` 	| The default x-position of the boyfriend (player) character. 	|
| `defaultBoyfriendY` 	| The default y-position of the boyfriend (player) character. 	|
| `defaultOpponentX` 	| The default x-position of the dad (opponent) character. 	|
| `defaultOpponentY` 	| The default y-position of the dad (opponent) character. 	|
| `defaultGirlfriendX` 	| The default x-position of the girfriend character. 	|
| `defaultGirlfriendY` 	| The default y-position of the girfriend character. 	|

<details><summary><b>All Shortcut to:</b></summary>
<p>

| Variables 	| Shortcuts 	|
|---	|---	|
| `boyfriendName` 	| `getProperty('boyfriend.curCharacter')` 	|
| `dadName` 	| `getProperty('dad.curCharacter')` 	|
| `gfName` 	| `getProperty('gf.curCharacter')` 	|
| `defaultBoyfriendX` 	| `getProperty('BF_X')` 	|
| `defaultBoyfriendY` 	| `getProperty('BF_Y')` 	|
| `defaultOpponentX` 	| `getProperty('DAD_X')` 	|
| `defaultOpponentY` 	| `getProperty('DAD_Y')` 	|
| `defaultGirlfriendX` 	| `getProperty('GF_X')` 	|
| `defaultGirlfriendY` 	| `getProperty('GF_Y')` 	|

</p>
</details>

***

# Strum Receptor Variables
## Player Strum Receptors
| Variables 	| Description 	| Default Value 	|
|---	|---	|---	|
| `defaultPlayerStrumX0` 	| The default x-position of the player's left arrow. 	| `732` 	|
| `defaultPlayerStrumX1` 	| The default x-position of the player's down arrow. 	| `844` 	|
| `defaultPlayerStrumX2` 	| The default x-position of the player's up arrow. 	| `956` 	|
| `defaultPlayerStrumX3` 	| The default x-position of the player's right arrow. 	| `1068` 	|
| `defaultPlayerStrumY0` 	| The default y-position of the player's left arrow. 	| `50` (Upscroll); `570` (Downscroll) 	|
| `defaultPlayerStrumY1` 	| The default y-position of the player's down arrow. 	| `50` (Upscroll); `570` (Downscroll) 	|
| `defaultPlayerStrumY2` 	| The default y-position of the player's up arrow. 	| `50` (Upscroll); `570` (Downscroll) 	|
| `defaultPlayerStrumY3` 	| The default y-position of the opponent's right arrow. 	| `50` (Upscroll); `570` (Downscroll) 	|

<details><summary><b>All Shortcut to:</b></summary>
<p>

| Variables 	| Description 	|
|---	|---	|
| `defaultPlayerStrumX0` 	| `getPropertyFromGroup('playerStrums', 0, 'x')` 	|
| `defaultPlayerStrumX1` 	| `getPropertyFromGroup('playerStrums', 1, 'x')` 	|
| `defaultPlayerStrumX2` 	| `getPropertyFromGroup('playerStrums', 2, 'x')` 	|
| `defaultPlayerStrumX3` 	| `getPropertyFromGroup('playerStrums', 3, 'x')` 	|
| `defaultPlayerStrumY0` 	| `getPropertyFromGroup('playerStrums', 0, 'y')` 	|
| `defaultPlayerStrumY1` 	| `getPropertyFromGroup('playerStrums', 1, 'y')` 	|
| `defaultPlayerStrumY2` 	| `getPropertyFromGroup('playerStrums', 2, 'y')` 	|
| `defaultPlayerStrumY3` 	| `getPropertyFromGroup('playerStrums', 3, 'y')` 	|

</p>
</details>

## Opponent Strum Receptors
| Variables 	| Description 	| Default Value 	|
|---	|---	|---	|
| `defaultOpponentStrumX0` 	| The default x-position of the <br>opponent's left arrow. 	| `92` 	|
| `defaultOpponentStrumX1` 	| The default x-position of the <br>opponent's down arrow. 	| `204` 	|
| `defaultOpponentStrumX2` 	| The default x-position of the <br>opponent's up arrow. 	| `316` 	|
| `defaultOpponentStrumX3` 	| The default x-position of the <br>opponent's right arrow. 	| `428` 	|
| `defaultOpponentStrumY0` 	| The default y-position of the <br>opponent's left arrow. 	| `50` (Upscroll); `570` (Downscroll) 	|
| `defaultOpponentStrumY1` 	| The default y-position of the <br>opponent's down arrow. 	| `50` (Upscroll); `570` (Downscroll) 	|
| `defaultOpponentStrumY2` 	| The default y-position of the <br>opponent's up arrow. 	| `50` (Upscroll); `570` (Downscroll) 	|
| `defaultOpponentStrumY3` 	| The default y-position of the <br>opponent's right arrow. 	| `50` (Upscroll); `570` (Downscroll) 	|

<details><summary><b>All Shortcut to:</b></summary>
<p>

| Variables 	| Descriptions 	|
|---	|---	|
| `defaultOpponentStrumX0` 	| `getPropertyFromGroup('opponentStrums', 0, 'x')` 	|
| `defaultOpponentStrumX1` 	| `getPropertyFromGroup('opponentStrums', 1, 'x')` 	|
| `defaultOpponentStrumX2` 	| `getPropertyFromGroup('opponentStrums', 2, 'x')` 	|
| `defaultOpponentStrumX3` 	| `getPropertyFromGroup('opponentStrums', 3, 'x')` 	|
| `defaultOpponentStrumY0` 	| `getPropertyFromGroup('opponentStrums', 0, 'y')` 	|
| `defaultOpponentStrumY1` 	| `getPropertyFromGroup('opponentStrums', 1, 'y')` 	|
| `defaultOpponentStrumY2` 	| `getPropertyFromGroup('opponentStrums', 2, 'y')` 	|
| `defaultOpponentStrumY3` 	| `getPropertyFromGroup('opponentStrums', 3, 'y')` 	|

</p>
</details>