# Stage
## Charting
| Variables 	| Description 	| Type 	|
|---	|---	|---	|
| `curStage` 	| The current stage within the song.  	| `String` 	|
| `hasVocals` 	| Whether the song has vocals enabled to be played or not. 	| `Boolean` 	|
| `scrollSpeed` 	| The starting scroll speed of the song. 	| `Float` 	|
| `bpm` 	| The starting BPM (Beats Per Minute) of the song. 	| `Float` 	|
| `curBpm` 	| The current BPM (Beats Per Minute) of the song. May change from different parts of the song. 	| `Float` 	|
| `crochet` 	| The amount of time intervals between beats in a section. 	| `Float` 	|
| `stepChrochet` 	| The amount of time intervals between steps in a section. 	| `Float` 	|

<details><summary><b>All Shortcut to:</b></summary>
<p>

| Variables 	| Shortcut 	|
|---	|---	|
| `curStage` 	| `getPropertyFromClass('states.PlayState', 'curStage')` 	|
| `hasVocals` 	| `getPropertyFromClass('states.PlayState', 'SONG.needsVoices')` 	|
| `scrollSpeed` 	| `getPropertyFromClass('states.PlayState', 'SONG.speed')` 	|
| `bpm` 	| `getPropertyFromClass('states.PlayState', 'SONG.bpm')` 	|
| `curBpm` 	| `getPropertyFromClass('backend.Conductor', 'bpm')` 	|
| `crochet` 	| `getPropertyFromClass('backend.Conductor', 'crochet')` 	|
| `stepChrochet` 	| `getPropertyFromClass('backend.Conductor', 'stepCrochet')` 	|

</p>
</details>

<details><summary><b>All Shortcut to (Deprecated; Pre-Source Code Overhual):</b></summary>
<p>

| Variables 	| Shortcut 	|
|---	|---	|
| `curStage` 	| `getPropertyFromClass('PlayState', 'curStage')` 	|
| `hasVocals` 	| `getPropertyFromClass('PlayState', 'SONG.needsVoices')` 	|
| `scrollSpeed` 	| `getPropertyFromClass('PlayState', 'SONG.speed')` 	|
| `bpm` 	| `getPropertyFromClass('PlayState', 'SONG.bpm')` 	|
| `curBpm` 	| `getPropertyFromClass('Conductor', 'bpm')` 	|
| `crochet` 	| `getPropertyFromClass('Conductor', 'crochet')` 	|
| `stepChrochet` 	| `getPropertyFromClass('Conductor', 'stepCrochet')` 	|

</p>
</details>

## Data
| Variables 	| Description 	| Type 	|
|---	|---	|---	|
| `week` 	| The stage's week name. 	| `String` 	|
| `weekRaw` 	| The stage's week ID number, based on the order of the weeks. 	| `String` 	|
| `songName` 	| The stage's song name. 	| `String` 	|
| `songPath` 	| The stage's song path folder. 	| `String` 	|
| `songLength` 	| The stage's song length in milliseconds.  	| `String` 	|
| `loadedSongName` 	| The freeplay name of the song. 	| `String` 	|
| `loadedSongPath` 	| The freeplay path folder of the song. 	| `String` 	|
| `difficulty` 	| The stage's difficulty ID number, based on the order of its difficulties. 	| `String` 	|
| `difficultyName` 	| The stage's difficulty name, always in english. 	| `String` 	|
| `difficultyNameTranslation` 	| The stage's translated difficulty name, based on its current language set to. 	| `String` 	|
| `difficultyPath` 	| The stage's difficulty path folder. 	| `String` 	|

<details><summary><b>All Shortcut to:</b></summary>
<p>

| Variables 	| Shortcut 	|
|---	|---	|
| `week` 	| `getPropertyFromClass('backend.WeekData', 'weeksList, true)[weekRaw]` 	|
| `weekRaw` 	| `getPropertyFromClass('states.PlayState', 'storyWeek')` 	|
| `songName` 	| `getPropertyFromClass('states.PlayState', 'SONG.song')` 	|
| `songPath` 	| `callMethodFromClass('backend.Paths', 'formatToSongPath', {songName})` 	|
| `songLength` 	| `getPropertyFromClass('flixel.FlxG', 'sound.music.length')` 	|
| `loadedSongName` 	| `getPropertyFromClass('backend.Song', 'loadedSongName')` 	|
| `loadedSongPath` 	| `callMethodFromClass('backend.Paths', 'formatToSongPath', {loadedSongPath})` 	|
| `difficulty` 	| `getPropertyFromClass('states.PlayState', 'storyDifficulty')` 	|
| `difficultyName` 	| `callMethodFromClass('backend.Difficulty', 'getString', {difficulty, false})` 	|
| `difficultyNameTranslation` 	| `callMethodFromClass('backend.Difficulty', 'getString', {difficulty, true})` 	|
| `difficultyPath` 	| `callMethodFromClass('backend.Paths', 'formatToSongPath', {difficultyName})` 	|

</p>
</details>

<details><summary><b>All Shortcut to (Deprecated; Pre-Source Code Overhual):</b></summary>
<p>

| Variables 	| Shortcut 	|
|---	|---	|
| `week` 	| `getPropertyFromClass('WeekData', 'weeksList['..weekRaw..']')` 	|
| `weekRaw` 	| `getPropertyFromClass('PlayState', 'storyWeek')` 	|
| `songName` 	| `getPropertyFromClass('PlayState', 'SONG.song')` 	|
| `songPath` 	| `runHaxeCode('Paths.formatToSongPath('..songName..');')` 	|
| `songLength` 	| `getPropertyFromClass('flixel.FlxG', 'sound.music.length')` 	|
| `loadedSongName` 	| _Not Available; Only at `1.0` Pre-Release version._ 	|
| `loadedSongPath` 	| _Not Available; Only at `1.0` Pre-Release version._ 	|
| `difficulty` 	| `getPropertyFromClass('PlayState', 'storyDifficulty')` 	|
| `difficultyName` 	| `getPropertyFromClass('CoolUtil', 'difficulties['..difficulty..']')` 	|
| `difficultyNameTranslation` 	| _Not Available; Only at `1.0` Pre-Release version._ 	|
| `difficultyPath` 	| `runHaxeCode('Paths.formatToSongPath(Difficulty.getString());')` 	|

</p>
</details>

## In-Game
| Variables 	| Description 	| Type 	|
|---	|---	|---	|
| `startedCountdown` 	| Whether the countdown has been started or not.  	| `Boolean` 	|
| `seenCutscene` 	| Whether the cutscene has been already seen or not. This will set to `true`, if the song<br>has been restarted or you've died _(skill issue)_. Useful for not seeing the cutscene<br>multiple times. 	| `Boolean` 	|
| `isStoryMode` 	| Whether is it in story mode or not. 	| `Boolean` 	|
| `inGameOver` 	| Whether the player died from skill issue or not. 	| `Boolean` 	|

<details><summary><b>All Shortcut to:</b></summary>
<p>

| Variables 	| Shortcut 	|
|---	|---	|
| `startedCountdown` 	| `getProperty('startedCountdown')` 	|
| `seenCutscene` 	| `getPropertyFromClass('states.PlayState', 'seenCutscene')` 	|
| `isStoryMode` 	| `getPropertyFromClass('states.PlayState', 'isStoryMode')` 	|
| `inGameOver` 	| _None_ 	|

</p>
</details>

<details><summary><b>All Shortcut to (Deprecated; Pre-Source Code Overhual):</b></summary>
<p>

| Variables 	| Shortcut 	|
|---	|---	|
| `startedCountdown` 	| _No Changes_ 	|
| `seenCutscene` 	| `getPropertyFromClass('PlayState', 'seenCutscene')` 	|
| `isStoryMode` 	| `getPropertyFromClass('PlayState', 'isStoryMode')` 	|
| `inGameOver` 	| _None_ 	|

</p>
</details>

***

# Gameplay
## Charting
| Variables 	| Description 	| Type 	|
|---	|---	|---	|
| `curStep` 	| The current steps per-chart section; recommended to use in `onStepHit()` event callback. 	| `Int` 	|
| `curBeat` 	| The current beats per-chart section; recommended to use in `onBeatHit()` event callback. 	| `Int` 	|
| `curSection` 	| The current sections per-chart section; recommended to use in `onSectionHit()` event callback. 	| `Int` 	|
| `curDecStep` 	| The current steps in decimals (floating-point) per-char section; recommended to use <br>in `onStepHit()` event callback. 	| `Float` 	|
| `curDecBeat` 	| The current beats in decimals (floating-point) per-char section; recommended to use <br>in `onBeatHit()` event callback. 	| `Float` 	|
| `mustHitSection` 	| Whether the section is intended for the player or opponent, from the chart editor. 	| `Boolean` 	|
| `altAnim` 	| Whether the section is intended for to play alternate animation characters, from the chart editor. 	| `Boolean` 	|
| `gfSection` 	| Whether the section is intended for the girlfriend, from the chart editor. 	| `Boolean` 	|

<details><summary><b>All Shortcut to:</b></summary>
<p>

| Variables 	| Shortcut 	|
|---	|---	|
| `curStep` 	| `getProperty('curStep')` 	|
| `curBeat` 	| `getProperty('curBeat')` 	|
| `curSection` 	| `getProperty('curSection')` 	|
| `curDecStep` 	| `getProperty('curDecStep')` 	|
| `curDecBeat` 	| `getProperty('curDecBeat')` 	|
| `mustHitSection` 	| `getPropertyFromClass('states.PlayState', 'SONG.notes', true)[curSection]['mustHitSection']` 	|
| `altAnim` 	| `getPropertyFromClass('states.PlayState', 'SONG.notes', true)[curSection]['altAnim']` 	|
| `gfSection` 	| `getPropertyFromClass('states.PlayState', 'SONG.notes', true)[curSection]['gfSection']` 	|

</p>
</details>

<details><summary><b>All Shortcut to (Deprecated; Pre-Source Code Overhual):</b></summary>
<p>

| Variables 	| Shortcut 	|
|---	|---	|
| `curStep` 	| _No Changes_ 	|
| `curBeat` 	| _No Changes_ 	|
| `curSection` 	| _No Changes_ 	|
| `curDecStep` 	| _No Changes_ 	|
| `curDecBeat` 	| _No Changes_ 	|
| `mustHitSection` 	| `getPropertyFromClass('PlayState', 'SONG.notes['..curSection..'].mustHitSection')` 	|
| `altAnim` 	| `getPropertyFromClass('PlayState', 'SONG.notes['..curSection..'].gfSection')` 	|
| `gfSection` 	| `getPropertyFromClass('PlayState', 'SONG.notes['..curSection..'].altAnim')` 	|

</p>
</details>

## Ratings
| Variables 	| Description 	| Type 	|
|---	|---	|---	|
| `score` 	| The current score you've gained when playing. 	| `Int` 	|
| `misses` 	| The current misses you've gained when playing. 	| `Int` 	|
| `combo` 	| The current combo you've gained when playing. 	| `Int` 	|
| `hits` 	| The current note hits you've gained when playing. 	| `Int` 	|
| `rating` 	| The current rating accuracy percent; Goes from `0` to `1`. 	| `Int` 	|
| `ratingName` 	| The current rating name. 	| `String` 	|
| `ratingFC` 	| The current rating combo name. 	| `String` 	|

<details><summary><b>All Shortcut to:</b></summary>
<p>

| Variables 	| Shortcut 	|
|---	|---	|
| `score` 	| `getProperty('songScore')` 	|
| `misses` 	| `getProperty('songMisses')` 	|
| `combo` 	| `getProperty('combo')` 	|
| `hits` 	| `getProperty('songHits')` 	|
| `rating` 	| `getProperty('ratingPercent')` 	|
| `ratingName` 	| `getProperty('ratingName')` 	|
| `ratingFC` 	| `getProperty('ratingFC')` 	|

</p>
</details>

## Option Settings
| Variables 	| Description 	| Type 	|
|---	|---	|---	|
| `healthGainMult` 	| The amount of health gain multiplier when hittin notes. 	| `Float` 	|
| `healthLossMult` 	| The amount of health loss multiplier when missing notes. 	| `Float` 	|
| `playbackRate` 	| The amount playback rate (speed) when playing a song. 	| `Float` 	|
| `instakillOnMiss` 	| Whether missing a note grants a insta-kill or not. 	| `Boolean` 	|
| `botPlay` 	| Whether botplay will be enabled in gameplay or not. 	| `Boolean` 	|
| `practice` 	| Whether practice mode will be enabled in gameplay or not. _(Holy fuck, Geometry Dash reference)_ 	| `Boolean` 	|

<details><summary><b>All Shortcut to:</b></summary>
<p>

| Variables 	| Shortcut 	|
|---	|---	|
| `healthGainMult` 	| `getProperty('healthGain')` 	|
| `healthLossMult` 	| `getProperty('healthLoss')` 	|
| `playbackRate` 	| `getProperty('playbackRate')` 	|
| `instakillOnMiss` 	| `getProperty('instakillOnMiss')` 	|
| `botPlay` 	| `getProperty('cpuControlled')` 	|
| `practice` 	| `getProperty('practiceMode')` 	|

</p>
</details>

***

# Client Preferences
| Variables 	| Description 	| Type 	|
|---	|---	|---	|
| `downscroll` 	| Whether if downscroll is enabled in gameplay or not. 	| `Boolean` 	|
| `middlescroll` 	| Whether if middlescroll is enabled in gameplay or not. 	| `Boolean` 	|
| `ghostTapping` 	| Whether if ghost tapping is enabled in gameplay or not. 	| `Boolean` 	|
| `hideHud` 	| Whether if the HUD elements are hidden in gameplay or not. 	| `Boolean` 	|
| `scoreZoom` 	| Whether the score will zoom when hitting notes or not. 	| `Boolean` 	|
| `cameraZoomOnBeat` 	| Whether the camera will zoom on each beat of the song. 	| `Boolean` 	|
| `guitarHeroSustains` 	| Whether the sustain notes (long notes) can be pressed again when missed. 	| `Boolean` 	|
| `noResetButton` 	| Whether the reset button is enabled or not. 	| `Boolean` 	|
| `flashingLights` 	| Whether flashing lights are enabled or not. This is recommended to use when flashing <br>lights are present on the song. To prevent seizures who are suffering from<br>Photosensitive epilepsy. 	| `Boolean` 	|
| `lowQuality` 	| Whether low quality is enabled or not. This is recommended to use for objects that<br>might cause lag on lower-end devices. 	| `Boolean` 	|
| `shadersEnabled` 	| Whether shaders being displayed is enabled or not. This is recommended for preventing<br>lag on lower-end devices and prevent simulation sickness. 	| `Boolean` 	|
| `timeBarType` 	| The current time bar text display format. 	| `String` 	|
| `noteOffset` 	| The current note offset when hitting notes, displayed in milliseconds; Goes from `0` to `500`. 	| `Float` 	|
| `healthBarAlpha` 	| The current alpha/opacity of the health bar, useful if you're having trouble on seeing <br>incoming notes. 	| `Float` 	|
| `framerate` 	| The current frame rate for the game to display on screen. Recommended to capped at a certain value to match your computer's frame rate. 	| `Int` 	|
| `noteSkin` 	| The current selected note skin name you've selected. 	| `String` 	|
| `noteSkinPostfix` 	| The current selected note skin suffix name you've selected. 	| `String` 	|
| `splashSkin` 	| The current selected splash skin name you've selected. 	| `String` 	|
| `splashSkinPostfix` 	| The current selected splash skin suffix name you've selected. 	| `String` 	|
| `splashAlpha` 	| The current alpha/opacity of the splash skin. 	| `Float` 	|

<details><summary><b>All Shortcut to:</b></summary>
<p>

| Variables 	| Shortcut 	|
|---	|---	|
| `downscroll` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.downScroll')` 	|
| `middlescroll` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.middleScroll')` 	|
| `ghostTapping` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.ghostTapping')` 	|
| `hideHud` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.hideHud')` 	|
| `scoreZoom` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.scoreZoom')` 	|
| `cameraZoomOnBeat` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.camZooms')` 	|
| `guitarHeroSustains` 	| `getProperty('guitarHeroSustains')` 	|
| `noResetButton` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.noReset')` 	|
| `flashingLights` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.flashing')` 	|
| `lowQuality` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.lowQuality')` 	|
| `shadersEnabled` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.shaders')` 	|
| `timeBarType` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.timeBarType')` 	|
| `noteOffset` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.noteOffset')` 	|
| `healthBarAlpha` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.healthBarAlpha')` 	|
| `framerate` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.framerate')` 	|
| `noteSkin` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.noteSkin')` 	|
| `noteSkinPostfix` 	| `callMethodFromClass('objects.Note', 'getNoteSkinPostfix', {''})` 	|
| `splashSkin` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.splashSkin')` 	|
| `splashSkinPostfix` 	| `callMethodFromClass('objects.NoteSplash', 'getSplashSkinPostfix', {''})` 	|
| `splashAlpha` 	| `getPropertyFromClass('backend.ClientPrefs', 'data.splashAlpha')` 	|

</p>
</details>

<details><summary><b>All Shortcut to (Deprecated; Pre-Source Code Overhual):</b></summary>
<p>

| Variables 	| Shortcut 	|
|---	|---	|
| `downscroll` 	| `getPropertyFromClass('ClientPrefs', 'downScroll')` 	|
| `middlescroll` 	| `getPropertyFromClass('ClientPrefs', 'middleScroll')` 	|
| `ghostTapping` 	| `getPropertyFromClass('ClientPrefs', 'ghostTapping')` 	|
| `hideHud` 	| `getPropertyFromClass('ClientPrefs', 'hideHud')` 	|
| `scoreZoom` 	| `getPropertyFromClass('ClientPrefs', 'scoreZoom')` 	|
| `cameraZoomOnBeat` 	| `getPropertyFromClass('ClientPrefs', 'camZooms')` 	|
| `guitarHeroSustains` 	| _No Changes_ 	|
| `noResetButton` 	| `getPropertyFromClass('ClientPrefs', 'noReset')` 	|
| `flashingLights` 	| `getPropertyFromClass('ClientPrefs', 'flashing')` 	|
| `lowQuality` 	| `getPropertyFromClass('ClientPrefs', 'lowQuality')` 	|
| `shadersEnabled` 	| `getPropertyFromClass('ClientPrefs', 'shaders')` 	|
| `timeBarType` 	| `getPropertyFromClass('ClientPrefs', 'timeBarType')` 	|
| `noteOffset` 	| `getPropertyFromClass('ClientPrefs', 'noteOffset')` 	|
| `healthBarAlpha` 	| `getPropertyFromClass('ClientPrefs', 'healthBarAlpha')` 	|
| `framerate` 	| `getPropertyFromClass('ClientPrefs', 'framerate')` 	|
| `noteSkin` 	| `getPropertyFromClass('ClientPrefs', 'noteSkin')` 	|
| `noteSkinPostfix` 	| _Not Available; Only at `0.7.0` Release version._ 	|
| `splashSkin` 	| `getPropertyFromClass('ClientPrefs', 'splashSkin')` 	|
| `splashSkinPostfix` 	| _Not Available; Only at `0.7.0` Release version._ 	|
| `splashAlpha` 	| `getPropertyFromClass('ClientPrefs', 'splashAlpha')` 	|

</p>
</details>

***

# Characters
## Names
| Variables 	| Description 	| Type 	|
|---	|---	|---	|
| `boyfriendName` 	| The current boyfriend (player) character name. 	| `String` 	|
| `dadName` 	| The current dad (opponent) character name. 	| `String` 	|
| `gfName` 	| The current girlfriend (supporting) character name. 	| `String` 	|

<details><summary><b>All Shortcut to:</b></summary>
<p>

| Variables 	| Shortcut 	|
|---	|---	|
| `boyfriendName` 	| `getProperty('boyfriend.curCharacter')` 	|
| `dadName` 	| `getProperty('dad.curCharacter')` 	|
| `gfName` 	| `getProperty('gf.curCharacter')` 	|

</p>
</details>

## Positions
| Variables 	| Description 	| Type 	|
|---	|---	|---	|
| `defaultBoyfriendX` 	| The default boyfriend (player) character x-position of the stage. 	| `Float` 	|
| `defaultBoyfriendY` 	| The default boyfriend (player) character y-position of the stage. 	| `Float` 	|
| `defaultOpponentX` 	| The default dad (opponent) character x-position of the stage. 	| `Float` 	|
| `defaultOpponentY` 	| The default dad (opponent) character y-position of the stage. 	| `Float` 	|
| `defaultGirlfriendX` 	| The default girlfriend (supporting) character x-position of the stage. 	| `Float` 	|
| `defaultGirlfriendY` 	| The default girlfriend (supporting) character x-position of the stage. 	| `Float` 	|

<details><summary><b>All Shortcut to:</b></summary>
<p>

| Variables 	| Shortcut 	|
|---	|---	|
| `defaultBoyfriendX` 	| `getProperty('BF_X')` 	|
| `defaultBoyfriendY` 	| `getProperty('BF_Y')` 	|
| `defaultOpponentX` 	| `getProperty('DAD_X')` 	|
| `defaultOpponentY` 	| `getProperty('DAD_Y')` 	|
| `defaultGirlfriendX` 	| `getProperty('GF_X')` 	|
| `defaultGirlfriendY` 	| `getProperty('GF_Y')` 	|

</p>
</details>

***

# Strum Receptor
## Player Strums
| Variables 	| Description 	| Type 	| Default Value 	|
|---	|---	|---	|---	|
| `defaultPlayerStrumX0` 	| The default x-position of the player's left strum arrow. 	| `Float` 	| `732` 	|
| `defaultPlayerStrumX1` 	| The default x-position of the player's down strum arrow. 	| `Float` 	| `844` 	|
| `defaultPlayerStrumX2` 	| The default x-position of the player's up strum arrow. 	| `Float` 	| `956` 	|
| `defaultPlayerStrumX3` 	| The default x-position of the player's right strum arrow. 	| `Float` 	| `1068` 	|
| `defaultPlayerStrumY0` 	| The default y-position of the player's left strum arrow. 	| `Float` 	| **Upscroll**: `50` **DownScroll**: `570` 	|
| `defaultPlayerStrumY1` 	| The default y-position of the player's down strum arrow. 	| `Float` 	| **Upscroll**: `50` **DownScroll**: `570` 	|
| `defaultPlayerStrumY2` 	| The default y-position of the player's up strum arrow. 	| `Float` 	| **Upscroll**: `50` **DownScroll**: `570` 	|
| `defaultPlayerStrumY3` 	| The default y-position of the player's right strum arrow. 	| `Float` 	| **Upscroll**: `50` **DownScroll**: `570` 	|

<details><summary><b>All Shortcut to:</b></summary>
<p>

| Variables 	| Shortcut 	|
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

## Opponent Strums
| Variables 	| Description 	| Type 	| Default Value 	|
|---	|---	|---	|---	|
| `defaultOpponentStrumX0` 	| The default x-position of the opponent's <br>left strum arrow. 	| `Float` 	| `92` 	|
| `defaultOpponentStrumX1` 	| The default x-position of the opponent's <br>down strum arrow. 	| `Float` 	| `204` 	|
| `defaultOpponentStrumX2` 	| The default x-position of the opponent's <br>up strum arrow. 	| `Float` 	| `316` 	|
| `defaultOpponentStrumX3` 	| The default x-position of the opponent's <br>right strum arrow. 	| `Float` 	| `428` 	|
| `defaultOpponentStrumY0` 	| The default y-position of the opponent's <br>left strum arrow. 	| `Float` 	| **Upscroll**: `50` **DownScroll**: `570` 	|
| `defaultOpponentStrumY1` 	| The default y-position of the opponent's <br>down strum arrow. 	| `Float` 	| **Upscroll**: `50` **DownScroll**: `570` 	|
| `defaultOpponentStrumY2` 	| The default y-position of the opponent's <br>up strum arrow. 	| `Float` 	| **Upscroll**: `50` **DownScroll**: `570` 	|
| `defaultOpponentStrumY3` 	| The default y-position of the opponent's <br>right strum arrow. 	| `Float` 	| **Upscroll**: `50` **DownScroll**: `570` 	|

<details><summary><b>All Shortcut to:</b></summary>
<p>

| Variables 	| Shortcut 	|
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

***

# Application
| Variables 	| Description 	| Type 	|
|---	|---	|---	|
| `screenWidth` 	| The current width of the screen in game pixels. 	| `Float` 	|
| `screenHeight` 	| The current height of the screen in game pixels. 	| `Float` 	|
| `version` 	| The current version of Psych Engine. 	| `String` 	|
| `buildTarget` 	| The current build target (device) of Psych Engine. 	| `String` 	|
| `scriptName` 	| The current script name that's running from. 	| `String` 	|
| `currentModDirectory` 	| The current mod folder that's running in. 	| `String` 	|

<details><summary><b>All Shortcut to:</b></summary>
<p>

| Variables 	| Shortcut 	|
|---	|---	|
| `screenWidth` 	| `getPropertyFromClass('flixel.FlxG', 'width')` 	|
| `screenHeight` 	| `getPropertyFromClass('flixel.FlxG', 'height')` 	|
| `version` 	| `getPropertyFromClass('MainMenuState', 'psychEngineVersion')` 	|
| `buildTarget` 	| `callMethodFromClass('psychlua.LuaUtils', 'getBuildTarget')` 	|
| `scriptName` 	| _None_ 	|
| `currentModDirectory` 	| `getPropertyFromClass('backend.Mods', 'currentModDirectory')` 	|

</p>
</details>

<details><summary><b>All Shortcut to (Deprecated; Pre-Source Code Overhual):</b></summary>
<p>

| Variables 	| Shortcut 	|
|---	|---	|
| `screenWidth` 	| _No Changes_ 	|
| `screenHeight` 	| _No Changes_ 	|
| `version` 	| _No Changes_ 	|
| `buildTarget` 	| _None_ 	|
| `scriptName` 	| _None_ 	|
| `currentModDirectory` 	| `getPropertyFromClass('Mods', 'currentModDirectory')` 	|

</p>
</details>

***

# Debugging
> [!NOTE]
> _For special variables that are "settable", meaning you can re-assign new values manually, for instance: `luaDebugMode = true`._

| Variables 	| Description 	| Type 	| Settable 	|
|---	|---	|---	|---	|
| `luaDebugMode` 	| Enables the ability to see hidden error messages, recommended if you're<br>coding. 	| `Boolean` 	| `true` 	|
| `luaDeprecatedWarnings` 	| Enables the ability to show deprecated warnings for deprecated functions.<br>Recommended to disable if you're using some deprecated functions. 	| `Boolean` 	| `true` 	|
| `Function_Continue` 	| Enables the event callbacks functionality. 	| `String` 	| `false` 	|
| `Function_Stop` 	| Disables the event callbacks functionality. 	| `String` 	| `false` 	|
| `Function_StopLua` 	| Disables the event callbacks functionality, only in Lua. 	| `String` 	| `false` 	|
| `Function_StopHScript` 	| Disables the event callbacks functionality, only in HScript. 	| `String` 	| `false` 	|
| `Function_StopAll` 	| Disables the event callbacks functionality, only both in Lua and HScript. 	| `String` 	| `false` 	|