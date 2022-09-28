### startDialogue(dialogueFile:String, song:String = null)
Starts a dialogue loading a file inside `mods/data/your-song-name/` and also if the dialogue has ended, it calls `startCountdown()`. If every dialogue line passed it will called `onNextDialogue(line)`

- `dialogueFile` - The .Json file to load
- `song` - An Optional value for a Background music during the dialogue

Example: If i want to load a dialogue file `mods/data/bopeebo/dialogue.json` using the pause menu song (Breakfast), i should use: `startDialogue('bopeebo/dialogue', 'breakfast')`

### startVideo(videoFile:String)
Starts a Video Cutscene **(Must Be a .MP4 Format)**

- `videoFile` - File name of your video, it must be inside `mods/videos/`

Example: If you wanted to start the video `mods/videos/ughCutscene.mp4`, you'd have to use `startVideo('ughCutscene')`

### startCountdown()
In case you forced a countdown stop for doing a pre-song cutscene or something, this starts the countdown again manually.

### endSong()
In case you forced a song end for doing a post-song cutscene or something, this ends the song manually.
