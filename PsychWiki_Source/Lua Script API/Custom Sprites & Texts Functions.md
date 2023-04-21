# Creating/Adding/Removing Sprite
### makeLuaSprite(tag:String, image:String, x:Float, y:Float)
Initializes the <ins>creation of the Lua sprite object</ins>. If the value has the same tag name on the `tag` parameter, it will be removed from the game; <ins>this rule is applied to all `tag` parameters</ins>.

If you want a plain colored texture, leave the `image` parameter empty or declare a `nil` value. And add `makeGraphic()` below the `makeLuaSprite()` function.

> **Note**: _The sprite image must be relative to `mods/images`, `assets/images`, or `assets/shared/images` folders. This is applied to all functions with `image` parameters._

- `tag` - The sprite object tag name to be used.
- `image` - The image sprite for the sprite to use.
- `x` - The x value of the sprite object to be set.
- `y` - The y value of the sprite object to be set.

### makeAnimatedLuaSprite(tag:String, image:String, x:Float, y:Float)
Initializes the creation of the Lua sprite object <ins>with supported animations</ins>.

- `tag` - The sprite object tag name to be used.
- `image` - The image sprite for the sprite to use.
- `x` - The x value of the sprite object to be set.
- `y` - The y value of the sprite object to be set.

### addLuaSprite(tag:String, front:Bool)
Adds the Lua sprite object inside the game. This function will <ins>overlap other sprite objects</ins> if place below eachother.

- `tag` - The sprite object tag name to be used.
- `front` - Whether if the sprite object gets added on top of the characters, Defualt is `false`.

### removeLuaSprite(tag:String, destroy:Bool)
Removes the Lua sprite object inside the game. Recommended to use this if the <ins>sprite object isn't used anymore</ins>, for performance purposes.

- `tag` - The sprite object tag name to be used.
- `destroy` - Whether if the sprite object will be removed permanently making it unable to be re-added; Defualt is `false`.

***

# Creating/Adding/Removing Text
### makeLuaText(tag:String, text:String, width:Int, x:Float, y:Float)
Initializes the <ins>creation of the Lua text object</ins>.

- `tag` - The text object tag name to be used.
- `text` - The text content of the text.
- `width` - The box width of the text; setting it to `0` will automatically determine the width for you.
- `x` - The x value of the sprite object to be set.
- `y` - The y value of the sprite object to be set.

### addLuaText(tag:String)
Adds the Lua text object inside the game. This function will <ins>overlap other text objects</ins> if place below each other.

- `tag` - The text object tag name to be used.

### removeLuaText(tag:String, destroy:Bool)
Removes the Lua text object inside the game. Recommended to use this if the <ins>text object isn't used anymore</ins>, for performance purposes.

- `tag` - The text object tag name to be used.
- `destroy` - Whether if the text object will be removed permanently making it unable to be re-added; Default is `false`.

***

# Text Property Setters
### setTextString(tag:String, text:String)
Sets the text object <ins>current text content</ins> with a new text content.

- `tag` - The text object tag name to be used.
- `string` - The new text content of the text.

### setTextSize(tag:String, size:Int)
Sets the text object <ins>current size with</ins> a new value.

- `tag` - The text object tag name to be used.
- `size` - The new text size of the text.

### setTextWidth(tag:String, width:Float)
Sets the text object <ins>current box width</ins> with a new value.

- `tag` - The text object tag name to be used.
- `width` - The new text box width of the text.

### setTextBorder(tag:String, size:Int, color:String)
Sets the text object <ins>current border</ins> with a new value, it can even <ins>change the color</ins> of it.

- `tag` - The text object tag name to be used.
- `size` - The new text border size of the text.
- `color` - The new text border color of the text.

### setTextColor(tag:String, color:String)
Sets the text object <ins>current text color</ins> with a new hex color.

- `tag` - The text object tag name to be used.
- `color` - The new text color of the text.

### setTextAlignment(tag:String, alignment:String = 'left')
Sets the text object <ins>current alignment</ins> with a new value.

- `tag` - The text object tag name to be used.
- `alignment` - The new text alignment of the text; Defualt value: `left`.

### setTextFont(tag:String, font:String)
Sets the text object <ins>current font</ins> with a new font.

> **Note**: _The text font must be relative to `mods/fonts` folder._

- `tag` - The text object tag name to be used.
- `font` - The new text font of the text; The font file format should be `ttf`.

### setTextItalic(tag:String, italic:Bool)
Sets the text object <ins>into italicize</ins>. _(Who the hell even uses this???)_

- `tag` - The text object tag name to be used.
- `italic` - Whether will be italicized or not.

***

# Text Property Getters
### getTextString(tag:String)
Gets the text object <ins>current text content</ins>.

- `tag` - The text object tag name to be used.

### getTextSize(tag:String)
Gets the text object <ins>current size value</ins>.

- `tag` - The text object tag name to be used.

### getTextWidth(tag:String)
Gets the text object <ins>current box width</ins>.

- `tag` - The text object tag name to be used.

### getTextFont(tag:String, font:String)
Gets the text object <ins>current font</ins>.

- `tag` - The text object tag name to be used.