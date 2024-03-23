# FlxAnimate Functions
### makeFlxAnimateSprite(tag:String, ?x:Float = 0, ?y:Float = 0, ?loadFolder:String = null)
similar to "makeAnimatedLuaSprite" but instead of a image loads a folder with sprite atlas inside

- `tag` -
- `x` -
- `y` -
- `loadFolder` -

### loadAnimateAtlas(tag:String, folderOrImg:Dynamic, ?spriteJson:Dynamic = null, ?animationJson:Dynamic = null)
loads a sprite atlas using image and the associated sprite json and animate json

- `tag` -
- `folderOrImg` -
- `spriteJson` -
- `animateJson` -

### addAnimationBySymbol(tag:String, name:String, symbol:String, ?framerate:Float = 24, ?loop:Bool = false, ?matX:Float = 0, ?matY:Float = 0)

- `tag` - 
- `name` -
- `symbol` -
- `framerate` -
- `loop` -
- `matX` -
- `matY` -

### addAnimationBySymbolIndices(tag:String, name:String, symbol:String, ?indices:Any = null, ?framerate:Float = 24, ?loop:Bool = false, ?matX:Float = 0, ?matY:Float = 0)
both are similar to the addAnimation function counterparts (Idk what matx and y is so you might need to test it out probably not needed)

- `tag` - 
- `name` -
- `symbol` -
- `indices` -
- `framerate` -
- `loop` -
- `matX` -
- `matY`