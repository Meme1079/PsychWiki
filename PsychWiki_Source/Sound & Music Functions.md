# Start Sound/Music
### playSound(sound:String, volume:Float = 1, ?tag:String)
It plays a sound **(Must Be a .OGG Format)**

- `sound` - The File name _(Relative to located in `mods/sounds/` or `assets/sounds/`)_
- `volume` - Optional value, volume percent goes from `0` to `1`. Default value: `1`
- `tag` - (Optional) Should only be used if you want to pause, resume, change the time, volume or fade in/out your sound, if you don't want to use it, don't include a third value.

### playMusic(sound:String, volume:Float = 1, loop:Bool = false)
It plays a music **(Must Be a .OGG Format)**

- `sound` - The File name _(Relative to located in `mods/music/` or `assets/music/`)_
- `volume` - A Optional value, volume percent goes from `0` to `1`. Default value: `1`
- `loop` - A Optional value, if the music should loop indefinitely. Default value: `false`

# Control Sound/Music
### stopSound(tag:String)
This function will stop the sound and remove it permanently!

- `tag` - The Sound tag

### pauseSound(tag:String)
This function will pause the sound

- `tag` - The Sound tag

### resumeSound(tag:String)
This function will resume the sound

- `tag` - The Sound tag

Example: Using `playSound('confirmMenu', 0.5)` will play the menu "Accept" sound with 50% volume

# Fade in/out
### soundFadeIn(tag:String, duration:Float, fromValue:Float = 0, toValue:Float = 1)
The sound will fade in on the start of the sound

- `tag` - The Sound tag, leave this field empty if you want to do a fade in on the Background music instead
- `duration` - The time it takes for the volume to go from fromValue to toValue
- `fromValue` - Starting value. Default value is `0`
- `toValue` - End value. Default value is `1`

### soundFadeOut(tag:String, duration:Float, toValue:Float = 0)
The sound will fade out on the end of the sound

- `tag` - The Sound tag, leave this field empty if you want to do a fade out on the Background music instead
- `duration` - The time it takes for the volume to go from the starting volume to toValue
- `toValue` - End value. Default value is `0`

### soundFadeCancel(tag:String)
It cancel the fade

- `tag` - The Sound tag, leave this field empty if you want cancel the Background music's fade in/out instead

### musicFadeIn(tag:String, duration:Float, fromValue:Float = 0, toValue:Float = 1)
The music will fade in on the start of the music

- `tag` - The Music tag, leave this field empty if you want to do a fade in on the Background music instead
- `duration` - The time it takes for the volume to go from fromValue to toValue
- `fromValue` - Starting value. Default value is 0
- `toValue` - End value. Default value is 1

### musicFadeOut(tag:String, duration:Float, toValue:Float = 0)
The music will fade out on the end of the music

- `tag` - The Music tag, leave this field empty if you want to do a fade out on the Background music instead
- `duration` - The time it takes for the volume to go from the starting volume to toValue
- `toValue` - End value. Default value is 0

# Getters/Setters
### setSoundVolume(tag:String, value:Float)
Set's the sound volume

- `tag` - The Sound tag, leave this field empty if you want change the Background music's volume instead
- `value` - Goes from 0 to 1.

### setSoundTime(tag:String, value:Float)
Sets the current sound's position in miliseconds

- `tag` - The Sound tag
- `value` - New position
Note: Value 5000 = 5 seconds

### getSoundVolume(tag:String)
Get's the current sound volume

- `tag` - The Sound tag, leave this field empty if you want get the Background music's volume instead

### getSoundTime(tag:String)
Gets the current sound's position in miliseconds

- `tag` - The Sound tag
