# Creating/Adding/Removing Sprite
### makeLuaSprite(tag:String, image:String, x:Float, y:Float)
Creates a sprite object with no animation. And you want a black screen put `nil` on `image` and add `makeGraphic` **(Must Be a .PNG Format)**

If another Lua Sprite that exists is already using the `tag`, it will be removed.

- `tag` - The Sprite tag or Object variable name
- `image` - The image path for the sprite object _(Relative to `mods/images`, `assets/images`, or `assets/shared/images`)_
- `x` - The x-coordinate of the sprite object
- `y` - The y-coordinate of the sprite object

### makeAnimatedLuaSprite(tag:String, image:String, x:Float, y:Float)
Creates a Lua Sprite that supports Animations, and must have a `xml file` with it.

- `tag` - The Sprite tag or Object variable name
- `image` - The image path for the sprite object _(Relative to `mods/images`, `assets/images`, or `assets/shared/images`)_
- `x` - The x-coordinate of the sprite object
- `y` - The y-coordinate of the sprite object

### addLuaSprite(tag:String, front:Bool)
Adds a sprite object to the game

- `tag` - The Sprite tag or Object variable name
- `front` - Whether or not the sprite object gets added on top of the characters

### removeLuaSprite(tag:String, destroy:Bool)
Removes a sprite object from the game

- `tag` - The Sprite tag or Object variable name
- `destroy` - Whether or not the sprite object should be fully removed, disallowing further use

***

# Creating/Adding/Removing Text
### makeLuaText(tag:String, text:String, width:Int, x:Float, y:Float)
Creates a text object with position `x`, `y`, and `width`. **(Must Be a .TTF Format)**

- `tag` - The Text tag or Object variable name
- `text` - The Text object will have
- `width` - The Width of the text; setting it to 0 will automatically determine the width for you
- `x` - The x-coordinate of the object
- `y` - The y-coordinate of the object

### addLuaText(tag:String)
Adds a text object to the game

- `tag` - The Text tag or Object variable name

### removeLuaText(tag:String, destroy:Bool)
Removes a text object off the game

- `tag` - The Text tag or Object variable name
- `destroy` - Whether or not the object will be fully destroyed, making it unable to be re-added

***

# Setting Text Properties
### setTextString(tag:String, text:String)
Set's the text string

- `tag` - The Text tag or Object variable name
- `text` - Set the text object will have

### setTextSize(tag:String, size:Int)
Set's the text size

- `size` - Set the size of the text

### setTextWidth(tag:String, width:Float)
Set's the text width

- `width` - Set the width of the text

### setTextBorder(tag:String, size:Int, color:String)
Set's the text border

- `size` - Set the size of the border
- `color` - Set the color of the border, **(Must be a Hexadecimal Color)**

### setTextColor(tag:String, color:String)
Set's the text color

- `color` - Set the color of the text, **(Must be a Hexadecimal Color)**

### setTextAlignment(tag:String, alignment:String = 'left')
Set's the text alignment

- `alignment` - Set the alignment of the text's, it can be `left`, `center`, `right` 

### setTextFont(tag:String, font:String)
Set's the text font you must have font in the `fonts` folder

- `font` - Set the text font's

### setTextItalic(tag:String, italic:Bool)
Set's the text to _italic_

- `italic` - Set the italic text with a bool

# Getting Text Properties
### getTextString(tag:String)
Get's the text string

### getTextSize(tag:String)
Get's the text size

### getTextWidth(tag:String)
Get's the text width

### getTextBorder(tag:String)
Get's the text border

### getTextColor(tag:String)
Get's the text color

### getTextFont(tag:String, font:String)
Get's the text font
