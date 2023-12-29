# Creating/Adding/Removing Sprite

> **Note for the `tag` parameter**: _If you use the same tag name again, it will be overridden and the `tag` will only affect this specific object; this rule applies to ALL `tag` parameters._

### makeLuaSprite(tag:String, ?image:String = null, ?x:Float = 0, y:Float = 0)
Initializes the <ins>creation of the Lua sprite object</ins>. This will not add the sprite into the game yet, this can be only achieved by the `addLuaSprite()` function.

- `tag` - The tag name of the sprite to be referenced later.
- `image` - An optional parameter, The image to be displayed. The sprite image must be relative to `mods/images`, `assets/images`, or `assets/shared/images` folders.
- `x` - An optional parameter, The x position value of the sprite object to be set.
- `y` - An optional parameter, The y position value of the sprite object to be set.

### makeAnimatedLuaSprite(tag:String, ?image:String = null, ?x:Float = 0, ?y:Float = 0, ?spriteType:String = "sparrow")
Initializes the <ins>creation of the animated Lua sprite object</ins>. This will not add the sprite into the game yet, this can be only achieved by the `addLuaSprite()` function.

- `tag` - The tag name of the animated sprite to be referenced later.
- `image` - An optional parameter, The image to be displayed. The sprite image must be relative to `mods/images`, `assets/images`, or `assets/shared/images` folders.
- `x` - An optional parameter, The x position value of the sprite object to be set.
- `y` - An optional parameter, The y position value of the sprite object to be set.
- `spriteType` - An optional parameter, The specified sprite type of the Lua sprite could be either a sprite-sheet for `sparrow` or texture-atlas for `tex`; Default value: `sparrow`.

### addLuaSprite(tag:String, front:Bool = false)
<ins>Adds the Lua sprite object</ins> into the game. This function will <ins>overlap other sprite objects</ins> if placed below eachother.

- `tag` - The tag name of the sprite to be added into the game.
- `front` - Whether if the sprite object gets added on top of the characters; For camHUD objects, setting it to `true` would place it above the HUD elements; Default value: `false`.

### removeLuaSprite(tag:String, destroy:Bool = true)
<ins>Removes the Lua sprite object</ins> out of the game. Recommended to use this if the <ins>sprite object isn't used anymore</ins>, for performance purposes duh.

- `tag` - The tag name of the animated sprite to be removed into the game.
- `destroy` - If set to `true` it will be permanently removed from the game. Making it impossible to re-add it without remaking the sprite; Default value: `true`.

***

# Creating/Adding/Removing Text
### makeLuaText(tag:String, text:String, width:Int, x:Float, y:Float)
Initializes the <ins>creation of the text object</ins>. This will not add the text into the game yet, this can be only achieved by the `addLuaText()` function.

- `tag` - The tag name of the text to be referenced later.
- `text` - The text content to be displayed inside the game.
- `width` - The text-box with to be set in; setting it to `0` will automatically determins the width for you.
- `x` - The x position value of the text object to be set.
- `y` - The y position value of the text object to be set.

### addLuaText(tag:String)
<ins>Adds the text object</ins> into the game. This function will <ins>overlap other text objects</ins> if placed below eachother.

- `tag` - The tag name of the text to be added into the game.

### removeLuaText(tag:String, destroy:Bool = true)
<ins>Removes the text object</ins> out of the game. Recommended to use this if the <ins>text object isn't used anymore</ins>, for performance purposes duh.

- `tag` - The tag name of the text to be removed into the game.
- `destroy` - If set to `true` it will be permanently removed from the game. Making it impossible to re-add it without remaking the text; Default value: `true`.

***

# Text Property Setters
### setTextString(tag:String, text:String)
Sets the text object's <ins>current text content</ins> with a new one.

- `tag` - The tag name of the text to be used.
- `text` - The new text content to be set in.

### setTextSize(tag:String, size:Int)
Sets the text object's <ins>current text size</ins> with a new one.

- `tag` - The tag name of the text to be used.
- `size` - The new text size to be set in.

### setTextAutosize(tag:String, value:Bool)
Sets the text object's autoSize value where it will determine if the <ins>width and height should be determined automatically</ins>.

- `tag` - The tag name of the text to be used.
- `value` - Whether the width and height should be determined automatically.

### setTextWidth(tag:String, width:Float)
Sets the text object's <ins>current text-box width</ins> with a new one.

- `tag` - The tag name of the text to be used.
- `width` - The new text-box width to be set in.

### setTextHeight(tag:String, height:Float)
Sets the text object's <ins>current text-box height</ins> with a new one.

- `tag` - The tag name of the text to be used.
- `height` - The new text-box height to be set in.

### setTextBorder(tag:String, size:Float, color:String, ?style:String = 'outline')
Sets the text object's <ins>current text border size, color and style</ins> with a new one.

- `tag` - The tag name of the text to be used.
- `size` - The new text border size to be set in.
- `color` - The new text border color to be set in.
- `style` - An optional parameter, The new text style to be set in; Default value: `outline`.

### setTextColor(tag:String, color:String)
Sets the text object's <ins>current text color</ins> with a new one.

- `tag` - The tag name of the text to be used.
- `color` - The new text color to be set in.

### setTextAlignment(tag:String, alignment:String = 'left')
Sets the text object's <ins>current text alignment</ins> with a new one.

- `tag` - The tag name of the text to be used.
- `alignment` - The new text alignment to be set in; Could be either `left`, `right`, `center`; Default value: `left`.

### setTextFont(tag:String, newFont:String)
Sets the text object's <ins>current text font</ins> with a new one.

- `tag` - The tag name of the text to be used.
- `newFont` - The new text font to be set in. The text font must be relative to `mods/fonts` folder.

### setTextItalic(tag:String, italic:Bool)
Sets the text object into an <ins>italic type</ins>.

- `tag` - The tag name of the text to be used.
- `italic` - Whether the text will be italicized or not.

***

# Text Property Getters
### getTextString(tag:String)
Gets the current text content of the text.

- `tag` - The tag name of the text object's current text content.

### getTextSize(tag:String)
Gets the current text size of the text.

- `tag` - The tag name of the text object's current text size.

### getTextWidth(tag:String)
Gets the current text-box width of the text.

- `tag` - The tag name of the text object's current text-box size.

### getTextFont(tag:String, font:String)
Gets the current text font of the text.

- `tag` - The tag name of the text object's current text font.