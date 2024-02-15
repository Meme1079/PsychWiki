# About
The `0.7.0` update of Psych Engine changed a lot of things about how the game works now. And so, it just so happened to break a lot of things in mods that depended on class and variable naming alongside other stuff.

***

# Changes
### Property Classes Setter/Getters
- The `classVar` argument should have <ins>the package folder</ins> followed by the class name; Example: `backend.ClientPrefs`, `substates.GameOverSubstate`, `states.PlayState`.
- If you are getting/setting a player<ins>setting from the `ClientPrefs` class</ins>, you must have `data.` before the variable name; Example:
`data.variableNameHere`; Otherwise you don't need `data.` for <ins>other static vars and functions</ins>.

Examples:
- Setters:
    - `setPropertyFromClass('backend.ClientPrefs', 'data.lowQuality', false)` 
    - `setPropertyFromClass('substates.GameOverSubstate', 'loopSoundName', 'your_song_name')`
    - `setPropertyFromClass('states.PlayState', 'chartingMode', true)`
- Getters: 
    - `getPropertyFromClass('backend.ClientPrefs', 'data.lowQuality')`
    - `getPropertyFromClass('substates.GameOverSubstate', 'loopSoundName')`
    - `getPropertyFromClass('states.PlayState', 'chartingMode')`

### RGB Note Colors
The note color system has been changed from a HUE/Brt/Sat system to an RGB system; But because of this, the spritesheet of the notes would now have to be colored in a specific way to correctly apply the RGB shader on it.

Examples on how to disable it:
```lua
function onCreatePost()
    -- For notes, the variable should be "rgbShader.enabled" and it should be set to false as seen below.
    for i = 0, getProperty('unspawnNotes.length')-1 do
        setPropertyFromGroup('unspawnNotes', i, 'rgbShader.enabled', false)
    end

    -- For strums, the variable should be "useRGBShader" and it should be set to false as seen below.
    -- Trying to use the "rgbShader.enabled" variable would not work because it forces the variable to be enabled everytime the strum's animation plays.
    -- It also forces the shader, which is why the RGB shader would still be in effect even if you changed the shader.
    -- All of these would not happen if "useRGBShader" is disabled.
    for i = 0, 7 do
        setPropertyFromGroup('strumLineNotes', i, 'useRGBShader', false)
    end

    -- For note splashes, the variable should be "noteSplashData.useRGBShader" and it should be set to false as seen below.
    for i = 0, getProperty('unspawnNotes.length')-1 do
        setPropertyFromGroup('unspawnNotes', i, 'noteSplashData.useRGBShader', false)
    end
end
```

Examples on how to change the colors:
```lua
function onCreatePost()
    -- Color variables for the notes:
        -- rgbShader.r -- changes the red value
        -- rgbShader.g -- changes the green value
        -- rgbShader.b -- changes the blue value
        for i = 0, getProperty('unspawnNotes.length')-1 do
            setPropertyFromGroup('unspawnNotes', i, 'rgbShader.r', 0x00FF00) -- red value is now colored green
        end

    -- Strums have the same color variables, but they act a little differently.
        -- Changing their RGB colors will first result in their static animations having the shader, until a note is hit, in which case it will go back to normal.
        -- To avoid this, simply just add:
            callMethod('strumLineNotes.members[index].playAnim', {'static'})
        -- inside the loop or whatever you're doing.
        -- Obviously, you can change the index to your loop variable or to an actual number.

    -- Color variables for the note splashes:
        -- noteSplashData.rgbShader.r -- changes rhe red value
        -- noteSplashData.rgbShader.g -- changes the green value
        -- noteSplashData.rgbShader.b -- changes the blue value
        for i = 0, getProperty('unspawnNotes.length')-1 do
            setPropertyFromGroup('unspawnNotes', i, 'noteSplashData.rgbShader.r', 0x00FF00) -- red value is now colored green
        end
    -- alright im done yapping now
end
```

### camFollowPos
This is removed in this update, instead use `camGame.scroll`; Example: `getProperty('camGame.scroll.x')`.

### healthBarBG/timeBarBG
These variables <ins>no longer exist</ins> due to both of them now using the `Bar` class and not having a need for a seperate sprite variable, but now having their own `bg` variable; The variables are: `healthBar.bg` and `timeBar.bg`.

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
