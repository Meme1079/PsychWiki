# Creating/Adding/Removing Sprite
> **Note**: _When adding a lua sprite the file format should be `png`. If the file format are not `png` it will not work._

### makeLuaSprite(tag:String, image:String, x:Float, y:Float)
Creates a lua sprite object. If two or more sprite tag has the same name on the `tag` parameter then the lua sprite object will be removed in the game.  

If you want to have an object with no texture put a <ins>**Nil** variable on the `image` parameter</ins> and add [`makeGraphic()`](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Object-Functions#makegraphictagstring-widthint-heightint-colorstring) function. 

- `tag` - The sprite tag or object variable name.
- `image` - The image path for the sprite object. _(Relative to `mods/images`, `assets/images`, or `assets/shared/images`)_
- `x` - The x value of the sprite object to be set.
- `y` - The y value of the sprite object to be set.

### makeAnimatedLuaSprite(tag:String, image:String, x:Float, y:Float)
Creates a lua sprite that <ins>supports animations</ins>. The lua sprite should always have an `xml` file with it, if not then it will rendered as a sprite sheet.

- `tag` - The sprite tag or object variable name.
- `image` - The image path for the sprite object. _(Relative to `mods/images`, `assets/images`, or `assets/shared/images`)_
- `x` - The x value of the sprite object to be set.
- `y` - The y value of the sprite object to be set.

### addLuaSprite(tag:String, front:Bool)
<ins>Adds a sprite object</ins> to the game.

- `tag` - The sprite tag or object variable name.
- `front` - Whether or not the sprite object gets <ins>added on top of the characters</ins>.

### removeLuaSprite(tag:String, destroy:Bool)
<ins>Removes a sprite object</ins> from the game. Use this if the lua sprite isn't used anymore for performance.

- `tag` - The sprite tag or object variable name.
- `destroy` - Whether or not the sprite object should be fully removed, making it unable to be re-added.

***

# Creating/Adding/Removing Text
### makeLuaText(tag:String, text:String, width:Int, x:Float, y:Float)
Creates a text object with the position of `x`, `y`, and `width` parameter.

- `tag` - The text tag or object variable name.
- `text` - The text string will have.
- `width` - The width of the text; setting it to `0` will automatically determine the width for you.
- `x` - The x value of the text object to be set.
- `y` - The y value of the text object to be set.

### addLuaText(tag:String)
<ins>Adds a text object</ins> to the game.

- `tag` - The text tag or object variable name.

### removeLuaText(tag:String, destroy:Bool)
<ins>Removes a text object</ins> from the game. Use this if the text object isn't used anymore for performance.

- `tag` - The text tag or object variable name.
- `destroy` - Whether or not the text object will be fully destroyed, making it unable to be re-added.

***

# Setting Text Properties
### setTextString(tag:String, text:String)
Sets the <ins>text string</ins> with a new string value.

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
> **Note**: _When adding a text sprite the file format should be `ttf`. If the file format are not `ttf` it will not work._

Sets the <ins>text font</ins> with a new font value.

- `font` - The new text font value. _(Relative to `mods/fonts`)_

### setTextItalic(tag:String, italic:Bool)
Sets the <ins>text into _italic_ type</ins>.

- `italic` - Whether or not will the text will be _italic_. 

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