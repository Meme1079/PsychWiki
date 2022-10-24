# Keys/KeyBoard Press Functions
### keyJustPressed(name:String)
Gets the control keys that were <ins>recently pressed</ins> on the current game.

Keys: `left`, `down`, `up`, `right`, `accept`, `back`, `pause`, `reset`, `space`

- `name` - The name of key listed above.

### keyPressed(name:String)
Gets the control keys were <ins>currently pressed</ins> on the current game.

- `name` - The name of key listed above.

### keyReleased(name:String)
Gets the control keys were <ins>recently released</ins> on the current game.

- `name` - The name of key listed above.

***

### keyboardJustPressed(name:String)
Gets the keyboard keys that were <ins>recently pressed</ins> on the current game.

- `name` - The name of the keys on the keyboard.

Example: `keyboardJustPressed('SHIFT')`

### keyboardPressed(name:String)
Gets the keyboard keys that were <ins>currently pressed</ins> on the current game.

- `name` - The name of the keys on the keyboard.

### keyboardReleased(name:String)
Gets the keyboard keys that were <ins>recently released</ins> on the current game.

- `name` - The name of the keys on the keyboard.

***

# Mouse functions
### mouseClicked(name:String)
Gets the mouse buttons that were <ins>recently pressed</ins> on the current frame. If the `name` parameter was left blank this will defualt to the `left` button.

Buttons: `left`, `right`, `middle`

- `name` - The name of the mouse button listed above.

### mousePressed(name:String)
Gets the mouse buttons that were <ins>currently pressed</ins> on the current frame

- `name` - The name of the mouse button listed above.

### mouseReleased(name:String)
Gets the mouse buttons that were <ins>recently released</ins> on the current frame

- `name` - The name of the mouse button listed above.

***

### getMouseX(camera:String)
Returns the <ins>current x value</ins> of the mouse on the specific camera.

- `camera` - The current camera state, can be either `camGame`, `camHUD` or `camOther`.

### getMouseY(camera:String)
Returns the <ins>current y value</ins> of the mouse on the specific camera.

- `camera` - The current camera state, can be either `camGame`, `camHUD` or `camOther`.

***

# Gamepad Functions
Note: Take this section of this page with a grain of salt because I'm not sure if this is how you use this function. And its barley use in scripts, so please help me.

[Click here to see the list of ID controls](https://api.haxeflixel.com/flixel/input/gamepad/FlxGamepadInputID.html)

### gamepadJustPressed(id:Int, name:String)
Gets the gamepad buttons that were <ins>recently pressed</ins> on the current frame.

- `id` - The ID controls of the gamepad.
- `name` - The name of the gamepad controls.

### gamepadPressed(id:Int, name:String)
Gets the gamepad buttons that were <ins>currently pressed</ins> on the current frame.

- `id` - The ID controls of the gamepad.
- `name` - The name of the gamepad controls.

### gamepadReleased(id:Int, name:String)
Gets the gamepad buttons that were <ins>recently released</ins> on the current frame.

- `id` - The ID controls of the gamepad.
- `name` - The name of the gamepad controls.

***

### anyGamepadJustPressed(name:String)
Gets <ins>any gamepad</ins> buttons that were <ins>recently pressed</ins> on the current frame.

- `name` - The name of the controls of any gamepad.

### anyGamepadPressed(name:String)
Gets <ins>any gamepad</ins> buttons that were <ins>currently pressed</ins> on the current frame.

- `name` - The name of the controls of any gamepad.

### anyGamepadReleased(name:String)
Gets <ins>any gamepad</ins> buttons that were <ins>recently released</ins> on the current frame.

- `name` - The name of the controls of any gamepad.

***

### gamepadAnalogX(id:Int, ?leftStick:Bool = true)
The <ins>x axis value</ins> of the gamepad analog.

- `id` - The ID controls of the gamepad.
- `leftStick` - Whether if its the left anolog or right anolog with a **Boolean**.

### gamepadAnalogY(id:Int, ?leftStick:Bool = true)
The <ins>y axis value</ins> of the gamepad analog.

- `id` - The ID controls of the gamepad.
- `leftStick` - Whether if its the left anolog or right anolog with a **Boolean**.