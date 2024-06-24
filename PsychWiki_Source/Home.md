Welcome to the PsychWiki section wiki!

# Frequently Asked Questions
## Coding
### Q: Where do I place my scripts?
It should be inside the `mods` folder in a specific folder, each folder will execute the script in different scenario.

- `scripts` - Will execute your script(s) globally in any song of the mod or other mods. 
     - You can do this by setting the `runsGlobally` element to `true` inside the `pack.json`.
- `data` - Will execute your script(s) on the selected song.
     - The script(s) should be inside the song's name folder
- `stages` - Will execute your script(s) on the selected stage.
     - The script(s) should be inside the stages name folder.
- `custom_events` - Will execute your script(s) when an event is triggered.
     - The script(s) name should be the name of the specified event.
     - I'd recommend to include a `txt` file with the same of the specified event, for instructions on how to use it.
- `custom_notes` - Will execute your script(s) when an event note is triggered.

<details><summary>Path Reference:</summary>
<p>

```txt
mods
├─scripts
│ └─main.lua
├─custom_events
│ ├─event_name.lua
│ └─event_name.txt
├─custom_notes
│ └─note_name.lua
├─data
│ └─song
│   └─main.lua
└─stages
  └─song
    └─main.lua
```

</p>
</details>

### Q: Where can I learn Lua?
Try reading the lua coding docs in [here](https://github.com/Meme1079/PsychWiki/wiki/Lua-Coding-Docs:-Basics-of-Coding), essentially explains the basics of it. I'd recommended if you're a newbie!

### Q: Where can I learn Haxe?
Try reading [here](https://haxe.org/documentation/introduction/), it's a bit harder the Lua. Very essential for scripting in source-code or HScripting.

## Compiling
### Q: I'm trying to compile the game, but it keeps failing!
Try changing the version of your libraries/downloading an older version of Haxe, [click here to see versions that are confirmed to work.](https://github.com/ShadowMario/FNF-PsychEngine/wiki/Libraries-versions).

### Q: I'm using the Downloaded Build, the Engine can't find an specific file!
Make sure you've put your file(s) inside the `mods` folder, not `assets` folder.

## Psych API
### Q: How do i make a Custom Character?
A: [Read this.](https://github.com/ShadowMario/FNF-PsychEngine/wiki/Creating-a-Character)

### Q: Where do i save Menu Characters? Where do i save Weeks?
A: [Read about it here.](https://github.com/ShadowMario/FNF-PsychEngine/wiki/Adding-a-New-Week)

### Q: Where do i save Dialogue Portraits? Where do i save my custom Dialogue? And how do i make the dialogue play on a Song??
A: [Read about it here.](https://github.com/ShadowMario/FNF-PsychEngine/wiki/Dialogues)

### Q: How can i create a Custom Event?
A: [Read this.](https://github.com/ShadowMario/FNF-PsychEngine/wiki/Creating-an-Event)

### Q: How can I create a custom credit?
Firstly create a file which is `credits.txt`, inside the `mods/data` global folder or `mods/MyMod/data` folder. 

- A Title should have the name: `Title`
- Each line should have the syntax: `name::iconname::description::link::colorHex`

Example:
```txt
Main Credits
Shadow Mario::shadowmario::Main Programmer of Psych Engine::https://ko-fi.com/shadowmario::FFDD33
BBPanzu::bb-panzu::Assistant Programmer of Psych Engine::https://twitter.com/bbsub3::FFDD33
```

### Q: How can I add Custom Achievements/Awards?
Copy this [text](https://pastebin.com/raw/3pJKDX6v) and paste it in `YourModFolder/data/achievements.json` You can drop your achievement images in `YourModFolder/images/achievements/`, be sure to read the readme file inside it if you extracted the Mod Template zip.

### Q: How can I add Settings to my Mod?
[Copy this text and paste it in YourModFolder/data/settings.json](https://pastebin.com/raw/EMu20Fyx)