# Start Sound/Music Functions
### playSound(sound:String, volume:Float = 1, ?tag:String = null)
Plays a <ins>sound</ins> inside the game. When the sound is finished, <ins>`onSoundFinished()` will be called with the `tag` parameter</ins>.

- `sound` - The `ogg` sound file to be played; Must be relative to `mods/sounds` or `assets/sounds` folders.
- `volume` - An optional parameter, The specified volume percent of the sound; Goes from `0` to `1`; Defualt value: `1`.
- `tag` - An optional parameter, The sound object tag name to be used. This will be required if you want to control the sound; Default value: `nil`.

### playMusic(sound:String, volume:Float = 1, loop:Bool = false)
Plays a <ins>music</ins> inside the game.

- `sound` - The `ogg` music file to be played; Must be relative to `mods/music` or `assets/music` folders.
- `volume` - An optional parameter, The specified volume percent of the music; Goes from `0` to `1`; Defualt value: `1`.
- `loop` - Whether the music will loop indefinitely; Default value: `false`.

***

# Control Sound/Music Functions
### stopSound(tag:String)
<ins>Stops</ins> the sound from playing and <ins>removes it permanently</ins>.

- `tag` - The sound object tag name to be used.

### pauseSound(tag:String)
<ins>Pauses</ins> the sound from playing.

- `tag` - The sound object tag name to be used.

### resumeSound(tag:String)
<ins>Resumes</ins> the sound from pausing.

- `tag` - The sound object tag name to be used.

***

# Fade In/Out Functions
### soundFadeIn(tag:String, duration:Float, fromValue:Float = 0, toValue:Float = 1)
Makes the sound <ins>fade-in</ins>. If you want the music to fade then <ins>leave `tag` parameter blank</ins> and not a `nil` value. This works with <ins>fading and property functions</ins>.

- `tag` - The sound object tag name to be used. If you want to fade the music leave the `tag` parameter blank, not a `nil` value. This will work on fade and volume/time functions.
- `duration` - The duration length of the sound to fade-in, from `fromValue` and `toValue`.
- `fromValue` - An optional parameter, The starting volume of the fade; Goes from `0` to `1`; Defualt value: `0`.
- `toValue` - An optional parameter, The ending volume of the fade; Goes from `0` to `1`; Defualt value: `1`.

### soundFadeOut(tag:String, duration:Float, toValue:Float = 0)
Makes the sound <ins>fade-out</ins>.

- `tag` - The sound object tag name to be used.
- `duration` - The duration length of the sound to fade-out, from the current volume to `toValue`.
- `toValue` - An optional parameter, The ending volume of the fade; Goes from `0` to `1`; Defualt value: `0`.

### soundFadeCancel(tag:String)
Cancels the sound fade.

- `tag` - The sound object tag name to be used.

***

# Property Setter/Getter Functions
### setSoundVolume(tag:String, value:Float)
Sets the current <ins>volume of the sound object</ins> with a new value.

- `tag` - The sound object tag name to be used.
- `value` - The new sound volume value; Goes from `0` to `1`.

### setSoundTime(tag:String, value:Float)
Sets the current <ins>sound position of the sound object</ins> with a new value.

- `tag` - The sound object tag name to be used.
- `value` - The new sound position value.

### setSoundPitch(tag:String, value:Float, doPause:Bool = false)
Sets the <ins>determined pitch value</ins> of the sound object.

- `tag` - The sound object tag name to be used.
- `value` - The determined pitch value.
- `doPause` - Does a pause when a sound is currently playing; Default value: `false`.

### getSoundVolume(tag:String)
Gets the current <ins>sound volume of the sound object</ins> current volume value; Returns a `float` number.

- `tag` - The sound object tag name to be used.

### getSoundTime(tag:String)
Gets the current <ins>sound position of the sound object</ins> current position value; Returns a `float` number.

- `tag` - The sound object tag name to be used.

### getSoundPitch(tag:String)
Gets the current <ins>sound pitch of the sound object</ins> current pitch value; Returns a `float` number.

- `tag` - The sound object tag name to be used.
