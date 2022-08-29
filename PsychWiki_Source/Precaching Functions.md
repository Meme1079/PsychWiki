Note: It's highly recommended that you use this `function onCreate()` callback. These functions are mainly used for avoiding a massive game freeze when an asset first gets used.

### addCharacterToList(name:String, type:String)
Creates a character for the `'Change Character'` event.

- `name` - Character name, example: `pico-player`, `mom-car`, `gf`, etc.
- `type` - Character type, 'boyfriend' for player, 'dad' for opponent, 'gf' for girlfriend.

### precacheSound(name:String)
it precache the sound **(MUST BE .OGG FORMAT)**

- `name` - Asset name, should be located inside `mods/sounds/` or `assets/sounds/`

### precacheMusic(name:String)
it precache the music **(MUST BE .OGG FORMAT)**

- `name` - Asset name, should be located inside `mods/music/` or `assets/music/`

### precacheImage(name:String)
NOTE: For now precacheImage is only capable of precaching images inside `mods/`!

it precache the image **(MUST BE .PNG FORMAT)**

- `name` - Asset name, should be located inside `mods/images/`