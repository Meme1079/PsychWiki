# Configuration
## Setting Up
## Creating Texts
### Adding Fonts

***

# Text Functions
### makeLuaText(tag:String, text:String, width:Int, x:Float, y:Float):Void
### addLuaText(tag:String):Void
### removeLuaText(tag:String, destroy:Bool = true):Void

***

# Text Property Setters
## Setters
### setTextString(tag:String, text:String):Bool
### setTextSize(tag:String, size:Int):Bool
### setTextAutoSize(tag:String, value:Bool):Bool
### setTextWidth(tag:String, width:Float):Bool
### setTextHeight(tag:String, height:Float):Bool
### setTextBorder(tag:String, size:Float, color:String, ?style:String = 'outline'):Bool
### setTextColor(tag:String, color:String):Bool
### setTextAlignment(tag:String, alignment:String = 'left'):Bool
### setTextFont(tag:String, newFont:String):Bool
### setTextItalic(tag:String, italic:Bool):Bool

## Getters
### getTextString(tag:String):String
### getTextSize(tag:String):Float
### getTextWidth(tag:String):Float
### getTextFont(tag:String, font:String):String