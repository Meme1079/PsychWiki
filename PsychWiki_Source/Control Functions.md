# Keys/KeyBoard Press Functions
### keyJustPressed(name:String)
Will trigger if the controls were recently pressed on the current game.

Keys: `left`, `down`, `up`, `right`, `accept`, `back`, `pause`, `reset`, `space`

- `name` - The name of the key listed above.

### keyPressed(name:String)
Will trigger if the controls were currently pressed on the current game.

- `name` - The name of the key listed above.

### keyReleased(name:String)
Will trigger if the controls were currently released on the current game.

- `name` - The name of the key listed above.

***

### keyboardJustPressed(name:String)
Will trigger if the keyboard key were currently released on the current game.

- `name` - The name of the key on the keyboard.

Example: `keyboardJustPressed('SHIFT')`

### keyboardPressed(name:String)
Will trigger if the keyboard key were currently pressed on the current game.

- `name` - The name of the key on the keyboard.

### keyboardReleased(name:String)
Will trigger if the keyboard key were released on the current game.

- `name` - The name of the key on the keyboard.

***

# Mouse functions
### mouseClicked(name:String)
Will trigger if the mouse button that was recently pressed on the current frame. If you wan't to defualt to `left` leave it blank.

Buttons: `left`, `right`, `middle`

- `name` - The name of the mouse button listed above.

### mousePressed(name:String)
Will trigger if the mouse button that was currently pressed on the current frame.

- `name` - The name of the mouse button listed above.

### mouseReleased(name:String)
Will trigger if the mouse button that was released on the current frame.

- `name` - The name of the mouse button listed above.

***

### getMouseX(camera:String)
Returns the current x value of the mouse on the specific camera.

- `camera` - Can be either `camGame`, `camHUD` or `camOther`.

### getMouseY(camera:String)
Returns the current y value of the mouse on the specific camera.

- `camera` - Can be either `camGame`, `camHUD` or `camOther`.

***

# Gamepad Functions
### gamepadJustPressed(id:Int, name:String)
Will trigger if the gamepad that was recently pressed on the current frame.

Names: `LT`, `RT`, `LB`, `RB`, `X`, `Y`, `B`, `A`

- `id` - The ID controls of the gamepad.
- `name` - The name of the controls listed above.

### gamepadPressed(id:Int, name:String)
Will trigger if the gamepad that was currently pressed on the current frame.

- `id` - The ID controls of the gamepad.
- `name` - The name of the controls listed above.

### gamepadReleased(id:Int, name:String)
Will trigger if the gamepad that was released on the current frame.

- `id` - The ID controls of the gamepad.
- `name` - The name of the controls listed above.

***

### anyGamepadJustPressed(name:String)
Will trigger if the any gamepad that was currently pressed on the current frame.

- `name` - The name of the controls of any gamepad.

### anyGamepadPressed(name:String)
Will trigger if the any gamepad that was currently pressed on the current frame.

- `name` - The name of the controls of any gamepad.

### anyGamepadReleased(name:String)
Will trigger if the any gamepad that was currently pressed on the current frame.

- `name` - The name of the controls of any gamepad.

***

### gamepadAnalogX(id:Int, ?leftStick:Bool = true)
The x axis value of the gamepad analog.

- `id` - The ID controls of the gamepad.
- `leftStick` - Whether if its the left anolog or right anolog with a **boolean**.

### gamepadAnalogY(id:Int, ?leftStick:Bool = true)
The y axis value of the gamepad analog.

- `id` - The ID controls of the gamepad.
- `leftStick` - Whether if its the left anolog or right anolog with a **boolean**.