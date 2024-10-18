# Start Sound & Music Functions
### playSound(sound:String, volume:Float = 1, ?tag:String = null)
Plays a sound, when it's finished playing the `onSoundFinished()` callback will be called and returns the finished tag from its `tag` parameter.

- `sound` - The `ogg` sound file to be played; Must be relative to `mods/sounds` or `assets/sounds` folders.
- `volume` - An optional parameter, the specified volume to set on; Goes from `0` to `1`; Defualt value: `1`.
- `tag` - An optional parameter, The tag for the sound to inherit. It is required if you want to control or manipulate the said sound instead of the music; Default value: `nil`.

### playMusic(sound:String, volume:Float = 1, loop:Bool = false)
Plays a music.

- `sound` - The `ogg` sound file to be played; Must be relative to `mods/music` or `assets/music` folders.
- `volume` - An optional parameter, the specified volume to set on; Goes from `0` to `1`; Defualt value: `1`.
- `loop` - An optional parameter, Whether the music will loop indefinitely or not; Default value: `false`.

***

> [!NOTE]
> _If the `tag` parameter is left blank for instance a `nil` value. The music will be control and manipulated by the function instead of the sound._

# Control Sound & Music Functions
### stopSound(tag:String)
<ins>Stops</ins> the sound from playing and <ins>removes it permanently</ins>.

- `tag` - The sound object tag to stop; if the argument is a `nil` value, the music will stop instead.

### pauseSound(tag:String)
<ins>Pauses</ins> the sound from playing.

- `tag` - The sound object tag to pause; if the argument is a `nil` value, the music will pause instead.

### resumeSound(tag:String)
<ins>Resumes</ins> the sound from pausing.

- `tag` - The sound object tag to resume; if the argument is a `nil` value, the music will resume instead.

***

# Fade Ease Functions
### soundFadeIn(tag:String, duration:Float, fromValue:Float = 0, toValue:Float = 1)
Makes the sound <ins>fade-in</ins>.

- `tag` - The sound object tag to fade-in; if the argument is a `nil` value, the music will fade-in instead.
- `duration` - The specified duration length to fade-in, determines from the `fromValue` and `toValue` argument.
- `fromValue` - An optional parameter, the starting value of the fade-in; Goes from `0` to `1`; Defualt value: `0`.
- `toValue` - An optional parameter, the ending value of the fade-in; Goes from `0` to `1`; Defualt value: `0`.

### soundFadeOut(tag:String, duration:Float, toValue:Float = 0)
Makes the sound <ins>fade-out</ins>.

- `tag` - The sound object tag to fade-out; if the argument is a `nil` value, the music will fade-out instead.
- `duration` - The specified duration length to fade-out, determines from the `fromValue` and `toValue` argument.
- `fromValue` - An optional parameter, the starting value of the fade-out; Goes from `0` to `1`; Defualt value: `0`.
- `toValue` - An optional parameter, the ending value of the fade-out; Goes from `0` to `1`; Defualt value: `0`.

### soundFadeCancel(tag:String)
Cancels the sound fade.

- `tag` - The sound object tag to cancel the fade; if the argument is a `nil` value, the music will cancel the fade.

***

# Property Setter Functions
### setSoundVolume(tag:String, value:Float)
Sets the <ins>volume value</ins> of the sound with a new value.

- `tag` - The sound object tag to set the volume; if the argument is a `nil` value, the music to set the volume.
- `value` - The determined volume value to set to.

### setSoundTime(tag:String, value:Float)
Sets the <ins>sound position value</ins> of the sound with a new value.

- `tag` - The sound object tag to set the position; if the argument is a `nil` value, the music to set the position.
- `value` - The determined sound position value to set to.

### setSoundPitch(tag:String, value:Float, doPause:Bool = false)
Sets the <ins>pitch value</ins> of the sound object.

- `tag` - The sound object tag to set the pitch; if the argument is a `nil` value, the music to set the pitch.
- `value` - The determined pitch value to set to.
- `doPause` - An optional parameter, pauses the sound and resumes when played; Default value: `false`. <sup>_More Information Needed_</sup> 

***

# Property Getter Functions
### getSoundVolume(tag:String)
Gets the current <ins>volume value</ins> of the sound.

- `tag` - The sound object tag to get the volume; if the argument is a `nil` value, the music to get the volume.

### getSoundTime(tag:String)
Gets the current <ins>sound position value</ins> of the sound.

- `tag` - The sound object tag to get the position; if the argument is a `nil` value, the music to get the position.

### getSoundPitch(tag:String)
Gets the current <ins>pitch value</ins> of the sound.

- `tag` - The sound object tag to get the pitch; if the argument is a `nil` value, the music to get the pitch.