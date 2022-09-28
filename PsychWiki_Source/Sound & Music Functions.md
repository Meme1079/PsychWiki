# Start Sound/Music
### playSound(sound:String, volume:Float = 1, ?tag:String)
Will play a sound inside the game. **(Must Be a .OGG Format)**

- `sound` - The file name that will be played. _(Relative to located in `mods/sounds/` or `assets/sounds/`)_
- `volume` - An optional value, volume percent goes from `0` to `1`, Default value: `1`.
- `tag` - An optional value, if you don't want to utilize it, then don't include a third value. Should only be used if you wish to halt, resume, adjust the time, volume, or fade in/out your sound.

### playMusic(sound:String, volume:Float = 1, loop:Bool = false)
Will play a music inside the game. **(Must Be a .OGG Format)**

- `sound` - The file name that will be played. _(Relative to located in `mods/music/` or `assets/music/`)_
- `volume` - An optional value, volume percent goes from `0` to `1`, Default value: `1`.
- `loop` - An optional value, will loop the music indefinitely, Default value: `false`.

# Control Sound/Music
### stopSound(tag:String)
This will stop playing a sound permanently.

- `tag` - The sound tag name.

### pauseSound(tag:String)
This will pause the sound that is playing currently.

- `tag` - The sound tag name.

### resumeSound(tag:String)
This will resume the sound if the sound is currently pause.

- `tag` - The sound tag name.

# Fade In/Out
### soundFadeIn(tag:String, duration:Float, fromValue:Float = 0, toValue:Float = 1)
This will cause the sound to fade at the start of playing the sound.

- `tag` - The sound tag name, if you wish to do a fade in on the background music instead, leave this option blank.
- `duration` - How long the fade will last on the song from `fromValue` and `toValue`.
- `fromValue` - The starting value of the sound volume, Default value is `0`.
- `toValue` - The end value of the sound volume, Defualt value is `1`.

### soundFadeOut(tag:String, duration:Float, toValue:Float = 0)
This will cause the sound to fade at the end of playing the sound.

- `tag` - The sound tag name, if you wish to do a fade in on the background music instead, leave this option blank.
- `duration` - How long the fade will last on the song from `toValue`.
- `toValue` - The end value of the sound volume, Defualt value is `0`.

### soundFadeCancel(tag:String)
This will cancel the fade on the sound.

- `tag` - The sound tag name, if you wish to do a fade in on the background music instead, leave this option blank.

### musicFadeIn(tag:String, duration:Float, fromValue:Float = 0, toValue:Float = 1)
This will cause the music to fade at the start of playing the sound.

- `tag` - The music tag name, if you wish to do a fade in on the background music instead, leave this option blank.
- `duration` - How long the fade will last on the song from `fromValue` and `toValue`.
- `fromValue` - The starting value of the sound volume, Default value is `0`.
- `toValue` - The end value of the sound volume, Defualt value is `1`.

### musicFadeOut(tag:String, duration:Float, toValue:Float = 0)
This will cause the music to fade at the end of playing the sound.

- `tag` - The music tag name, if you wish to do a fade in on the background music instead, leave this option blank.
- `duration` - How long the fade will last on the song from `toValue`.
- `toValue` - The end value of the sound volume, Defualt value is `0`.

# Getters/Setters
### setSoundVolume(tag:String, value:Float)
Sets the volume of the sound.

- `tag` - The sound tag name, if you wish to do a fade in on the background music instead, leave this option blank.
- `value` - The volume value, Goes from: `0` to `1`.

### setSoundTime(tag:String, value:Float)
Note: The miliseconds will be converted into seconds, Example: `5000` miliseconds will be converted to `5` seconds.

Sets the current sound's position in miliseconds.

- `tag` - The sound tag name, if you wish to do a fade in on the background music instead, leave this option blank.
- `value` - The new position that will be set.

### getSoundVolume(tag:String)
Gets the current volume of the sound.

- `tag` - The sound tag name, if you wish to do a fade in on the background music instead, leave this option blank.

### getSoundTime(tag:String)
Gets the current sound's position in miliseconds.

- `tag` - The sound tag name, if you wish to do a fade in on the background music instead, leave this option blank.