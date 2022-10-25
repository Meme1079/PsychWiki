_Note: It's highly recommended that you use this `function onCreate()` callback. These functions are mainly used for avoiding a massive game freeze when an asset first gets used._

### addCharacterToList(name:String, type:String)
Will precache the <ins>character</ins>, can be used when using `triggerEvent()` on the `Change Character`.

- `name` - The character name to be used, example: `pico-player`, `mom-car`, `gf`, etc.
- `type` - the character type to be used, can be either `boyfriend`, `dad`, or `gf`.

### precacheSound(name:String)
Will precache the <ins>sound</ins>. **(MUST BE .OGG FORMAT)**

- `name` - The sound tag or object variable name, Should be located inside `mods/sounds/` or `assets/sounds/`.

### precacheMusic(name:String)
Will precache the <ins>music</ins>. **(MUST BE .OGG FORMAT)**

- `name` - The music tag or object variable name, Should be located inside `mods/sounds/` or `assets/sounds/`.

### precacheImage(name:String)
Note: For now `precacheImage()` is only capable of precaching images inside `mods/`!

Will precache the <ins>image</ins>. **(MUST BE .PNG FORMAT)**

- `name` - The sprite tag or object variable name, Should be located inside `mods/images/`.