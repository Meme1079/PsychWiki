# Character Functions

### characterPlayAnim(character:String, anim:String, forced:Bool = false)
Plays an character animation

- `character` - Can be `boyfriend`, `dad` or `gf`
- `anim` - Animation name to be played
- `forced` - Can be either `true` or `false`, if set to `true`, it will force the animation to reset if the current animation is the same as the animation to play

### characterDance(character:String)
Makes character do the idle dance

- `character` - Can be `boyfriend`, `dad` or `gf`

### setCharacterX(type:String, value:Float)
Sets the general X position of a character from the `type`, this will also move all precached characters from the same type into the position you want

- `type` - Can be `boyfriend`, `dad` or `gf`
- `value` - The x-coordinate of the character

### setCharacterY(type:String, value:Float)
Sets the general Y position of a character from the `type`, this will also move all precached characters from the same type into the position you want

- `type` - Can be `boyfriend`, `dad` or `gf`
- `value` - The y-coordinate of the character

### getCharacterX(type:String)
Gets the general X position of a character from the `type`

- `type` - Can be `boyfriend`, `dad` or `gf`

### getCharacterY(type:String)
Gets the general Y position of a character from the `type`

- `type` - Can be `boyfriend`, `dad` or `gf`

***

# Key Press Functions

### keyJustPressed(name:String)
Get if the key name just got pressed on the current frame.

Keys: `left`, `down`, `up`, `right`, `accept`, `back`, `pause`, `reset`, `space`

### keyPressed(name:String)
Get if the key name is being held on the current frame.

### keyReleased(name:String)
Get if the key name was released on the current frame.

### keyboardJustPressed(name:String)
Get if the key name just got pressed on the current frame.

- `name` - Any key you want but must be capitalize 

Example: `keyboardJustPressed('SHIFT')`

### keyboardPressed(name:String)
Get if the key name is being held on the current frame.

### keyboardReleased(name:String)
Get if the key name was released on the current frame.

***

# Mouse Click functions

### mouseClicked(name:String)
Get if the mouse button name just got pressed on the current frame. leave 'name' blank for left mouse

Buttons: `left`, `right`, `middle`

### mousePressed(name:String)
Get if the mouse button name is being held on the current frame.

### mouseReleased(name:String)
Get if the mouse button name was released on the current frame.

***

# Lua Exists

### luaSpriteExists(tag:String)
Checks if a sprite exists

- `tag` - The Sprite tag

### luaTextExists(tag:String)
Checks if a text exists

- `tag` - The Text tag

### luaSoundExists(tag:String)
Checks if a sound exists

- `tag` - The Sound tag

***

# Scripts Functions

### isRunning(luaFile:String)
Note: You must add `.lua` for it to work

Check if the lua file is running and will return `true` if it's running currently

- `luaFile` - The file that you want to detect that is running currently

Example: `isRunning('mods/pathTotheFile/luafile.lua')`

### getRunningScripts()
Checks multiple lua files that are running 

### getTextFromFile(path:String, ?ignoreModFolders:Bool = false)
Note: You need to add the file format name for it to work

Gets the text from that file

- `path` - The path of the text file that you are getting
- `ignoreModFolders` - An optional parmeter that ignores the mod folder with a boolean

Example: `getTextFromFile('pathTotheFile/ExampleFile.txt')`

### addLuaScript(path:String)
Adds a lua script

- `path` - Path to LUA relative to the base folder

### removeLuaScript(path:String)
Removes a lua script

- `path` - Path to LUA relative to the base folder

### addHaxeLibrary(libName:String, ?libPackage:String = '')
Adds a library variable into the interpreter

- `libName` - The name of the library name
- `libPackage` - The name of the library package

Example: `addHaxeLibrary('FlxTween', 'flixel.tweens')`

### runHaxeCode(codeToRun:String)
It runs string as a hscript, you must use `[[]]`

Example: `runHaxeCode([[haxe code]])`

***

# Strings Functions

Note: `stringSplit()` and `stringTrim()` works in 0.7.0 Version!

### stringStartsWith(str:String, start:String)
Note: If you trying to detect the last word of the string it will not work, same with `stringEndsWith`

Detects if the string starts with

- `str` - The string you want
- `start` - The start of the string

### stringEndsWith(str:String, end:String)
Detects if the string end with, works the same with `stringStartsWith()`

### stringSplit(str:String, split:String)
Splits a string into mutiple string

- `str` - The string you want
- `start` - The speration of the string

### stringTrim(str:String)
Removes any unnecessary large spaces that the string has

- `str` - The string you want

***

# Other Functions

### triggerEvent(name:String, arg1:String, arg2:String)
Triggers an event without you having to chart them.

- `name` - Event name on Chart Editor
- `arg1` - Value 1 on Chart Editor
- `arg2` - Value 2 on Chart Editor

### setHealthBarColors(leftHex:String, rightHex:String)
Changes the health colors on the health bar **(Must be a Hexadecimal Color)**

- `leftHex` - The opponent health bar color
- `rightHex` - The player health bar color

### setTimeBarColors(leftHex:String, rightHex:String)
Changes the Time bar colors **(Must be a Hexadecimal Color)**

- `leftHex` - The color thats filling up the time bar
- `rightHex` - The background of the time bar

### getColorFromHex(color:String)
Get the color decimal ID from an Hexadecimal value (color).

Example: To get orange, you should use `getColorFromHex('FF7800')` or `getColorFromHex('0xFFFF7800')`

### getSongPosition()
Returns the current song position. Shortcut to `getPropertyClass('Conductor', 'songPosition')`

***

# Song Functions

### exitSong(skipTransition:Bool)
Exits the song

- `skipTransition` - The transition if the song exited

### restartSong(skipTransition:Bool)
Restarts the song

### loadSong(name:String, difficultyNum:Int)
Loads another song

- `name` - The name of the song you wan't to load
- `difficulty` - The difficulty ID of song

***

# Randomizers

### getRandomInt(min:Int, max:Int)
It randomizes the Int better than `math.random(min, max)`

- `min` - Lowest number
- `max` - Highest number

### getRandomFloat(min:Int, max:Int)
It randomizes the Float, works tha same as `getRandomInt()`

### getRandomBool(chance:Float = 50)
It randomizes the Bool

- `chance` - It randomizes the chance of it being `true`

***

# Camera Functions

### cameraShake(camera:String, intensity:Float, duration:Float)
Makes the camera shake

- `camera` - `camGame`, `camHUD` or `camOther`
- `intensity` - How far away should it shake, recommended value is `0.05`
- `duration` - How much time duration for it to shake

### cameraSetTarget(target:String)
Makes the camera focus on a specific target

- `target` - Target can be either boyfriend or dad

### cameraFlash(camera:String, color:String, duration:Float,forced:Bool)
Makes the camera flash

- `camera` - `camGame`, `camHUD` or `camOther`
- `color` - color of flash **(Must be a Hexadecimal Color)**
- `duration` - How much time duration for it to shake
- `forced` - restarts flash or not

### cameraFade(camera:String, color:String, duration:Float,forced:Bool)
Makes the camera fade

- `camera` - `camGame`, `camHUD` or `camOther`
- `color` - color of fade **(Must be a Hexadecimal Color)**
- `duration` - Time duration for it to fade
- `forced` - restarts fade or not

***

# Debug Functions

### debugPrint(text1, text2, text3, text4, text5)
- Prints a debug message on the top-left corner of the screen
- All values are optional
- You can have up to 5 values to be printed.

Example: `debugPrint("Current boyfriend character: ", getProperty("boyfriend.curCharacter"));`

This will print the following message: `Current boyfriend character: bf`

### close(printMessage:Bool)
Stops your script in the next 100 miliseconds. 

And must be used in a `Stage script` because it won't be used anymore

- `printMessage` - Wether you want a warning to show on the top-left corner of the screen or not