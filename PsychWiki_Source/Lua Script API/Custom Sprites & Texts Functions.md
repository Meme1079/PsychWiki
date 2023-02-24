# Creating/Adding/Removing Sprite
### makeLuaSprite(tag:String, image:String, x:Float, y:Float)
Initializes the <ins>creation of the Lua sprite object</ins>. If the value has the same tag name on the `tag` parameter, it will be removed from the game; <ins>this rule is applied to all `tag` parameters</ins>.

This function is <ins>require to have `addLuaSprite()` function</ins>. To make the sprite object to be visible; add this below the `makeLuaSprite()` function same works with <ins>`makeAnimatedLuaSprite()` function</ins>.

If you want to have a plain colored texture, <ins>insert a `nil` value inside of the `image` parameter</ins> and add `makeGraphic()` function below the `makeLuaSprite()` function.

> **Note**: _The `image` parameter must be relative to `mods/images`, `assets/images`, or `assets/shared/images` folders. This is applied to all `image` parameters._

- `tag` - The sprite object tag name to be used.
- `image` - The image file for the sprite to use.
- `x` - The x value of the sprite object to be set.
- `y` - The y value of the sprite object to be set.

### makeAnimatedLuaSprite(tag:String, image:String, x:Float, y:Float)
Initializes the creation of the Lua sprite object <ins>with the supported animations</ins>.

- `tag` - The sprite object tag name to be used.
- `image` - The image file for the sprite to use.
- `x` - The x value of the sprite object to be set.
- `y` - The y value of the sprite object to be set.

### addLuaSprite(tag:String, front:Bool)
Adds the Lua sprite object inside the game. This function will <ins>overlap other sprite objects</ins> if place below eachother.

- `tag` - The sprite object tag name to be used.
- `front` - Whether if the sprite object gets added on top of the characters, Defualt is `false`.

### removeLuaSprite(tag:String, destroy:Bool)
Removes the Lua sprite object inside the game. Recommended to use this if the <ins>sprite object isn't used anymore</ins>, for performance purposes.

- `tag` - The sprite object tag name to be used.
- `destroy` - Whether if the sprite object will be removed permanently making it unable to be re-added, Defualt is `false`.

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
Adds the Lua text object inside the game. This function will <ins>overlap other text objects</ins> if place below eachother.

- `tag` - The text object tag name to be used.

### removeLuaText(tag:String, destroy:Bool)
Removes the Lua text object inside the game. Recommended to use this if the <ins>text object isn't used anymore</ins>, for performance purposes.

- `tag` - The text object tag name to be used.
- `destroy` - Whether if the text object will be removed permanently making it unable to be re-added, Defualt is `false`.