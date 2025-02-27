# About
States are divided segments of code that can be utilized in several section of the game. It can only be loaded and active at a time, meaning meaning only one $1$ state must be loaded and active. These are typically used for menus like a title menu, different "screens" of the game, and can be used for much more.

Substate is a special state that can be activated within a state or another substate. When opened, the substate will be shown top-most of all other states or other substates, with it being only active. The parent state will stop updating unless the instance variable `persistentUpdate` is set to `true`. There're commonly used for custom pause screens or other pop-up type screens.

In Psych Engine you can create custom substates by utilizing its own event callbacks, like initializing, updating and destroying. And for designated functions for activating certain substates and deactivating its active substate.

## Constructing
In this awesome epic tutorial, I'll be basically making a simple custom pause menu. To give more sense on how substates are created with the added bonus of. The amount of copious amount of yapping of each explanation on how each code works.

### Creating
Substates are always created within the `onCustomSubstateCreate()` event callback, this is where you'll initiate the sprite object, text object, and other stuff. Some stuff like certain function and variables haven't been updated yet, during the creation of the substate. So you'll have to use the `onCustomSubstateCreatePost()` event callback for this work.

The `name` parameter from both the `onCustomSubstateCreate()` and `onCustomSubstateCreatePost()` event callbacks is the name given to your custom substate. The substates' code must be enclosed in a `if` statement with the condition, the `name` parameter equaling to the substates' name. Its name must be unique to each substates to prevent code "mixing" and breaking the substate entirely.

In this example, we created a substate named "Awesome Substate". The code contains a simple low opacity background for the pause menu. With an added bonus fade-in animation for the low opacity background. Notice the `insertToCustomSubstate()` function being used instead of being the `addLuaSprite()`. That's becuase the sprite object is added on the substate not on the game.

```lua
function onCustomSubstateCreate(name)
     if name == 'Awesome Substate' then
          makeLuaSprite('awesomeSubstateBG', nil, 0, 0)
          makeGraphic('awesomeSubstateBG', screenWidth, screenHeight, '000000')
          setProperty('awesomeSubstateBG.alpha', 0)
          insertToCustomSubstate('awesomeSubstateBG')

          doTweenAlpha('awesomeFadeIn', 'awesomeSubstateBG', 0.6, 0.4, 'quartInOut')
     end
end
```

### Opening & Accessing
Substates are opened (activated) by using the `openCustomSubstate()` function it uses two arguments. First argument is for the given substate to be loaded and activated. The second argument is for the disabling the parent state from updating. Set this argument to `true` for the instance variable `persistentUpdate` to cease from updating.

In this example, we disabled the ability to the pause the game (accessing the pause substate), so we can override it with our own substate. While the parent state has been deactivated from updating in game, to actually pause the game.
```lua
function onPause()
     openCustomSubstate('Awesome Substate', true)
     return Function_Stop;
end
```

### Closing
Substates are closed (deactivated) by using the `closeCustomSubstate()` function, this will deactivate the currently active substate. Once closed the parent state is reactivated into updating the game. Any sprite and text objects present in the substate are removed, not deleted and are re-added back if the substate was open again.

In this example, we closed the substate by pressing the enter key <kbd>↵</kbd>. Within the `onCustomSubstateUpdate()` event callback, which exactly works the same as `onUpdate()` event callback.

> [!CAUTION]
> _Closing a substate is mandatory (important) when creating a substate. Because once you open a substate, it will instantly softlock the game. Forcing you to quit the game and opening it again._

```lua
function onCustomSubstateUpdate(name, elapsed)
     if keyboardJustPressed('ENTER') then
          closeCustomSubstate()
     end
end
```

### Conclusion
And now you have your very own custom substate yay!!!!!!!! It's not really special it can only pause which is lame but you can just modify the code. Like adding restart, resume, or exit song buttons and even a new design to make a proper pause menu.

***

# Custom Substate Functions
### openCustomSubstate(name:String, ?pauseGame:Bool = false):Void
Opens a custom substate.

- `name` - The given name to open the custom substate.
- `pauseGame` - An optional parameter, weather the custom substate will pause the parent state; Default value: `false`.

### insertToCustomSubstate(tag:String, ?pos:Int = -1):Void
Inserts an object (sprite or text) to the custom substate with the given position.

- `tag` - The specified object to be inserted to the custom substate.
- `pos` - An optional parameter, The position order of the object to render. Leave it blank if you want to insert in each object normally; Default value: `-1`.

### closeCustomSubstate():Void
Close the currently activate substate.

***

# Custom Substate Event Callbacks
### onCustomSubstateCreate(name:String)
<ins>Triggered when the substate has initiated/started</ins>, this is only triggered once.

- `name` - The name of the substate to inherit.

### onCustomSubstateCreatePost(name:String)
Triggered <ins>post initiation/start of the substate</ins>, this is only triggered once.

- `name` - The name of the substate to inherit post start.

### onCustomSubstateUpdate(name:String, elapsed:Float)
Triggered <ins>every current frame</ins> of the substate.

- `name` - The name of the substate to update.
- `elapsed` - Every current frame display in milliseconds; Shortcut to `getPropertyFromClass('flixel.FlxG', 'elapsed')`.

### onCustomSubstateUpdatePost(name:String, elapsed:Float)
Triggered <ins>after every current frame</ins> of the game.

- `name` - The name of the substate to post update.
- `elapsed` - Every current frame display in milliseconds; Shortcut to `getPropertyFromClass('flixel.FlxG', 'elapsed')`.

### onCustomSubstateDestroy(name:String)
Triggered when the <ins>substate has been destroyed</ins>.

- `name` - The name of the substate to be destroyed.

***

# Custom Substate HScript Variables
| Variables 	| Description 	|
|---	|---	|
| `customSubstate` 	| The current opened custom substate instance. If none are open, returns: `null` 	|
| `customSubstateName` 	| The name of the current opened custom substate. If none are open, returns: `unnamed` 	|