> **Note**: _When adding a sound in the game the format should be `ogg` if not then it will not work properly as you inteded for it to be._

# Start Sound/Music Functions
### playSound(sound:String, volume:Float = 1, ?tag:String)
Will <ins>play a sound</ins> inside the game.

- `sound` - The file name that will be played. _(Relative to located in `mods/sounds/` or `assets/sounds/` folder)_
- `volume` - An optional value, volume percent goes from `0` to `1`, Default value: `1`.
- `tag` - An optional value, if you don't want to utilize it, then don't include a third value. Should only be used if you wish to halt, resume, adjust the time, volume, or fade in/out your sound. If the sound has been completed playing then the `onSoundFinished()` function will be called.

### playMusic(sound:String, volume:Float = 1, loop:Bool = false)
Will <ins>play a music</ins> inside the game.

- `sound` - The file name that will be played. _(Relative to located in `mods/music/` or `assets/music/` folder)_
- `volume` - An optional value, volume percent goes from `0` to `1`, Default value: `1`.
- `loop` - An optional value, will loop the music indefinitely, Default value: `false`.

***

# Control Sound/Music Functions
### stopSound(tag:String)
This will <ins>stop playing</ins> the sound permanently.

- `tag` - The sound tag name.

### pauseSound(tag:String)
This will <ins>pause the sound</ins> that is playing currently.

- `tag` - The sound tag name.

### resumeSound(tag:String)
This will <ins>resume the sound</ins> if the sound is currently pause.

- `tag` - The sound tag name.

***

# Fade In/Out Functions
### soundFadeIn(tag:String, duration:Float, fromValue:Float = 0, toValue:Float = 1)
This will cause the sound to <ins>fade at the start</ins> of playing the sound.

- `tag` - The sound tag name, if you wish to do a fade in on the background music instead, leave this option blank.
- `duration` - How long the fade will last on the song from `fromValue` and `toValue`.
- `fromValue` - The starting value of the sound volume, Default value is `0`.
- `toValue` - The end value of the sound volume, Defualt value is `1`.

### soundFadeOut(tag:String, duration:Float, toValue:Float = 0)
This will cause the sound to <ins>fade at the end</ins> of playing the sound.

- `tag` - The sound tag name, if you wish to do a fade in on the background music instead, leave this option blank.
- `duration` - How long the fade will last on the song from `toValue`.
- `toValue` - The end value of the sound volume, Defualt value is `0`.

### soundFadeCancel(tag:String)
This will cause the sound to <ins>cancel the fade</ins> of playing the sound.

- `tag` - The sound tag name, if you wish to do a fade in on the background music instead, leave this option blank.

***

# Getters/Setters Functions
### setSoundVolume(tag:String, value:Float)
<ins>Sets the current volume</ins> of the sound.

- `tag` - The sound tag name, if you wish to do a fade in on the background music instead, leave this option blank.
- `value` - The volume value, Goes from `0` to `1`.

### setSoundTime(tag:String, value:Float)
> **Note**: _The milliseconds will be converted into seconds, Example: `5000` milliseconds will be converted to `5` seconds._

<ins>Sets the current sound</ins> position in milliseconds.

- `tag` - The sound tag name, if you wish to do a fade in on the background music instead, leave this option blank.
- `value` - The new position that will be set.

### getSoundVolume(tag:String)
<ins>Gets the current volume</ins> of the sound.

- `tag` - The sound tag name, if you wish to do a fade in on the background music instead, leave this option blank.

### getSoundTime(tag:String)
<ins>Gets the current sound</ins> position in milliseconds.

- `tag` - The sound tag name, if you wish to do a fade in on the background music instead, leave this option blank.