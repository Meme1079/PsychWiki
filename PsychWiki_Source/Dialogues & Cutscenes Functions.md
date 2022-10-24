# Dialogues/Cutscene Functions
### startDialogue(dialogueFile:String, song:String = null)
Starts a dialogue loading a file inside `mods/data/your-song-name/` and if the dialogue has ended, it calls `startCountdown()`. If every dialogue line passed it will called `onNextDialogue(line)`.

- `dialogueFile` - The `json` file to load.
- `song` - An optional value for a background music during the dialogue. _(Relative to `mods/music`)_

Example: If i want to load a dialogue file `mods/data/bopeebo/dialogue.json` using the pause menu song "Breakfast", I should use: `startDialogue('bopeebo/dialogue', 'breakfast')`.

### startVideo(videoFile:String)
Starts a video during a cutscene. **(Must Be a .MP4 Format)**

- `videoFile` - The file name of your video, it must be inside `mods/videos/`.

Example: If you wanted to start the video `mods/videos/ughCutscene.mp4`, you'd have to use `startVideo('ughCutscene')`.

### startCountdown()
In case you forced a countdown stop for doing a pre-song cutscene or something, <ins>this starts the countdown again manually</ins>.

# Song Functions
### endSong()
In case you forced a song end for doing a post-song cutscene or something, this ends the song manually.

### exitSong(skipTransition:Bool)
Same works with `endSong()` but has an <ins>optional transition</ins>.

- `skipTransition` - The transition if the song exited.

### restartSong(skipTransition:Bool)
This will restart the song that you are playing.

- `skipTransition` - The transition if the song exited.

### loadSong(name:String, difficultyNum:Int)
This will load a new song.

- `name` - The name of the song you wan't to load.
- `difficulty` - The difficulty ID of song.