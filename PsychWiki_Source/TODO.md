# Functions to add in new update of psych engine

- `makeFlxAnimateSprite(tag:String, ?x:Float = 0, ?y:Float = 0, ?loadFolder:String = null)`
- `loadAnimateAtlas(tag:String, folderOrImg:Dynamic, ?spriteJson:Dynamic = null, ?animationJson:Dynamic = null)`
- `addAnimationBySymbol(tag:String, name:String, symbol:String, ?framerate:Float = 24, ?loop:Bool = false, ?matX:Float = 0, ?matY:Float = 0)`
- `addAnimationBySymbolIndices(tag:String, name:String, symbol:String, ?indices:Any = null, ?framerate:Float = 24, ?loop:Bool = false, ?matX:Float = 0, ?matY:Float = 0)`
- `eraseSaveData(name:String)`
- `setSoundPitch(tag:String, value:Float, doPause:Bool = false)`
- `getSoundPitch(tag:Strin)`
- `getModSetting(saveTag:String, ?modName:String = null)`
- `insertToCustomSubstate(tag:String, ?pos:Int = -1)`

# New Page
- `Custom Substates` - This will include the "About Custom Substates", which will talk what a custom substate is and to make one. And a list of functions and global callbacks.