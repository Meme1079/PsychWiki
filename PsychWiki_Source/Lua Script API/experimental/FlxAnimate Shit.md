# FlxAnimate Functions
### makeFlxAnimateSprite(tag:String, ?x:Float = 0, ?y:Float = 0, ?loadFolder:String = null)
Initializes a <ins>new FlxAnimate sprite</ins>; Will not be added yet, this can only be achieved with the `addLuaSprite()` function.

- `tag` - The tag name of the sprite to be referenced later.
- `x` - An optional parameter, The x axis of the sprite; Default value: `0`.
- `y` - An optional parameter, The y axis of the sprite; Default value: `0`.
- `loadFolder` - An optional parameter, The folder to load the spritemap and Animation jsons and png from; Default value: `nil`.

### loadAnimateAtlas(tag:String, folderOrImg:Dynamic, ?spriteJson:Dynamic = null, ?animationJson:Dynamic = null)
> **Note**: _(The `spriteJson` and `animationJson` parameters needs the full path alongside the .json, example: `mods/images/spritemap1.json`)_

Loads a <ins>new Texture Atlas sprite map</ins> on an existing FlxAnimate sprite.

- `tag` - The existing tag name of the sprite to use.
- `folderOrImg` - The folder path or image path to load the spritemap and Animation jsons and png from.
- `spriteJson` - An optional parameter, The spritemap json path to use; Default value: `nil`. _(Recommended to leave this `nil` if you are gonna use `folderOrImg` since `folderOrImg` already searches for the spritemap and Animation jsons, unless the json is in like a different path or something maybe)_
- `animateJson` - An optional parameter, The Animation json path to use; Default value: `nil`. _(Recommended to leave this `nil` if you are gonna use `folderOrImg` since `folderOrImg` already searches for the spritemap and Animation jsons, unless the json is in like a different path or something maybe)_

### addAnimationBySymbol(tag:String, name:String, symbol:String, ?framerate:Float = 24, ?loop:Bool = false, ?matX:Float = 0, ?matY:Float = 0)
Adds a <ins>new animation from the `Animation.json` file</ins> for the sprite to play.

- `tag` - The existing tag name of the sprite to use.
- `name` - The name to give to the animation.
- `symbol` - The symbol name inside the `Animation.json` file to use.
- `framerate` - An optional parameter, The amount of frames per second that the animation should play at; Default value: `24`.
- `loop` - An optional parameter, Whether the animation should be looped; Default value: `false`.
- `matX` - An optional parameter, The x axis of the animation; Default value: `0`.
- `matY` - An optional parameter, The y axis of the animation; Default value: `0`.

### addAnimationBySymbolIndices(tag:String, name:String, symbol:String, ?indices:Any = null, ?framerate:Float = 24, ?loop:Bool = false, ?matX:Float = 0, ?matY:Float = 0)
Adds a <ins>new animation with the specified frames from the animation</ins> for the sprite to play.

- `tag` - The existing tag name of the sprite to use.
- `name` - The name to give to the animation.
- `symbol` - The symbol name inside the `Animation.json` file to use.
- `indices` - An optional parameter, The frames from the animation that it should play in what order. Can be a table `{1, 2, 3}` or a string `'1, 2, 3'`; Default value: `nil`.
- `framerate` - An optional parameter, The amount of frames per second that the animation should play at; Default value: `24`.
- `loop` - An optional parameter, Whether the animation should be looped; Default value: `false`.
- `matX` - An optional parameter, The x axis of the animation; Default value: `0`.
- `matY` - An optional parameter, The y axis of the animation; Default value: `0`.
