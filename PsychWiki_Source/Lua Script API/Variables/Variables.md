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

***

# Application
| Variables 	| Description 	| Type 	|
|---	|---	|---	|
| `screenWidth` 	| The current width of the screen in game pixels. 	| `Float` 	|
| `screenHeight` 	| The current height of the screen in game pixels. 	| `Float` 	|
| `version` 	| The current version of Psych Engine. 	| `String` 	|
| `buildTarget` 	| The current build target (device) of Psych Engine. 	| `String` 	|
| `currentModDirectory` 	| The current mod folder that's running in. 	| `String` 	|

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