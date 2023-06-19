# About
The `0.7.0` update of Psych Engine changed a lot of things about how the game works now. And so, it just so happened to break a lot of things in mods that depended on class and variable naming.

***

# Changes
### Property Classes Setter/Getters
- The `classVar` arguments should have `backend.` followed by the class name; Example: `backend.ClientPrefs`.
- The `variable` arguments should have `data.` followed by the variable name; Example: `data.variableNameHere`.

Example:
- Setters: `setPropertyFromClass('backend.GameOverSubstate', 'data.loopSoundName', 'your_song_name')`
- Getters: `getPropertyFromClass('backend.ClientPrefs', 'data.lowQuality')`

### camFollowPos
This is removed in this update, instead use `camGame.scroll`; Example: `getProperty('camGame.scroll.x')`.

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