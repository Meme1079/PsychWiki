# About
The `0.7.0` update of Psych Engine changed a lot of things about how the game works now. And so, it just so happened to break a lot of things in mods that depended on class and variable naming.

***

# Changes
### Property Classes Setter/Getters
- The `classVar` argument should have <ins>the package folder</ins> followed by the class name; Example: `backend.ClientPrefs`; `substates.GameOverSubstate`; `states.PlayState`.
- If you are getting/setting from the ClientPrefs class, you must have `data.` before the variable name; Example:
`data.variableNameHere`.

Example:
- Setters:
`setPropertyFromClass('backend.ClientPrefs', 'data.lowQuality', false)` `setPropertyFromClass('substates.GameOverSubstate', 'loopSoundName', 'your_song_name')`
`setPropertyFromClass('states.PlayState', 'chartingMode', true)`
- Getters: `getPropertyFromClass('backend.ClientPrefs', 'data.lowQuality')`
`getPropertyFromClass('substates.GameOverSubstate', 'loopSoundName')`
`getPropertyFromClass('states.PlayState', 'chartingMode')`

### camFollowPos
This is removed in this update, instead use `camGame.scroll`; Example: `getProperty('camGame.scroll.x')`.

### Note Colors
In `0.7`, the note color system has been changed from a HUE/Brt/Sat system to an RGB system; But because of this, the spritesheet of the notes would now have to be colored in a specific way to correctly apply the RGB shader on it.

To disable for the notes:
```lua
function onCreatePost()
    for i = 0, getProperty('unspawnNotes.length')-1 do
        setPropertyFromGroup('unspawnNotes', i, 'rgbShader.enabled', false)
    end
end
```

To disable for the strums:
```lua
function onCreatePost()
    for i = 0, 7 do
        setPropertyFromGroup('strumLineNotes', i, 'useRGBShader', false)
    end
end
```

To disable for the note splashes:
```lua
function onCreatePost()
    for i = 0, getProperty('unspawnNotes.length')-1 do
        setPropertyFromGroup('unspawnNotes', i, 'noteSplashData.useRGBShader', false)
    end
end
```

***

# Version
If you want backwards compatibility for your scripts/mods of yours use the `version` variable.

Example:
```lua
function onCreatePost()
    if version < '0.7.0' then
	debugPrint(getPropertyFromClass('ClientPrefs', 'lowQuality'))
    else
	debugPrint(getPropertyFromClass('backend.ClientPrefs', 'data.lowQuality'))
    end
end
```