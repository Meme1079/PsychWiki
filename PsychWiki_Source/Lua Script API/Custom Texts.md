<!-- 

TODO: Will be added in 17.1.0 & Knuckles

# Configuration
## Setting Up
## Creating Texts
### Adding Fonts

*** 
-->

# Text Functions
### makeLuaText(object:String, ?text:String = '', ?width:Int = 0, ?x:Float = 0, ?y:Float = 0):Void
Initializes the creation of a text object. This will not add the text object immediately into the game yet.

- `tag` - The unique tag name for the text object to inherit for later use.
- `text` - An optional parameter, The given text content for the text object to display inside the game.
- `width` - An optional parameter, the specified text-box width to be set in; Default value: `0`.
- `x` - An optional parameter, the specified x-position value of the text object to be set at; Default value: `0`.
- `y` - An optional parameter, the specified y-position value of the text object to be set at; Default value: `0`.

### addLuaText(object:String):Void
Adds the given text object into the game. Once a text object has been added it will overlap the previous added object. Causing the recently added object to be placed in front of every object in the game.

- `tag` - The given text object name tag to add within the game.

### removeLuaText(object:String, destroy:Bool = true):Void
Removes the given text object from the game.

- `tag` - The given text object name tag to remove from the game.
- `destroy` - An optional parameter, whether the given text object will be permanently removed or not; Default value: `true`.

***

# Text Property Functions
## Setters
### setTextString(object:String, text:String):Bool
Sets the given <ins>text object's string content</ins> with a new content. Returns `true`, if it works properly.

- `object` - The given text object name tag to set a new content.
- `text` - The new string content to set to.

### setTextSize(object:String, size:Int):Bool
Sets the given <ins>text object's size</ins> with a new size value.

- `object` - The given text object name tag to set a new size. Returns `true`, if it works properly.
- `size` - The new size value to set to.

### setTextAutoSize(object:String, autoSize:Bool):Bool
Sets the given <ins>text object's auto-sizing</ins>, it determins the width and height by its text content size.

- `object` - The given text object name tag to enable auto-sizing or not.
- `autoSize` - Whether to enable auto-sizing or not.

### setTextWidth(object:String, width:Float):Bool
Sets the given <ins>text object's text-box width</ins> with a new text-box width value. Returns `true`, if it works properly.

- `object` - The given text object name tag to set a new text-box width.
- `width` - The new text-box width value to set to.

### setTextHeight(object:String, height:Float):Bool
Sets the given <ins>text object's text-box height</ins> with a new text-box height value. Returns `true`, if it works properly.

- `object` - The given text object name tag to set a new text-box height. 
- `height` - The new text-box height value to set to.

### setTextBorder(object:String, size:Float, color:String, ?style:String = 'outline'):Bool
Sets the given <ins>text object's border size, color, and [style](https://api.haxeflixel.com/flixel/text/FlxTextBorderStyle.html)</ins> with a new value.

- `object` - The given text object name tag to set a new border properties. Returns `true`, if it works properly.
- `size` - The new border size to set to.
- `color` - The new border color to set to.
- `style` - An optional parameter, The new border style to set to; Default value: `outline`.

### setTextColor(object:String, color:String):Bool
Sets the given <ins>text object's text color</ins> with a new color value. Returns `true`, if it works properly.

- `object` - The given text object name tag to set a new color value to.
- `color` - The new color value to set to.

### setTextAlignment(object:String, alignment:String = 'left'):Bool
Sets the given <ins>text object's text alignment</ins> with a new alignment. Returns `true`, if it works properly.

- `object` - The given text object name tag to set a new alignment to.
- `alignment` - An optional parameter, the new alignment to set to; Default value: `left`.

### setTextFont(object:String, newFont:String):Bool
Sets the given <ins>text object's font</ins> with a new font. Returns `true`, if it works properly.

- `object` - The given text object name tag to set a new font to.
- `newFont` - The new font to set to; starts within the `fonts` folder directory.

### setTextItalic(object:String, italic:Bool):Bool
Sets the given <ins>text object's into a italic type</ins>. Returns `true`, if it works properly.

- `object` - The given text object name tag to enable italic type or not.
- `italic` - Whether to enable italic type or not.

## Getters
### getTextString(object:String):String
Gets the given text object's <ins>current string content value</ins>.

- `object` - The given text object name tag to get the current string content from.

### getTextSize(object:String):Float
Gets the given text object's <ins>current size value</ins>.

- `object` - The given text object name tag to get the current size value from.

### getTextWidth(object:String):Float
Gets the given text object's <ins>current text-box width value</ins>.

- `object` - The given text object name tag to get the current text-box width from.

### getTextFont(object:String):String
Gets the given text object's <ins>current font</ins>.

- `object` - The given text object name tag to get the current font from.