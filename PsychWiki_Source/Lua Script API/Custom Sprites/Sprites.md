# Configuration
## Setting Up
## Creating Sprites
### Adding Animations

***

# FlxAnimate

***

# Sprite Functions
### makeLuaSprite(tag:String, ?image:String = null, ?x:Float = 0, ?y:Float = 0):Void


### makeAnimatedLuaSprite(tag:String, ?image:String = null, ?x:Float = 0, ?y:Float = 0, ?spriteType:String = "auto"):Void
### addLuaSprite(tag:String, front:Bool = false):Void
### removeLuaSprite(tag:String, destroy:Bool = true, ?group:String = null):Void

***

# Sprite Graphic Functions
### makeGraphic(tag:String, width:Int = 256, height:Int = 256, color:String = 'FFFFFF'):Void
### loadGraphic(variable:String, image:String, ?gridX:Int = 0, ?gridY:Int = 0):Void
### setBlendMode(obj:String, blend:String = ''):Bool

***

# Sprite Animation Functions
### addAnimation(obj:String, name:String, frames:Array\<Int\>, framerate:Int = 24, loop:Bool = true):Void
### addAnimationByPrefix(obj:String, name:String, prefix:String, framerate:Int = 24, loop:Bool = true):Bool
### addAnimationByIndices(obj:String, name:String, prefix:String, indices:String, framerate:Int = 24, loop:Bool = false):Void
### playAnim(obj:String, name:String, forced:Bool = false, ?reverse:Bool = false, ?startFrame:Int = 0):Bool
### addOffset(obj:String, anim:String, x:Float, y:Float):Bool
### loadFrames(variable:String, image:String, spriteType:String = "sparrow"):Void