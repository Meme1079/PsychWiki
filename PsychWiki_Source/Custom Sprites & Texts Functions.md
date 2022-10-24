# Creating/Adding/Removing Sprite
### makeLuaSprite(tag:String, image:String, x:Float, y:Float)
Creates a lua sprite object. **(Must Be a .PNG Format)**

And you want a color screen put <ins>`nil` on the `image` parameter</ins> and add [`makeGraphic()`](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Object-Functions#makegraphictagstring-widthint-heightint-colorstring). If another lua sprite that exists is already using the `tag`, <ins>it will be removed</ins>.

- `tag` - The sprite tag or object variable name.
- `image` - The image path for the sprite object. _(Relative to `mods/images`, `assets/images`, or `assets/shared/images`)_
- `x` - The x value of the sprite object.
- `y` - The y value of the sprite object.

### makeAnimatedLuaSprite(tag:String, image:String, x:Float, y:Float)
Creates a lua sprite that <ins>supports animations</ins>, and must have a `xml` file with it.

- `tag` - The sprite tag or object variable name.
- `image` - The image path for the sprite object. _(Relative to `mods/images`, `assets/images`, or `assets/shared/images`)_
- `x` - The x value of the sprite object.
- `y` - The y value of the sprite object.

### addLuaSprite(tag:String, front:Bool)
Adds a sprite object to the game.

- `tag` - The sprite tag or object variable name.
- `front` - Whether or not the sprite object gets <ins>added on top of the characters</ins>.

### removeLuaSprite(tag:String, destroy:Bool)
Removes a sprite object from the game.

- `tag` - The sprite tag or object variable name.
- `destroy` - Whether or not the sprite object should be fully removed, <ins>disallowing further use</ins>.

***

# Creating/Adding/Removing Text
### makeLuaText(tag:String, text:String, width:Int, x:Float, y:Float)
Creates a text object with position `x`, `y`, and `width`. **(Must Be a .TTF Format)**

- `tag` - The text tag or object variable name.
- `text` - The text string will have.
- `width` - The width of the text; setting it to `0` will automatically determine the width for you.
- `x` - The x value of the object.
- `y` - The y value of the object.

### addLuaText(tag:String)
Adds a text object to the game.

- `tag` - The text tag or object variable name.

### removeLuaText(tag:String, destroy:Bool)
Removes a text object off the game.

- `tag` - The text tag or object variable name.
- `destroy` - Whether or not the object will be fully destroyed, <ins>making it unable to be re-added</ins>.

***

# Setting Text Properties
### setTextString(tag:String, text:String)
Sets the <ins>text string</ins> with a new string value.

- `tag` - The text tag or object variable name.
- `text` - The new text string value of the text.

### setTextSize(tag:String, size:Int)
Sets the <ins>text size</ins> with a new size value.

- `size` - The new text size value of the text.

### setTextWidth(tag:String, width:Float)
Sets the <ins>text width</ins> with a new width value.

- `width` - The new text width value of the text.

### setTextBorder(tag:String, size:Int, color:String)
Sets the <ins>text border</ins> with a new border value.

- `size` - The new text size value of the border.
- `color` - The text color value of the border. **(Must be a Hexadecimal Color Code)**

### setTextColor(tag:String, color:String)
Sets the <ins>text color</ins> with a new color value.

- `color` - The new text color value of the text. **(Must be a Hexadecimal Color Code)**

### setTextAlignment(tag:String, alignment:String = 'left')
Sets the <ins>text alignment</ins> with a new alignment value.

- `alignment` - The new text alignment value of the text's, it can be `left`, `center`, `right`. 

### setTextFont(tag:String, font:String)
Sets the <ins>text font</ins> with a new font value.

- `font` - The new text font value.

### setTextItalic(tag:String, italic:Bool)
Sets the <ins>text to _italic_</ins>.

- `italic` - Change the text to _italic_ with a **Boolean**.

# Getting Text Properties
### getTextString(tag:String)
Gets the current <ins>text string</ins>.

### getTextSize(tag:String)
Gets the current <ins>text size</ins>.

### getTextWidth(tag:String)
Gets the current <ins>text width</ins>.

### getTextBorder(tag:String)
Gets the current <ins>text border</ins>.

### getTextColor(tag:String)
Gets the current <ins>text color</ins>.

### getTextFont(tag:String, font:String)
Gets the current <ins>text font</ins>.