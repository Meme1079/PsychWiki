# About Custom Substates
Substates are a special state that are opened within a `FlxState`, or another `FlxSubstate`. If opened, it stops the parent state from updating. They are commonly used in pause screens, or other pop-up type screens.

In Psych Engine we can create our own custom substate by using one of the custom substates' callback functions. Once you're done creating your custom substate. we can activate or open the custom substates by using the `openCustomSubstate()` function they can be manually paused the game by setting the second argument to `true`. 

While open, in this state, you can't do anything; even tapping the debug buttons won't help you. So you'll need to configure a key pressing detection. Inside that `if` statement should have a `closeCustomSubstate()` function to deactivate or close the current substate manually.

> **Note**: _Custom Substates can only have one substate active at a time, so no multiple activated substates._

## Creating a Custom Substate
In this stupid goddamn tutorial, I will make a simple pause screen to give you a sense on how custom substates are created. I promise it won't be that "complicated" to understand it.

Let's start off with `onCustomSubstateCreate()` works excatly the same as `onCreate()` callback. This is where will set up our own custom substate adding sprite, text, and objects. Also, it's recommended to add an `if` statement for the `name` parameter if you are using multiple substates, it's just so that if you are making sprites or whatever, it will only make those sprites if the substate name is the same as the one you are checking for and it will not overlap between different substates.

Example:
```lua
function onCustomSubstateCreate(name)
     if name == 'My Substate' then
          makeLuaSprite('substate_bg', nil, 0, 0)
          makeGraphic('substate_bg', screenWidth, screenHeight, '000000')
          setObjectCamera('substate_bg', 'camOther')
          setProperty('substate_bg.alpha', 0.6)
          insertToCustomSubstate('substate_bg')

          doTweenAlpha('substate_bg', 'substate_bg', 0.6, 0.4, 'quartInOut')
     end
end
```

Replacing the pause screen is as simple, all you'll have to do is `openCustomSubstate()` function with the chosen name of your substate and make sure `pauseGame` argument is set to `true`. To manually change the game's existing pause menu, all of this should be inside the `onPause()` function.

Example:
```lua
function onPause()
     openCustomSubstate('My Substate', true)
     return Function_Stop;
end
```

Now if you wish to close your custom substate, use the `closeCustomSubstate()` function with a key pressing detection configured in an `if` statement; any key button can be used. Now all of this should be inside the `onCustomSubstateUpdate()` callback function becuase this only check each frame when substate is opened. Cuz `onUpdate()` won't effect properly when the substate is currently opened.

Lastly on `onCustomSubstateDestroy()`, works excatly the same as `onDestroy()` callback. Sprites should already get removed if you added them into the substate correctly when the substate closes, so you don't have to manually remove them; However, `insertToCustomSubstate()` unfortunately does not currently support text objects, so you'll still have to use `addLuaText()` and use `removeLuaText()` on `onCustomSubstateDestroy()`

Example:
```lua
function onCustomSubstateUpdate(name, elapsed)
     if keyboardJustPressed('ENTER') then
          closeCustomSubstate()
     end
end

function onCustomSubstateDestroy(name)
     if name == 'My Substate' then
          debugPrint('Closing')
          -- remove text objects if any exists
     end
end
```

And now you have your very own custom substate yay!!!!!!!! It's not really special it can only pause which is lame but you can just modified the code. Like adding restart, resume, or exit song buttons and even a new design to make a proper pause menu.

***

# Custom Substate Functions
### openCustomSubstate(name:String, pauseGame:Bool = false)
Opens your custom substate.

- `name` - The name of your custom substate to open.
- `pauseGame` - An optional parameter, Whether the game will pause after the custom substate has been opened; Defualt value: `false`.

### insertToCustomSubstate(tag:String, ?pos:Int = -1)
Inserts a Lua object to the custom substate instance with the given position; Does not currently support Lua text objects.

- `tag` - The object tag name to insert a custom substate.
- `pos` - An optional parameter, The specified position in the substate to insert in; If `pos` is -1, it will be added to the substate normally; Default value: `-1`.

### closeCustomSubstate()
Closes the current active custom substate, this will call `onCustomSubstateDestroy()` callback.

***

# Custom Substate Callback Functions
### onCustomSubstateCreate(name)
Works exactly the same as <ins>`onCreate()` callback function</ins> but for custom substates; Will only be triggered once.

- `name` - The name of a custom substate to check.

### onCustomSubstateCreatePost(name)
Works exactly the same as <ins>`onCreatePost()` callback function</ins> but for custom substates; Will only be triggered once.

- `name` - The name of a custom substate to check.

### onCustomSubstateUpdate(name, elapsed)
Works exactly the same as <ins>`onUpdate()` callback function</ins> but for custom substates; Will only be triggered once.

- `name` - The name of a custom substate to check.
- `elapsed` - Every frame display in milliseconds; Shortcut to `getPropertyFromClass('flixel.FlxG', 'elapsed')`.

### onCustomSubstateUpdatePost(name, elapsed)
Works exactly the same as <ins>`onUpdatePost()` callback function</ins> but for custom substate; Will only be triggered once.

- `name` - The name of a custom substate to check.
- `elapsed` - Every frame display in milliseconds; Shortcut to `getPropertyFromClass('flixel.FlxG', 'elapsed')`.

### onCustomSubstateDestroy(name)
Works exactly the same as <ins>`onDestroy()` callback function</ins> but for custom substates; Will only be triggered once.

- `name` - The name of a custom substate to check.
