# Creating/Adding/Removing Sprite
### makeLuaSprite(tag:String, image:String, x:Float, y:Float)
Creates a sprite object with no animation. **(Must Be a .PNG Format)**

And you want a color screen put `nil` on `image` parameter and add [`makeGraphic()`](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Object-Functions#makegraphictagstring-widthint-heightint-colorstring) 

If another Lua sprite that exist's is already using the `tag`, it will be removed.

- `tag` - The sprite tag or object variable name.
- `image` - The image path for the sprite object. _(Relative to `mods/images`, `assets/images`, or `assets/shared/images`)_
- `x` - The x value of the sprite object.
- `y` - The y value of the sprite object.

### makeAnimatedLuaSprite(tag:String, image:String, x:Float, y:Float)
Creates a Lua Sprite that supports animations, and must have a `xml` file with it.

- `tag` - The sprite tag or object variable name.
- `image` - The image path for the sprite object. _(Relative to `mods/images`, `assets/images`, or `assets/shared/images`)_
- `x` - The x value of the sprite object.
- `y` - The y value of the sprite object.

### addLuaSprite(tag:String, front:Bool)
Add's a sprite object to the game.

- `tag` - The sprite tag or object variable name.
- `front` - Whether or not the sprite object get's added on top of the character's.

### removeLuaSprite(tag:String, destroy:Bool)
Remove's a sprite object from the game.

- `tag` - The sprite tag or object variable name.
- `destroy` - Whether or not the sprite object should be fully removed, disallowing further use.

***

# Creating/Adding/Removing Text
### makeLuaText(tag:String, text:String, width:Int, x:Float, y:Float)
Creates a text object with position `x`, `y`, and `width`. **(Must Be a .TTF Format)**

- `tag` - The Text tag or Object variable name.
- `text` - The Text object will have.
- `width` - The Width of the text; setting it to `0` will automatically determine the width for you.
- `x` - The x value of the object.
- `y` - The y value of the object.

### addLuaText(tag:String)
Add's a text object to the game.

- `tag` - The Text tag or Object variable name.

### removeLuaText(tag:String, destroy:Bool)
Remove's a text object off the game.

- `tag` - The Text tag or Object variable name.
- `destroy` - Whether or not the object will be fully destroyed, making it unable to be re-added.

***

# Setting Text Properties
### setTextString(tag:String, text:String)
Set's the text string.

- `tag` - The Text tag or Object variable name.
- `text` - The Text object will have.

### setTextSize(tag:String, size:Int)
Set's the text size.

- `size` - The Text size value of the text.

### setTextWidth(tag:String, width:Float)
Set's the text width.

- `width` - The Text width value of the text.

### setTextBorder(tag:String, size:Int, color:String)
Set's the text border.

- `size` - The Text size value of the border.
- `color` - The Text color value of the border. **(Must be a Hexadecimal Color Code)**

### setTextColor(tag:String, color:String)
Set's the text color.

- `color` - The Text color value of the text. **(Must be a Hexadecimal Color Code)**

### setTextAlignment(tag:String, alignment:String = 'left')
Set's the text alignment.

- `alignment` - The Text alignment value of the text's, it can be `left`, `center`, `right`. 

### setTextFont(tag:String, font:String)
Set's the text font you must have font in the `fonts` folder.

- `font` - The Text font value font's.

### setTextItalic(tag:String, italic:Bool)
Set's the text to _italic_.

- `italic` - Change to _italic_ with a **boolean**.

# Getting Text Properties
### getTextString(tag:String)
Get's the Text string.

### getTextSize(tag:String)
Get's the Text size.

### getTextWidth(tag:String)
Get's the Text width.

### getTextBorder(tag:String)
Get's the Text border.

### getTextColor(tag:String)
Get's the Text color.

### getTextFont(tag:String, font:String)
Get's the Text font.