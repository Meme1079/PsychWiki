> [!NOTE]
> _For every `tag` parameters in each function on this page. If you use the same tag name is again, the previous object with the same tag AND the same object type (e.g. sprites, texts, timers, etc) will be <ins>deleted</ins>; This rule applies to ALL `tag` parameters._

# Creating/Adding/Removing Sprite
### makeLuaSprite(tag:String, ?image:String = null, ?x:Float = 0, ?y:Float = 0)
Initializes the <ins>creation of a Lua sprite object</ins>. It will not add the sprite object immediately into the game yet. This can be only done by the `addLuaSprite()` function.

- `tag` - The tag for the sprite to inherit.
- `image` - An optional parameter, The image to be displayed on the sprite. The sprite image must be relative to these folders: `mods/images`, `assets/shared/images`, or `assets/images`
- `x` - An optional parameter, The x position value of the sprite object to be set in.
- `y` - An optional parameter, The y position value of the sprite object to be set in.

### makeAnimatedLuaSprite(tag:String, ?image:String = null, ?x:Float = 0, ?y:Float = 0, ?spriteType:String = "sparrow")
Initializes the <ins>creation of an animated Lua sprite object</ins>. It will not add the sprite object immediately into the game yet. This can be only done by the `addLuaSprite()` function.

- `tag` - The tag for the sprite to inherit.
- `image` - An optional parameter, The image to be displayed on the sprite. The sprite image must be relative to these folders: `mods/images`, `assets/shared/images`, or `assets/images`
- `x` - An optional parameter, The x position value of the sprite object to be set in.
- `y` - An optional parameter, The y position value of the sprite object to be set in.
- `spriteType` - An optional parameter, The sprite's atlas format to use when playing animations. Atlas formats are a bunch of data for each of the sprites corresponding animation to play. The most common one is `sparrow` for `xml` files; Default value: `sparrow`.
     - `sparrow` - A group of animation images into one large sprite-sheet, with a provided `xml` file for each animation frames.
     - `packer` - A single animation images into a single sheet, with a provided `txt` file for each animation frames; <br/>Alternative values: `packeratlas`, or `pac`.
     - `aseprite` - A group of pixel-art images into one large sprite-sheet, with a provided `json` file for each animation frames; Alternative values: `jsoni8`.

### addLuaSprite(tag:String, front:Bool = false)
<ins>Adds the Lua sprite object</ins> into the game. Each call to this function will <ins>overlap the previous one</ins>, causing the last sprite, usually the bottom one, to be placed in front of every sprite in the game.

- `tag` - The tag of the object sprite to add.
- `front` - An optional parameter, If set to `true`, it will always be in front of every sprite in the game, regardless of any overlaps; Default value: `false`.

### removeLuaSprite(tag:String, destroy:Bool = true)
<ins>Removes the Lua sprite object</ins> out of the game. Recommended to use this if the <ins>sprite object isn't used anymore</ins>, for performance purposes duh.

- `tag` - The tag of the object sprite to remove.
- `destroy` - If set to `true`, will permanently remove the sprite from the game. Making it impossible to re-add it without remaking the sprite; Default value: `true`.

***

# Creating/Adding/Removing Text
### makeLuaText(tag:String, text:String, width:Int, x:Float, y:Float)
Initializes the <ins>creation of a Lua text object</ins>. It will not add the text object immediately into the game yet. This can be only done by the `addLuaText()` function.

- `tag` - The tag name of the text to be referenced later.
- `text` - The text content for the text to display inside the game.
- `width` - The text-box with to be set in; setting it to `0` will automatically determine the width for you.
- `x` - The x position value of the text object to be set.
- `y` - The y position value of the text object to be set.

### addLuaText(tag:String)
<ins>Adds the Lua text object</ins> into the game. Each call to this function will <ins>overlap the previous one</ins>, causing the last text object, usually the bottom one, to be placed in front of every text object in the game.

- `tag` - The tag of the text object to add.

### removeLuaText(tag:String, destroy:Bool = true)
<ins>Removes the text object</ins> out of the game. Recommended to use this if the <ins>text object isn't used anymore</ins>, for performance purposes duh.

- `tag` - The tag of the object text to remove.
- `destroy` - If set to `true`, will permanently remove the text from the game. Making it impossible to re-add it without remaking the text; Default value: `true`.

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

### setTextAutoSize(tag:String, value:Bool)
Sets the text object's `autoSize` value where it will determine if the <ins>width and height should be determined automatically</ins>.

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
- `style` - An optional parameter, The new text border style to be set in; Default value: `outline`.

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