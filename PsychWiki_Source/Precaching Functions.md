> **Warning**: _It's highly recommended that you use this `function onCreate()` callback. These functions are mainly used for avoiding a massive game freeze when an asset first gets used._

> **Note**: _`precacheSound()` and `precacheMusic()` only supports the file format `ogg` and `precacheImage()` only supports the file format `png`. If any of these file format are not `ogg` or `png` it will not work._

### addCharacterToList(name:String, type:String)
Will precache the <ins>character</ins>, can be used when using `triggerEvent()` on the `Change Character`.

- `name` - The character name to be used, example: `pico-player`, `mom-car`, `gf`, etc.
- `type` - the character type to be used, can be either `boyfriend`, `dad`, or `gf`.

### precacheSound(name:String)
Will precache the <ins>sound</ins>. 

- `name` - The sound tag or object variable name, Should be located inside `mods/sounds/` or `assets/sounds/` folder.

### precacheMusic(name:String)
Will precache the <ins>music</ins>. 

- `name` - The music tag or object variable name, Should be located inside `mods/sounds/` or `assets/sounds/` folder.

### precacheImage(name:String)
> **Note**: _For now `precacheImage()` is only capable of precaching images inside `mods/`!_

Will precache the <ins>image</ins>. 

- `name` - The sprite tag or object variable name, Should be located inside `mods/images/` folder.