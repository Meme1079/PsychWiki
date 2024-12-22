# Character Functions
### characterDance(characterType:String):Void
Makes the specified character play their <ins>default idle animation</ins>.

- `characterType` - The specified character type to play an idle animation; Can be either: `boyfriend`, `dad`, or `gf`.

Example:
> Forces to play an idle animation to the player character, if the key pressing has gone on after $1$ second.
```lua
function onKeyPress(key)
     runTimer('resetAnim', 1, 0)
end

function onTimerCompleted(tag, loops, loopsLeft)
     if tag == 'resetAnim' then
          characterDance('boyfriend')
     end
end
```

<!-- ### characterShowTits():Void -->

## Setter
### setCharacterX(characterType:String, value:Float):Void
Sets the specified <ins>character's current **x-position**</ins> to a new value, a shorthand version.

- `characterType` - The specified character type to set its x-position to; Can be either: `boyfriend`, `dad`, or `gf`.
- `value` - The new x-position value to set to.

Example:
> Sets the x-position of the girlfriend character by a randomizer from $0$ through $100$.
```lua
setCharacterX('gf', getRandomInt(0, 100))
```

### setCharacterY(characterType:String, value:Float):Void
Sets the specified <ins>character's current **y-position**</ins> to a new value, a shorthand version.

- `characterType` - The specified character type to set its y-position to; Can be either: `boyfriend`, `dad`, or `gf`.
- `value` - The new y-position value to set to.

Example:
> Sets the y-position of the girlfriend character by a randomizer from $0$ through $100$.
```lua
setCharacterY('gf', getRandomInt(0, 100))
```

## Getter
### getCharacterX(characterType:String):Float
Gets the specified <ins>character's current **x-position**</ins> value from, a shorthand version.

- `characterType` - The specified character type to get its current x-position value from; Can be either: `boyfriend`, `dad`, or `gf`.

### getCharacterY(characterType:String):Float
Gets the specified <ins>character's current **y-position**</ins> value from, a shorthand version.

- `characterType` - The specified character type to get its current y-position value from; Can be either: `boyfriend`, `dad`, or `gf`.

***

# Rating Accuracy Functions
## Setters
### setScore(value:Int = 0):Void
Sets the score value with a <ins>**new score total** value value</ins>, and recalculates the rating.

- `value` - An optional parameter, the new score total value to set to; Default value: `0`.

Example:
> Sets the score value to this value.
```lua
setScore(360490)
```

### setMisses(value:Int = 0):Void
Sets the miss value with a <ins>**new miss total** value value</ins>, and recalculates the rating.

- `value` - An optional parameter, the new miss total value to set to; Default value: `0`.

Example:
> Sets the miss value to this value.
```lua
setMisses(5)
```

### setHits(value:Int = 0):Void
Sets the hit value with a <ins>**new hit total** value value</ins>, and recalculates the rating.

- `value` - An optional parameter, the new hit total value to set to; Default value: `0`.

Example:
> Sets the hit value to this value.
```lua
setHits(30)
```

### setHealth(value:Float = 1):Void
Sets the health value with a <ins>**new health total** value</ins>.

- `value` - An optional parameter, the new health total value to set to; Default value: `0`.

Example:
> Sets the health value to this value.
```lua
setHealth(0.5)
```

### setRatingPercent(value:Float):Void
Sets the rating percent accuracy value with a <ins>**new percent accuracy** value</ins>.

- `value` - The new percent accuracy value to set to; Goes from `0` to `1`.

Example:
> Sets the rating percent to this value.
```lua
setRatingPercent(0.35)
```

### setRatingName(value:String):Void
Sets the rating name accuracy value with a <ins>**new name accuracy** value</ins>.

- `value` - The new name accuracy value to set to.

Example:
> Sets the rating name to this value.
```lua
setRatingName('I\'m in your walls')
```

### setRatingFC(value:String):Void
Sets the rating combo name value with a <ins>**new combo name** value</ins>.

- `value` - The new combo name value to set to.

> Sets the rating combo name to this value.
```lua
setRatingFC('Double Combo!!')
```

## Adders
### addScore(value:Int = 0):Void
Adds the specified <ins>amount of **score** value</ins> to its current value, and recalculates the rating.

- `value` - An optional parameter, the amount of value to add to the score value; Default value: `0`.

Example:
> Adds this score value when hitting note.
```lua
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
     addScore(10)
end
```

### addMisses(value:Int = 0):Void
Adds the specified <ins>amount of **miss** value</ins> to its current value, and recalculates the rating.

- `value` - An optional parameter, the amount of value to add to the miss value; Default value: `0`.

Example:
> Adds this miss value when missing note.
```lua
function noteMiss(membersIndex, noteData, noteType, isSustainNote)
     addMisses(5)
end
```

### addHits(value:Int = 0):Void
Adds the specified <ins>amount of **hit** value</ins> to its current value, and recalculates the rating.

- `value` - An optional parameter, the amount of value to add to the hits value; Default value: `0`.

Example:
> Adds this hit value when hitting note.
```lua
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
     addHits(3)
end
```

### addHealth(value:Float = 0):Void
Adds the specified <ins>amount of **health** value</ins> to its current value.

- `value` - An optional parameter, the amount of value to add to the health value; Default value: `0`.

Example:
> Adds this health at $0.1$ when hitting a note while $-0.1$ when missing a note.
```lua
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
     addHealth(0.1)
end

function noteMiss(membersIndex, noteData, noteType, isSustainNote)
     addHealth(-0.1)
end
```

## Getters
### getHealth():Float
Gets the current <ins>**health total** value</ins>.

***

# Camera Functions
### cameraSetTarget(target:String):Void
Makes the <ins>camera forcefully focus on target character</ins>.

- `target` - The specified character type to focus at; Can be either: `boyfriend`, `dad`, or `gf`.

Example:
> Forces the camera to the player character always on each update of the frame.
```lua
function onUpdate(elapsed)
     cameraSetTarget('boyfriend')
end
```

### cameraShake(camera:String, intensity:Float, duration:Float):Void
Makes the <ins>camera screen **shake**</ins>.

- `camera` - The specified camera state to apply to; Can be either: `camGame`, `camHUD` or `camOther`.
- `intensity` - The amount of intensity for the shaking of the camera; Recommended value: `0.05`.
- `duration` - The amount of duration length of the camera shaking to manually end.

Example:
> Forces the camera HUD to shake when missing a note.
```lua
function noteMiss(membersIndex, noteData, noteType, isSustainNote)
     cameraShake('camHUD', 0.008, 1)
end
```

### cameraFlash(camera:String, color:String, duration:Float, forced:Bool):Void
Makes the <ins>camera screen **flash**</ins>.

- `camera` - The specified camera state to apply to; Can be either: `camGame`, `camHUD` or `camOther`.
- `color` - The flash color to display on the camera screen.
- `duration` - The amount of duration length of the camera flashing to manually end.
- `forced` - Whether the flash will restart or not, if there's already a flash currently happening.

Example:
> Forces a color green flash within the camera HUD, when a specific animation plays.
```lua
function onUpdate(elapsed)
     if getProperty('boyfriend.animation.curAnim.name') == 'hey' then
          cameraFlash('camHUD', '00ff00', 0.8)
     end
end
```

### cameraFade(camera:String, color:String, duration:Float, forced:Bool, ?fadeOut:Bool = false):Void
Makes the <ins>camera screen **fade**</ins>.

- `camera` - The specified camera state to apply to; Can be either: `camGame`, `camHUD` or `camOther`.
- `color` - The fade color to display on the camera screen.
- `duration` - The amount of duration length of the camera fading to manually end.
- `forced` - Whether the fade will restart or not, if there's already a fade currently happening.
- `fadeOut` - An optional parameter, whether it will fade-in or fade-out; Default value: `false`.

Example:
> Does a fade-in using a black color.
```lua
function onCreate()
     cameraFade('camHUD', '000000', 1, false, true)
end
```

***

# Camera Targeting Functions
## Setters
### setCameraFollowPoint(x:Float, y:Float):Void
<ins>Sets the camera's object follow point coordinates</ins> with a new follow point coordinate values. For the camera object to scroll to that specfic point coordinates.

- `x` - The new x-position value to set the camera's follow point coordinates to.
- `y` - The new y-position value to set the camera's follow point coordinates to.

Example:
> Changes the camera follow point coordinates when focusing to the player character.
```lua
function onMoveCamera(focus)
     if focus == 'boyfriend' then
          setCameraFollowPoint(800, 450)
     end
end
```

### setCameraScroll(x:Float, y:Float):Void
<ins>Sets the camera's parallax scroll position value</ins> with a new scroll position values.

- `x` - The new x-position value to set the camera's scroll value to.
- `y` - The new y-position value to set the camera's scroll value to.

Example:
> Forcefully sets the camera's scroll position to the player character's follow point coordinates. When focusing at the player character, thus making it instantly set to that coordinate.
```lua
function onMoveCamera(focus)
     if focus == 'boyfriend' then
          setCameraScroll(800, 450)
     end
end
```

## Adders
### addCameraFollowPoint(?x:Float = 0, ?y:Float = 0):Void
<ins>Adds the specified amount of the camera's object coordinates follow point</ins> to its current value. For the camera object to scroll to that specfic point coordinates.

- `x` - An optional parameter, the amount value given to the x-position to add; Default value: `0`.
- `y` - An optional parameter, the amount value given to the y-position to add; Default value: `0`.

Example:
> Adds $150$ value only to the camera's object x-coordinate when focusing to the player character.
```lua
function onMoveCamera(focus)
     if focus == 'boyfriend' then
         addCameraFollowPoint(150)
     end
end
```

### addCameraScroll(?x:Float = 0, ?y:Float = 0):Void
<ins>Adds the specified amount of the camera's parallax scroll position</ins> value to its current value.

- `x` - An optional parameter, the amount value given to the x-position to add; Default value: `0`.
- `y` - An optional parameter, the amount value given to the y-position to add; Default value: `0`.

Example:
> Adds $-200$ value only to the camera's scroll x-position when focusing to the opponent character.
```lua
function onMoveCamera(focus)
     if focus == 'dad' then
          addCameraScroll(-200)
     end
end
```

## Getters
### getCameraFollowX():Float
Gets the current <ins>camera's object follow point **x-coordinates**</ins> current value.

### getCameraFollowY():Float
Gets the current <ins>camera's object follow point **y-coordinates**</ins> current value.

### getCameraScrollX():Float
Gets the current <ins>camera's parallax scroll **x-position**</ins> current value.

### getCameraScrollY():Float
Gets the current <ins>camera's parallax scroll **y-position**</ins> current value.

***

# Achievement Functions <!-- Might have a dedicated page for this -->
## Achievement Property Scores
> [!WARNING]
> _For the `name` parameter, if the given element name tag from the achievement JSON file isn't present within the data. It will immediately throw an error and returns: `-1`._

### setAchievementScore(name:String, ?value:Float = 1, ?saveIfNotUnlocked = true):Float
Sets the specified achievement score value with a new value, plus returning its current new value.

- `name` - The specified element name tag from the achievement JSON file to utilize.
- `value` - An optional parameter, the new achievement score value to set to; Default value: `1`.
- `saveIfNotUnlocked` - An optional parameter, whether the score value will save if isn't at or above the maximum value. Reffering to the element `maxScore` from the achievement JSON file; Default value: `true`.

### addAchievementScore(name:String, ?value:Float = 1, ?saveIfNotUnlocked:Bool = true):Float
Adds the specified amount of achievement score value to its current value, plus returning its current added new value.

- `name` - The specified element name tag from the achievement JSON file to utilize.
- `value` - An optional parameter, the amount of value to add to the achievement score value; Default value: `1`.
- `saveIfNotUnlocked` - An optional parameter, whether the score value will save if isn't at or above the maximum value. Reffering to the element `maxScore` from the achievement JSON file; Default value: `true`.

### getAchievementScore(name:String):Float
Gets the specified achievement score current value.

- `name` - The specified element name tag from the achievement JSON file to utilize.

## Achievement Utility
### unlockAchievement(name:String):String
<ins>Immediately unlocks the given achievement</ins> and returns the unlocked achievement name.

- `name` - The specified element name tag from the achievement JSON file to unlock.

### achievementExists(name:String):Dynamic
Checks whether the <ins>given achievement exists or not</ins>, probably used to prevent envoking an error.

- `name` - The specified element name tag from the achievement JSON file to check its existence.

### isAchievementUnlocked(name:String):Bool
Checks whether the <ins>given achievement has been unlocked or not</ins>.

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
Checks whether if the <ins>Lua **sprite object** within the game exists or not</ins>.

- `tag` - The tag name of the sprite object to check its existence.

### luaTextExists(tag:String):Bool
Checks whether if the <ins>Lua **text object** within the game exists or not</ins>.

- `tag` - The tag name of the text object to check its existence.

### luaSoundExists(tag:String):Bool
Checks whether if the <ins>Lua **sound** within the game exists or not</ins>.

- `tag` - The tag name of the sound to check its existence.

***

# Color Functions
### setHealthBarColors(opponent:String, player:String):Void
Set the health-bar colors from <ins>either both the **opponent and player** with a new color</ins>.

- `opponent` - The new color for the opponent bar color to display.
- `player` - The new color for the player bar color to display.

Example:
> Sets both the opponent and player health-bar colors to these color values.
```lua
function onCreatePost()
     setHealthBarColors('FF0000', '00FF00')
end
```

### setTimeBarColors(background:String, percent:String):Void
Set the time-bar colors from <ins>either both the **perecent bar and background** with a new color</ins>.

- `background` - The new color for the time-bar background color to display.
- `percent` - The new color for the percent bar color to display.

Example:
> Sets both the background and percent time-bar colors to these color values.
```lua
function onCreatePost()
     setTimeBarColors('C8FF00', '3700FF')
end
```

### getPixelColor(obj:String, x:Int, y:Int):Int
Returns the color in hexadecimal value of the given object <ins>by its pixel size value</ins>. It uses 32-bit decimal interger, if converted into a hexadecimal number it will formatted as: `FFFFFFFFAARRGGBB`.

- `object` - The object tag name to get its color from.
- `x` - The x-position value from the object to get its pixel color from.
- `y` - The y-position value from the object to get its pixel color from.

Example:
> Gets the specific color of the boyfriend character and converts to a hexadecimal number.
```lua
debugPrint( ('%x'):format( getPixelColor('bf', 30, 24) ) ) --> FFFFFFFFFF000000
```

### getColorFromName(color:String):String
Parses and returns color in hexadecimal value <ins>by its corresponding `FlxColor` class value</ins>. Additionally this function has alternative names such as: `getColorFromString()` and `FlxColor()` functions, if you don't like the name or smt idk.

- `color` - The given color format to parse.

Example:
> Set the colors of boyfriend, girlfriend, and opponent character to their corresponding colors.
```lua
setProperty('bf.color', getColorFromName('0xffff00'))
setProperty('gf.color', getColorFromName('#ffff00'))
setProperty('dad.color', getColorFromName('yellow'))
```

### getColorFromHex(color:String):Int
Works the same as the `getColorFromName()` function, but doesn't require the hexadecimal hashtag <kbd>#</kbd> to represent hexadecimal.

- `color` - The given color format to parse.

Example:
> Self-explanatory.
```lua
setProperty('gf.color', getColorFromName('ffff00'))
```

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

# Mouse Position Functions
### getMouseX(?camera:String = 'camGame'):Float
<ins>Gets the current mouse **x-position**</ins> by its given camera state.

- An optional parameter, the specified camera state to apply to; Can be either: `camGame`, `camHUD` or `camOther`
<br>Default value: `camGame`.

### getMouseY(?camera:String = 'game'):Float
<ins>Gets the current mouse **y-position**</ins> by its given camera state.

- An optional parameter, the specified camera state to apply to; Can be either: `camGame`, `camHUD` or `camOther`
<br>Default value: `camGame`.

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