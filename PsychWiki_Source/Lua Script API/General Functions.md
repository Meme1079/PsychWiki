# Character Functions
### characterDance(characterType:String):Void
Makes the specified character play their default idle animation.

- `characterType` - The specified character type to play an idle animation; Can be either: `boyfriend`, `dad`, or `gf`.

<!-- ### characterShowTits():Void -->

## Setter
### setCharacterX(characterType:String, value:Float):Void
Sets the specified character's current x-position to a new value, a shorthand version.

- `characterType` - The specified character type to set its x-position to; Can be either: `boyfriend`, `dad`, or `gf`.
- `value` - The new x-position value to set to.

### setCharacterY(characterType:String, value:Float):Void
Sets the specified character's current y-position to a new value, a shorthand version.

- `characterType` - The specified character type to set its y-position to; Can be either: `boyfriend`, `dad`, or `gf`.
- `value` - The new y-position value to set to.

## Getter
### getCharacterX(characterType:String):Float
Gets the specified character's current x-position value from, a shorthand version.

- `characterType` - The specified character type to get its current x-position value from; Can be either: `boyfriend`, `dad`, or `gf`.

### getCharacterY(characterType:String):Float
Gets the specified character's current y-position value from, a shorthand version.

- `characterType` - The specified character type to get its current y-position value from; Can be either: `boyfriend`, `dad`, or `gf`.

***

# Rating Accuracy Functions
## Adders
### addScore(value:Int = 0):Void
Adds the specified amount of value to the score value.

- `value` - An optional parameter, the amount of value to add to the score value; Default value: `0`.

### addMisses(value:Int = 0):Void
Adds the specified amount of value to the misses value.

- `value` - An optional parameter, the amount of value to add to the miss value; Default value: `0`.

### addHits(value:Int = 0):Void
Adds the specified amount of value to the hits value.

- `value` - An optional parameter, the amount of value to add to the hits value; Default value: `0`.

### addHealth(value:Float = 0):Void
Adds the specified amount of value to the health value.

- `value` - An optional parameter, the amount of value to add to the health value; Default value: `0`.

## Setters
### setScore(value:Int = 0):Void
Sets the score value with a new score total value value.

- `value` - An optional parameter, the new score total value to set to; Default value: `0`.

### setMisses(value:Int = 0):Void
Sets the miss value with a new miss total value value.

- `value` - An optional parameter, the new miss total value to set to; Default value: `0`.

### setHits(value:Int = 0):Void
Sets the hit value with a new hit total value value.

- `value` - An optional parameter, the new hit total value to set to; Default value: `0`.

### setHealth(value:Int = 0):Void
Sets the health value with a new health total value.

- `value` - An optional parameter, the new health total value to set to; Default value: `0`.

### setRatingPercent(value:Float):Void
Sets the rating percent accuracy value with a new percent accuracy value.

- `value` - The new percent accuracy value to set to.

### setRatingName(value:String):Void
Sets the rating name accuracy value with a new name accuracy value.

- `value` - The new name accuracy value to set to.

### setRatingFC(value:String):Void
Sets the rating combo name value with a new combo name value.

- `value` - The new combo name value to set to.

## Getters
### getScore():Int
Gets the current song score total value.

### getMisses():Int
Gets the current song miss total value.

### getHits():Int
Gets the current song hit total value.

### getHealth():Float
Gets the current health total value.

***

# Camera Functions
### cameraSetTarget(target:String):Void
Makes the camera forcefully focus on target character.

- `target` - The specified character type to focus at; Can be either: `boyfriend`, `dad`, or `gf`.

### cameraShake(camera:String, intensity:Float, duration:Float):Void
Makes the camera screen shake.

- `camera` - The specified camera state to apply to; Can be either: `camGame`, `camHUD` or `camOther`.
- `intensity` - The amount of intensity for the shaking of the camera; Recommended value: `0.05`.
- `duration` - The amount of duration length of the camera shaking to manually end.

### cameraFlash(camera:String, color:String, duration:Float, forced:Bool):Void
Makes the camera screen flash.

- `camera` - The specified camera state to apply to; Can be either: `camGame`, `camHUD` or `camOther`.
- `color` - The flash color to display on the camera screen.
- `duration` - The amount of duration length of the camera flashing to manually end.
- `forced` - Whether the flash will restart or not, if there's already a flash currently happening.

### cameraFade(camera:String, color:String, duration:Float, forced:Bool, ?fadeOut:Bool = false):Void
Makes the camera screen fade.

- `camera` - The specified camera state to apply to; Can be either: `camGame`, `camHUD` or `camOther`.
- `color` - The fade color to display on the camera screen.
- `duration` - The amount of duration length of the camera fading to manually end.
- `forced` - Whether the fade will restart or not, if there's already a fade currently happening.
- `fadeOut` - An optional parameter, whether the fading out will happen or not; Default value: `false`.

## Adders
### addCameraScroll(?x:Float = 0, ?y:Float = 0):Void
Adds the amount of the camera's basic parallax scroll value within the game.

- `x` - An optional parameter, the amount value given to the x-position to add; Default value: `0`.
- `y` - An optional parameter, the amount value given to the y-position to add; Default value: `0`.

### addCameraFollowPoint(?x:Float = 0, ?y:Float = 0):Void
Adds the amount of the camera's object coordinates follow point.

- `x` - An optional parameter, the amount value given to the x-position to add; Default value: `0`.
- `y` - An optional parameter, the amount value given to the y-position to add; Default value: `0`.

## Setters
### setCameraScroll(x:Float, y:Float):Void
Sets the camera's basic parallax scroll value within the game with a new scroll values.

- `x` - The new x-position value to set the camera's scroll value to.
- `y` - The new y-position value to set the camera's scroll value to.

### setCameraFollowPoint(x:Float, y:Float):Void
Sets the camera's object follow point coordinates with a new follow point coordinate values.

- `x` - The new x-position value to set the camera's follow point coordinates to.
- `y` - The new y-position value to set the camera's follow point coordinates to.

## Getters
### getCameraScrollX():Float
Gets the current camera's basic parallax scroll x-position within the game current value.

### getCameraScrollY():Float
Gets the current camera's basic parallax scroll y-position within the game current value.

### getCameraFollowX():Float
Gets the current camera's object follow point x-coordinates current value.

### getCameraFollowY():Float
Gets the current camera's object follow point y-coordinates current value.

***

# Achievement Functions <!-- Might have a dedicated page for this -->
## Achievement Property Scores
> [!WARNING]
> _For the `name` parameter, if the given element name tag from the achievement JSON file isn't present within the data. It will immediately throw an error and returns: `-1`._

### addAchievementScore(name:String, ?value:Float = 1, ?saveIfNotUnlocked:Bool = true):Float
Adds the specified amount of achievement score value, plus returning its current added new value.

- `name` - The specified element name tag from the achievement JSON file to utilize.
- `value` - An optional parameter, the amount of value to add to the achievement score value; Default value: `1`.
- `saveIfNotUnlocked` - An optional parameter, whether the score value will save if isn't at or above the maximum value. Reffering to the element `maxScore` from the achievement JSON file; Default value: `true`.

### setAchievementScore(name:String, ?value:Float = 1, ?saveIfNotUnlocked = true):Float
Sets the specified achievement score value with a new value, plus returning its current new value.

- `name` - The specified element name tag from the achievement JSON file to utilize.
- `value` - An optional parameter, the new achievement score value to set to; Default value: `1`.
- `saveIfNotUnlocked` - An optional parameter, whether the score value will save if isn't at or above the maximum value. Reffering to the element `maxScore` from the achievement JSON file; Default value: `true`.

### getAchievementScore(name:String):Float
Gets the specified achievement score current value.

- `name` - The specified element name tag from the achievement JSON file to utilize.

## Achievement Utility
### unlockAchievement(name:String):String
Immediately unlocks the given achievement and returns the unlocked achievement name.

- `name` - The specified element name tag from the achievement JSON file to unlock.

### achievementExists(name:String):Dynamic
Checks whether the given achievement exists or not, probably used to prevent envoking an error.

- `name` - The specified element name tag from the achievement JSON file to check its existence.

### isAchievementUnlocked(name:String):Bool
Checks whether the given achievement has been unlocked or not.

- `name` - The specified element name tag from the achievement JSON file to check its status.

***

# Dialogues & Cutscene Functions <!-- Might have a dedicated page for this -->
### startDialogue(dialogue:String, music:String = null):Void
Starts a dialogue.

- `dialogue` - The specified dialogue JSON file to load; Relative to the `data/song-name` folder.
- `music` - An optional parameter, the background music to play during the dialogue; Relative to the `music` folder.

### startVideo(video:String, ?skippable:Bool = true):Void
Starts and plays a video cutscene.

- `video` - The specified video file to play; Relative to the `videos` folder.
- `skippable` - An optional parameter, whether the ability to skip the video is enable or not; Default value: `true`.

### startCountdown():Void
Starts the countdown immediately, that's it.

***

# Song Utility Functions
### loadSong(?name:String = null, ?difficultyNum:Int = -1):Void
Loads a given song within the game.

> [!WARNING]
> _When loading a specific song with different week JSON files, the difficulty list must equal to each-other to prevent erros and stuff._

- `name` - An optional parameter, the given song name to load, if the argument is left blank—load itself.
- `difficulty` - An optional parameter, the specified difficulty ID number to load to, uses `-1` to load its current difficulty from the previous song; Default value: `-1`.

### restartSong(?skipTransition:Bool = false):Void
Restarts the song that's currently playing on.

- `skipTransition` - An optional parameter, whether the fading transition are enable or not; Default value: `false`.

### exitSong(?skipTransition:Bool = false):Void
Exits the song to the story mode or freeplay menus; not to be confused with the `endSong()` function.

- `skipTransition` - An optional parameter, whether the fading transition are enable or not; Default value: `false`.

### endSong():Void
Ends the song manually.

***

# Lua Exists Functions
### luaSpriteExists(tag:String):Bool
Checks whether if the Lua sprite object within the game exists or not.

- `tag` - The tag name of the sprite object to check its existence.

### luaTextExists(tag:String):Bool
Checks whether if the Lua text object within the game exists or not.

- `tag` - The tag name of the text object to check its existence.

### luaSoundExists(tag:String):Bool
Checks whether if the Lua sound within the game exists or not.

- `tag` - The tag name of the sound to check its existence.

***

# Color Functions
### setHealthBarColors(opponent:String, player:String):Void
Set the health-bar colors from either both the opponent and player with a new color.

- `opponent` - The new color for the opponent bar color to display.
- `player` - The new color for the player bar color to display.

### setTimeBarColors(percent:String, background:String):Void
Set the time-bar colors from either both the precent bar and background with a new color.

- `percent` - The new color for the percent bar color to display.
- `background` - The new color for the time-bar background color to display.

### getPixelColor(obj:String, x:Int, y:Int):Int
Returns the color in hexadecimal value of the given object by its pixel size. It uses 32-bit decimal interger, if converted into a hexadecimal number it will formatted as: `FFFFFFFFAARRGGBB`.

- `object` - The object tag name to get its color from.
- `x` - The x-position value from the object to get its pixel color from.
- `y` - The y-position value from the object to get its pixel color from.

### getColorFromName(color:String):String
Parses and returns color in hexadecimal value by its corresponding `FlxColor` class value. Additionally this function has alternative names such as: `getColorFromString()` and `FlxColor()` functions, if you don't like the name or smt idk.

- `color` - The given color format to parse.

### getColorFromHex(color:String):Int
Works the same as the `getColorFromName()` function, but doesn't require the hexadecimal hashtag <kbd>#</kbd> to represent hexadecimal.

- `color` - The given color format to parse.

***

# Discord Status Functions
### changeDiscordPresence(details:String, state:Null\<String\>, ?smallImageKey:String, ?hasStartTimestamp:Bool, ?endTimestamp:Float, ?largeImageKey:String):Void
Changes your current [Discord RPC](https://raw.githubusercontent.com/Jxyme/simple-discord-rpc/main/screenshots/8zptsNqx.png) detail status.

> [!WARNING]
> _The `endTimestamp` parameter must have the `hasStartTimestamp` parameter to be set to `true`._

- `details` - The given application title for the rich presence.
- `state` - The given application mini-description for the rich presence.
- `smallImageKey` - An optional parameter, the minor image icon of your RPC at the bottom-right corner.
- `hasStartTimestamp` - An optional parameter, whether your RPC should have have a time stamp displaying or not.
- `endTimestamp` - An optional parameter, whether to use a countdown or not, by milliseconds. 
- `largeImageKey` - An optional parameter, the main image icon of your RPC.

### changeDiscordClientID(?newID:String = null):Void
Changes your current Discord Client ID.

- `newID` - The new client ID number for the discord client to inherit.

***

# Miscellaneous Functions
### triggerEvent(name:String, ?arg1:Dynamic = '', ?arg2:Dynamic = ''):Bool
Triggers a given event.

- `name` - The given name of the event to trigger.
- `arg1` - An optional parameter, the first argument of the event to use, if it even uses one.
- `arg2` - An optional parameter, the secondary argument of the event to use, if it even uses one.

### getModSetting(saveTag:String, ?modName:String = null):Void
Gets the specified element tag from the settings JSON file to utilize.

- `saveTag` - The specified element tag name to get its current saved value.
- `modName` - An optional parameter, The given mod folder to locally find the settings JSON file within itself.

### getSongPosition():Float
Returns the current song position by milliseconds; Shortcut to: `getPropertyFromClass('backend.Conductor', 'songPosition')`.

### updateScoreText():Void
Updates the current score text content, that's it.