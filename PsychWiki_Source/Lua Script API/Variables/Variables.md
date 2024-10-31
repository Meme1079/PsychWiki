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

## In-Game
| Variables 	| Description 	| Type 	|
|---	|---	|---	|
| `startedCountdown` 	| Whether the countdown has been started or not.  	| `Boolean` 	|
| `seenCutscene` 	| Whether the cutscene has been already seen or not. This will set to `true`, if the song<br>has been restarted or you've died _(skill issue)_. Useful for not seeing the cutscene<br>multiple times. 	| `Boolean` 	|
| `isStoryMode` 	| Whether is it in story mode or not. 	| `Boolean` 	|
| `inGameOver` 	| Whether the player died from skill issue or not. 	| `Boolean` 	|
| `boyfriendName` 	| The current boyfriend (player) character name. 	| `String` 	|
| `dadName` 	| The current dad (opponent) character name. 	| `String` 	|
| `gfName` 	| The current girlfriend (supporting) character name. 	| `String` 	|

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

## Ratings
| Variables 	| Description 	| Type 	|
|---	|---	|---	|
| `score` 	| The current score you've gained when playing. 	| `Int` 	|
| `misses` 	| The current misses you've gained when playing. 	| `Int` 	|
| `combo` 	| The current combo you've gained when playing. 	| `Int` 	|
| `rating` 	| The current rating accuracy percent; Goes from `0` to `1`. 	| `Int` 	|
| `ratingName` 	| The current rating name. 	| `String` 	|
| `ratingFC` 	| The current rating combo name. 	| `String` 	|

## Option Settings
| Variables 	| Description 	| Type 	|
|---	|---	|---	|
| `healthGainMult` 	| The amount of health gain multiplier when hittin notes. 	| `Float` 	|
| `healthLossMult` 	| The amount of health loss multiplier when missing notes. 	| `Float` 	|
| `playbackRate` 	| The amount playback rate (speed) when playing a song. 	| `Float` 	|
| `instakillOnMiss` 	| Whether missing a note grants a insta-kill or not. 	| `Boolean` 	|
| `botPlay` 	| Whether botplay will be enabled in gameplay or not. 	| `Boolean` 	|
| `practice` 	| Whether practice mode will be enabled in gameplay or not. _(Holy fuck, Geometry Dash reference)_ 	| `Boolean` 	|

***

# Client Preferences
- `downscroll`
- `middlescroll`
- `ghostTapping`
- `hideHud`
- `scoreZoom`
- `cmeraZoomOnBeat`
- `flashingLights`
- `lowQuality`
- `shadersEnabled`
- `noResetButton`
- `timeBarType`
- `noteOffset`
- `healthBarAlpha`
- `framerate`
- `guitarHeroSustains`
- `noteSkin`
- `noteSkinPostfix`
- `splashSkin`
- `splashSkinPostfix`
- `splashAlpha`

***

# Strum Receptor
## Player Strums
- `defaultPlayerStrumX0`
- `defaultPlayerStrumX1`
- `defaultPlayerStrumX2`
- `defaultPlayerStrumX3`
- `defaultPlayerStrumY0`
- `defaultPlayerStrumY1`
- `defaultPlayerStrumY2`
- `defaultPlayerStrumY3`

## Opponent Strums
- `defaultOpponentStrumX0`
- `defaultOpponentStrumX1`
- `defaultOpponentStrumX2`
- `defaultOpponentStrumX3`
- `defaultOpponentStrumY0`
- `defaultOpponentStrumY1`
- `defaultOpponentStrumY2`
- `defaultOpponentStrumY3`

***

# Application
- `screenWidth`
- `screenHeight`
- `version`
- `buildTarget`
- `currentModDirectory`

***

# Debugging
- `luaDebugMode`
- `luaDeprecatedWarnings`
- `Function_Continue`
- `Function_Stop`
- `Function_StopLua`
- `Function_StopHScript`