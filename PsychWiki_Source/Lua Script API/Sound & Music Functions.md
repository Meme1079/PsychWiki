# Configuration
## Setting Up
For both the sound file and music file, they both must only use the `ogg` file format. Every sound file and music file are each, always stored in their own dedicated folder. For sound files are inside the `sounds` folder and for music files are inside the `music` folder, very self-explanatory and obvious. 

Either within locally in a custom mods folder directory, or globally in the `mods` folder directory. In any case it will still work as usual, but it's still recommended to store it locally in a custom mods for organization, obviously.

## Control
When controlling the sound's properties like its pausing, fading, volume, etc. It must have its unique tag name that will inherit throughout the program, the tag can be declared by the `tag` parameter within the `playSound()` function. 

Additionally the music can be controlled as well, the controlling, fading, and property functions must have it's `tag` argument left blank, no value. This is because only $1$ music can be played within the game, not multiple like sounds. Tho it must have the music playing in order to work properly.

***

# Playing Functions
### playSound(sound:String, volume:Float = 1, ?tag:String = null):Void
Plays a sound. When the said sound had finished playing the `onSoundFinished()` event callback will be called. And returns the said tag given to the finished sound, if the tag for it, is included on the `tag` argument.

> [!NOTE]
> _The given sound to play depends what `sounds` folder directory will it uitilize with. Either within the `assets` folder directory, if the file doesn't exist or the sound file name has a similair name within that folder. It will override from within the `mods` folder directory._

- `sound` - The given sound to play within the game; starts within the `sounds` folder directory.
- `volume` - An optional parameter, the specified amount of volume to play at; Goes from `0` to `1`; Default value: `1`.
- `tag` - An optional parameter, the given unique tag name for the sound to inherit for the sound to be controlled and what not.

Example:
> Plays a sound from within the `assets` folder directory.
```lua
playSound('secret')
```

### playMusic(music:String, volume:Float = 1, ?loop:Bool = false):Void
Plays a music.

- `sound` - The given music to play within the game; starts within the `music` folder directory.
- `volume` - An optional parameter, the specified amount of volume to play at; Goes from `0` to `1`; Default value: `1`.
- `loop` - An optional parameter, whether the music will loop again once finished or not; Default value: `false`.

Example:
> Plays a music from within the `assets` folder directory. _(PEAK MUSIC)_
```lua
playMusic('breakfast-(pico)')
```

***

# Controlling Functions
### stopSound(tag:String):Void
<ins>Stops</ins> the given sound.

- `tag` - The given tag name to stop the sound.

Example:
> Plays the given sound at beat $1$ and stops it at beat $2$.
```lua
function onBeatHit()
     if curBeat == 1 then
          playSound('fnf_loss_sfx', 1, 'loss')
     elseif curBeat == 2 then
          stopSound('loss')
     end
end
```

### pauseSound(tag:String):Void
<ins>Pauses</ins> the given sound.

- `tag` - The given tag name to pause the sound.

Example:
> Plays the given sound at beat $1$ but pauses it at beat $2$, later to be resumed.
```lua
function onBeatHit()
     if curBeat == 1 then
          playSound('fnf_loss_sfx', 1, 'loss')
     elseif curBeat == 2 then
          pauseSound('loss')
     end
end
```

### resumeSound(tag:String):Void
<ins>Resumes</ins> the given sound.

- `tag` - The given tag name to resume the sound.

Example:
> Plays the given sound at beat $1$ but pauses it at beat $2$, and later resumed at beat $3$.
```lua
function onBeatHit()
     if curBeat == 1 then
          playSound('fnf_loss_sfx', 1, 'loss')
     elseif curBeat == 2 then
          pauseSound('loss')
     elseif curBeat == 3 then
          resumeSound('loss')
     end
end
```

***

# Fading Functions
### soundFadeIn(tag:String, duration:Float, fromValue:Float = 0, toValue:Float = 1):Void
Makes the <ins>sound fade-in</ins>, increasing the volume to its current volume at the start of the sound.

- `tag` - The given tag name to start the fade-in.
- `duration` - The amount of duration length of the fade-in from the start and to the end.
- `fromValue` - An optional parameter, the starting volume value to start the fade-in; Default value: `0`.
- `toValue` - An optional parameter, the ending volume value to end the fade-in; Default value: `1`.

Example:
> Plays a sound with a fade-in effect that last in $1$ second that goes from $0$ to $1$.
```lua
playSound('secret', 1, 'secretJingle')
soundFadeIn('secretJingle', 1, 0, 1)
```

### soundFadeOut(tag:String, duration:Float, toValue:Float = 0):Void
Makes the <ins>sound fade-out</ins>, decreasing the volume until its mute at the near-end of the sound.

- `tag` - The given tag name to start the fade-in.
- `duration` - The amount of duration length of the fade-out to end.
- `toValue` - An optional parameter, the target volume value of the fade-out; Default value: `1`.

Example:
> Plays a sound with a fade-out effect that last $2$ seconds that goes from $0$.
```lua
playSound('secret', 1, 'secretJingle')
soundFadeOut('secretJingle', 2, 0)
```

### soundFadeCancel(tag:String):Void
Cancels the fading of the sound.

- `tag` - The given tag name to cancel the fading.

Example:
> Cancels the fade, idk what are you going to do with this.
```lua
soundFadeCancel('secretJingle')
```

***

# Property Functions
## Setters
### setSoundVolume(tag:String, value:Float):Void
<ins>Sets the sound's **volume**</ins> with a new volume value to play at.

- `tag` - The given tag name to set the new volume at.
- `value` - The new volume value to set to.

Example:
> Sets the sound's volume at a very low value.
```lua
setSoundVolume('secretJingle', 0.1)
```

### setSoundTime(tag:String, value:Float):Void
<ins>Sets the sound's **time position**</ins> with a new time position value to play at.

- `tag` - The given tag name to set the new time position at.
- `value` - The new time position value to set to.

Example:
> Sets the sound's time position at $1$ second in advanced.
```lua
setSoundVolume('secretJingle', 1)
```

### setSoundPitch(tag:String, value:Float, doPause:Bool = false):Void
<ins>Sets the sound's **pitch value**</ins> with a new pitch value to play at.

- `tag` - The given tag name to set the new pitch value at.
- `value` - The new pitch value to set to.
- `doPause` - An optional parameter, pauses the sound and resumes the sound while changing the pitch, for updating the sound's pitch value; Default value: `false`.

Example:
> Sets the sound's pitch value to $2.5$ while it's still playing.
```lua
function onCreatePost()
     playSound('secret', 1, 'secretJingle')
     runTimer('jingleDeley', 0.3, 0)
end

function onTimerCompleted(tag, timer, loopsLeft)
     if tag == 'jingleDeley' then
          setSoundPitch('secretJingle', 2.5, true)
     end
end
```

## Getters
### getSoundVolume(tag:String):Float
Gets the <ins>sound's current **volume**</ins> value.

- `tag` - The given tag name to get the current volume from.

### getSoundTime(tag:String):Float
Gets the <ins>sound's current time **position**</ins> value.

- `tag` - The given tag name to get the current time position from.

### getSoundPitch(tag:String):Float
Gets the <ins>sound's current **pitch value**</ins>.

- `tag` - The given tag name to get the current pitch value from.