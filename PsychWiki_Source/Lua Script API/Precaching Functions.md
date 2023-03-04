# **Note**: _It's highly recommended that you use this `function onCreate()` callback. These functions are mainly used for avoiding a massive game freeze when an asset first gets used._

### addCharacterToList(name:String, type:String)
Precaches the <ins>sprite character</ins>, this used if you're switching charcters.

- `name` - The `json` name of the character.
- `type` - The character type to be used; Can be either: `boyfriend`, `dad` or `gf`.

### precacheImage(name:String)
Precaches the <ins>image sprite</ins>; Must be relative to `mods/images`, `assets/images`, or `assets/shared/images` folders.

- `name` - The image sprite for the sprite to use.

### precacheSound(name:String)
Precaches the <ins>sound</ins>; Must be relative to `mods/sounds` or `assets/sounds` folders.

- `name` - The `ogg` sound file to be played.

### precacheMusic(name:String)
Precaches the <ins>music</ins>; Must be relative to `mods/music` or `assets/music` folders.

- `name` - The `ogg` music file to be played.