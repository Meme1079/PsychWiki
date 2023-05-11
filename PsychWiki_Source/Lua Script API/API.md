# Running a script
There are `6` types you could run your Lua scripts.


|Types|Description|
|-----|-----------|
| `Stage Script` | Will only run if the song's `json` data has been set to that stage. It must have the same<br> name as your stages `json` file; Must be relative to `mods/stages` or `mods/My Mods/stages`<br> folder. |
| `Song Script` | Will only run if the specific song inside the chart folder, no matter the difficulty, stage or<br> whatever else; Must be relative to `mods/data/songName` or `mods/My Mods/data/songName`<br> folder. |
| `Event Script` | Will only run if the event is present inside the song's chart. It must have a `txt` file with the<br> same name of the script, this file should contain the description of the event; Must be relative<br> to `mods/custom_events` or `mods/My Mods/custom_events` folder. |
| `Note Script` | Will only run if the specified note type is being used inside the song's chart; Must be relative<br> to `mods/custom_notetypes` or `mods/My Mods/custom_notetypes` folder. |
| `Global Script` | Will always run from anywhere from all song's difficulties with no exceptions; Must be relative<br> to `mods/scripts` or `mods/My Mod/scripts` folder. |
| `Character Script` | Will always be run no matter the difficulty of the song, with no exceptions. You can use<br> `dadName`, `boyfriendName` and `gfName` variables to determin the character to be use. |
| `Difficulty Script` | Will only run if the specific difficulty is chosen from the song. You can use `difficulty`<br> or `difficultyName` variables to determin the difficulty to be use. |

***

# Documentation Lists
### Lua Coding Docs
- [Basics of Coding](https://github.com/Meme1079/PsychWiki/wiki/Lua-Coding-Docs:-Basics-of-Coding)
- [Library Methods](https://github.com/Meme1079/PsychWiki/wiki/Lua-Coding-Docs:-Library-Methods)

### Lua Script API
- [Callback Templates](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Callback-Templates)
- [Control Functions](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Control-Functions)
- [Custom Sprite & Text Functions](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Custom-Sprites-&-Texts-Functions)
- [Depracated Lua Functions](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Depracated-Lua-Functions)
- [Dialogues & Cutscenes Functions](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Dialogues-&-Cutscenes-Functions)
- [General Functions](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-General-Functions)
- [Object Functions](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Object-Functions)
- [Precaching Functions](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Precaching-Functions)
- [Scripting & File Functions](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Scripting-&-File-Functions)
- [Shader Functions](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Shader-Functions)
- [Sound & Music Functions](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Sound-&-Music-Functions)
- [Tween & Timers Functions](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Tweens-&-Timers-Functions)
- [Value Setting & Getting Functions](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Value-Setting-&-Getting-Functions)
- [Variables](https://github.com/Meme1079/PsychWiki/wiki/Lua-Script-API:-Variables)

### Psych Engine API
[WIP]

***

# Example Scripts
### Lua Coding Scripts
[WIP]

### Psych Main Scripts
[WIP]

### Psych Custom Scripts
[WIP]

### Mod Folder Template
[WIP]