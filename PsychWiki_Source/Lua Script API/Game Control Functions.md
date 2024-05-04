
# Keys/KeyBoard Press Functions

> **Note**: _All the keyboard and gamepad functions here were recently added to HScript on 0.7.2+_.

<details><summary><b>Key Input Version Compatibility:</b></summary>
<p> 

| Keys     | Supported Version | Supported Function                                  |
|----------|-------------------|-----------------------------------------------------|
| `left`   | Still Used        | `keyJustPressed()`, `keyPressed()`, `keyReleased()` |
| `down`   | Still Used        | `keyJustPressed()`, `keyPressed()`, `keyReleased()` |
| `up`     | Still Used        | `keyJustPressed()`, `keyPressed()`, `keyReleased()` |
| `right`  | Still Used        | `keyJustPressed()`, `keyPressed()`, `keyReleased()` |
| `accept`  | Still Used        | `keyJustPressed()`, `keyPressed()`, `keyReleased()` |
| `back` | Still Used        | `keyJustPressed()`, `keyPressed()`, `keyReleased()` |
| `pause`   | Still Used        | `keyJustPressed()`, `keyPressed()`, `keyReleased()` |
| `reset`  | Still Used        | `keyJustPressed()`, `keyPressed()`, `keyReleased()` |
| `space`  | `0.6.3` and Below | `keyJustPressed()`, `keyPressed()`, `keyReleased()` |

</p>
</details>

### keyJustPressed(name:String)
Gets the control keybinds that were <ins>recently pressed</ins> on the current game.

- `name` - The name of the keybind to be used.

### keyPressed(name:String)
Gets the control keybinds that are <ins>currently pressed</ins> on the current game.

- `name` - The name of the keybind to be used.

### keyReleased(name:String)
Gets the control keybinds that were <ins>recently released</ins> on the current game.

- `name` - The name of the keybind to be used.

### keyboardJustPressed(name:String)
Gets the keyboard keys that were <ins>recently pressed</ins> on the current game.

- `name` - The name of the keys on the keyboard; Must be in all uppercase.

### keyboardPressed(name:String)
Gets the keyboard keys that are <ins>currently pressed</ins> on the current game.

- `name` - The name of the keys on the keyboard; Must be in all uppercase.

### keyboardReleased(name:String)
Gets the keyboard keys that were <ins>recently released</ins> on the current game.

- `name` - The name of the keys on the keyboard; Must be in all uppercase.

***

# Mouse functions
Buttons: `left`, `right`, `middle`

### mouseClicked(name:String)
Gets the mouse buttons that were <ins>recently pressed</ins> on the current frame.

- `name` The name of the mouse buttons; Defualt value: `left`.

### mousePressed(name:String)
Gets the mouse buttons that are <ins>currently pressed</ins> on the current frame.

- `name` The name of the mouse buttons; Defualt value: `left`.

### mouseReleased(name:String)
Gets the mouse buttons that were <ins>recently released</ins> on the current frame.

- `name` The name of the mouse buttons; Defualt value: `left`.

***

### getMouseX(camera:String)
Returns the <ins>current x value</ins> of the mouse on the specific camera.

- `camera` - The current camera state, can be either `camGame`, `camHUD` or `camOther`.

### getMouseY(camera:String)
Returns the <ins>current y value</ins> of the mouse on the specific camera.

- `camera` - The current camera state, can be either `camGame`, `camHUD` or `camOther`.

***

# Gamepad Functions
> **Warning**: _Take this section with a grain of salt because I'm not sure if this is how you use these functions since they are barely used in scripts, so please help me._

[Click here to see the list of ID controls](https://api.haxeflixel.com/flixel/input/gamepad/FlxGamepadInputID.html)

### gamepadJustPressed(id:Int, name:String)
Gets the gamepad buttons that were <ins>recently pressed</ins> on the current frame.

- `id` - The ID controls of the gamepad.
- `name` - The name of the gamepad controls.

### gamepadPressed(id:Int, name:String)
Gets the gamepad buttons that are <ins>currently pressed</ins> on the current frame.

- `id` - The ID controls of the gamepad.
- `name` - The name of the gamepad controls.

### gamepadReleased(id:Int, name:String)
Gets the gamepad buttons that were <ins>recently released</ins> on the current frame.

- `id` - The ID controls of the gamepad.
- `name` - The name of the gamepad controls.

### anyGamepadJustPressed(name:String)
Gets <ins>any gamepad</ins> buttons that were <ins>recently pressed</ins> on the current frame.

- `name` - The name of the controls of any gamepad.

### anyGamepadPressed(name:String)
Gets <ins>any gamepad</ins> buttons that are <ins>currently pressed</ins> on the current frame.

- `name` - The name of the controls of any gamepad.

### anyGamepadReleased(name:String)
Gets <ins>any gamepad</ins> buttons that were <ins>recently released</ins> on the current frame.

- `name` - The name of the controls of any gamepad.

***

### gamepadAnalogX(id:Int, ?leftStick:Bool = true)
The <ins>x axis value</ins> of the gamepad analog.

- `id` - The ID controls of the gamepad.
- `leftStick` - Whether if its the left or right analog stick; Defualt value: `true`.

### gamepadAnalogY(id:Int, ?leftStick:Bool = true)
The <ins>y axis value</ins> of the gamepad analog.

- `id` - The ID controls of the gamepad.
- `leftStick` - Whether if its the left or right analog stick; Defualt value: `true`.
