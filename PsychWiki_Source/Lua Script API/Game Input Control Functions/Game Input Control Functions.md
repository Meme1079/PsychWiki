# Keys & Keyboard Press Functions
### keyJustPressed(keybind:String = ''):Bool
Checks whether the given <ins>[**keybind**](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Game-Input-Control-Functions-%2D-Input-Controls) that was initially pressed</ins>.

- `keybind` - The given keybind to check its input.

### keyPressed(keybind:String = ''):Bool
Checks whether the given <ins>[**keybind**](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Game-Input-Control-Functions-%2D-Input-Controls) that was currently held during a pressed</ins>.

- `keybind` - The given keybind to check its input.

### keyReleased(keybind:String = ''):Bool
Checks whether the given <ins>[**keybind**](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Game-Input-Control-Functions-%2D-Input-Controls) that was recently released after being pressed</ins>.

- `keybind` - The given keybind to check its input.

***

### keyboardJustPressed(key:String):Bool
Checks whether the given <ins>**[keyboard keys](https://api.haxeflixel.com/flixel/input/keyboard/FlxKey.html)** were initially pressed</ins>.

- `key` - The given key from the keyboard to check its input.

### keyboardPressed(key:String):Bool
Checks whether the given <ins>**[keyboard keys](https://api.haxeflixel.com/flixel/input/keyboard/FlxKey.html)** were currently held during a pressed</ins>.

- `key` - The given key from the keyboard to check its input.

### keyboardReleased(key:String):Bool
Checks whether the given <ins>**[keyboard keys](https://api.haxeflixel.com/flixel/input/keyboard/FlxKey.html)** were recently released after being pressed</ins>.

- `key` - The given key from the keyboard to check its input.

***

# Mouse functions
> [!NOTE]
> _The mouse can either use these buttons: `left`, `middle` or `right` within the `button` parameter._

### mouseClicked(?button:String = 'left'):Bool
Checks whether the mouse were <ins>initially clicked</ins>.

- `button` - An optional value, the given mouse button to check its input; Default value: `left`.

### mousePressed(?button:String = 'left'):Bool
Checks whether the mouse were <ins>currently pressed during a click</ins>.

- `button` - An optional value, the given mouse button to check its input; Default value: `left`.

### mouseReleased(?button:String = 'left'):Bool
Checks whether the mouse were <ins>recently released after being clicked</ins>. 

- `button` - An optional value, the given mouse button to check its input; Default value: `left`.

***

# Gamepad Functions
## Buttons
> [!NOTE]
> _The parameters for each callback in this section are listed here. Due to stupid, repetitive copy and paste in each callback description. They all work the same as usual in each callback, If you want to know which parameters are included or not, look at each callbacks title, idiot._
- `id` - The specified controller ID number used for differentiate controllers. For example, if $4$ gamepads are connected, their IDs will range from `0` to `3` respectively.
- `gamepadBinds` - The given buttons from the gamepad to check its input.

### gamepadJustPressed(id:Int, gamepadBinds:String):Bool
Checks whether the given <ins>[**gamepad binds**](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Game-Input-Control-Functions-%2D-Input-Controls) were initially pressed</ins>.

### gamepadPressed(id:Int, gamepadBinds:String):Bool
Checks whether the given <ins>[**gamepad binds**](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Game-Input-Control-Functions-%2D-Input-Controls) were currently held during a pressed</ins>.

### gamepadReleased(id:Int, gamepadBinds:String):Bool
Checks whether the given <ins>[**gamepad binds**](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Game-Input-Control-Functions-%2D-Input-Controls) were recently released after being pressed</ins>.

***

### anyGamepadJustPressed(button:String):Bool
Checks whether the given <ins>**[gamepad buttons](https://api.haxeflixel.com/flixel/input/gamepad/FlxGamepadInputID.html)** were initially pressed</ins>.

- `button` - The given button from the gamepad to check its input.

### anyGamepadPressed(button:String):Bool
Checks whether the given <ins>**[gamepad buttons](https://api.haxeflixel.com/flixel/input/gamepad/FlxGamepadInputID.html)** were currently held during a pressed</ins>.

- `button` - The given button from the gamepad to check its input.

### anyGamepadReleased(button:String):Bool
Checks whether the given <ins>**[gamepad buttons](https://api.haxeflixel.com/flixel/input/gamepad/FlxGamepadInputID.html)** were recently released after being pressed</ins>.

- `button` - The given button from the gamepad to check its input.

## Analog
### gamepadAnalogX(id:Int, ?leftStick:Bool = true):Float
Gets the analog stick's <ins>current x-axis value</ins>.

- `id` - The specified controller ID number used for differentiate controllers. For example, if $4$ gamepads are connected, their IDs will range from `0` to `3` respectively.
- `leftStick` - An optional parameter, whether the it will be the left or right analog stick; Default value: `true`.

### gamepadAnalogY(id:Int, ?leftStick:Bool = true):Float
Gets the analog stick's <ins>current y-axis value</ins>.

- `id` - The specified controller ID number used for differentiate controllers. For example, if $4$ gamepads are connected, their IDs will range from `0` to `3` respectively.
- `leftStick` - An optional parameter, whether the it will be the left or right analog stick; Default value: `true`.

***

# See Also
- [Input Controls](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Game-Input-Control-Functions-%2D-Input-Controls)