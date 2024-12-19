# Configuration
## Setting Up
For both the sound file and music file, they both must only use the `ogg` file format. Every sound file and music file are each, always stored in their own dedicated folder. For sound files are inside the `sounds` folder and for music files are inside the `music` folder, very self-explanatory and obvious. 

Either within locally in a custom mods folder directory, or globally in the `mods` folder directory. In any case it will still work as usual, but it's still recommended to store it locally in a custom mods for organization, obviously.

***

# Playing Functions
### playSound(sound:String, volume:Float = 1, ?tag:String = null):Void
Plays a sound. When the said sound had finished playing the `onSoundFinished()` event callback will be called. And returns the said tag given to the finished sound, if the tag for it, is included on the `tag` argument.

- `sound` - The given sound to play within the game; starts within the `sounds` folder directory.
- `volume` - An optional parameter, the specified amount of volume to play at; Goes from `0` to `1`; Default value: `1`.
- `tag` - An optional parameter, the tag for the sound to inherit for the sound to be controlled and what not.

### playMusic(music:String, volume:Float = 1, ?loop:Bool = false):Void
Plays a music.

- `sound` - The given music to play within the game; starts within the `music` folder directory.
- `volume` - An optional parameter, the specified amount of volume to play at; Goes from `0` to `1`; Default value: `1`.
- `loop` - An optional parameter, whether the music will loop again once finished or not; Default value: `false`.

***

# Controlling Functions
### stopSound(tag:String):Void
Stops the given sound.

- `tag` - The given tag name to stop the sound.

### pauseSound(tag:String):Void
Pauses the given sound.

- `tag` - The given tag name to pause the sound.

### resumeSound(tag:String):Void
Resumes the given sound.

- `tag` - The given tag name to resume the sound.

***

# Fading Functions
### soundFadeIn(tag:String, duration:Float, fromValue:Float = 0, toValue:Float = 1):Void
Makes the sound fade-in, increasing the volume to its current volume at the start of the sound.

- `tag` - The given tag name to start the fade-in, if left blank it will make music fade-in instead.
- `duration` - The amount of duration length of the fade-in from the start and to the end.
- `fromValue` - An optional parameter, the starting volume value to start the fade-in; Default value: `0`.
- `toValue` - An optional parameter, the ending volume value to end the fade-in; Default value: `1`.

### soundFadeOut(tag:String, duration:Float, toValue:Float = 0):Void
Makes the sound fade-out, decreasing the volume until its mute at the near-end of the sound.

- `tag` - The given tag name to start the fade-in, if left blank it will make music fade-out instead.
- `duration` - The amount of duration length of the fade-out to end.
- `toValue` - An optional parameter, the target volume value of the fade-out; Default value: `1`.

### soundFadeCancel(tag:String):Void
Cancels the fading of the sound.

- `tag` - The given tag name to cancel the fading.

***

# Property Functions
## Setters
### setSoundVolume(tag:String, value:Float):Void
Sets the sound's volume with a new volume value to play at.

- `tag` - The given tag name to set the new volume at.
- `value` - The new volume value to set to.

### setSoundTime(tag:String, value:Float):Void
Sets the sound's time position with a new time position value to play at.

- `tag` - The given tag name to set the new time position at.
- `value` - The new time position value to set to.

### setSoundPitch(tag:String, value:Float, doPause:Bool = false):Void
Sets the sound's pitch value with a new pitch value to play at.

- `tag` - The given tag name to set the new pitch value at.
- `value` - The new pitch value to set to.
- `doPause` - An optional parameter, pauses the sound and resumes the sound while changing the pitch, for updating the sound's pitch value; Default value: `false`.

## Getters
### getSoundVolume(tag:String):Float
Gets the sound's current volume value.

- `tag` - The given tag name to get the current volume from.

### getSoundTime(tag:String):Float
Gets the sound's current time position value.

- `tag` - The given tag name to get the current time position from.

### getSoundPitch(tag:String):Float
Gets the sound's current pitch value value.

- `tag` - The given tag name to get the current pitch value from.