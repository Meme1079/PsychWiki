# Dialogues/Cutscene Functions
### startDialogue(dialogueFile:String, song:String = null)
Starts the dialogue stuff, it will load the `json` file in `mods/data/your-song-name/` folder. If the dialogue ended the `startCountdown()` function will be triggered. And every dialogue line passed it will called `onNextDialogue(line)`.

- `dialogueFile` - The dialogue `json` file to be loaded.
- `song` - An optional value for a background music during the dialogue. _(Relative to `mods/music`)_

Example: If i want to load a dialogue file `mods/data/bopeebo/dialogue.json` using the pause menu song "Breakfast", I should use: `startDialogue('bopeebo/dialogue', 'breakfast')`.

### startVideo(videoFile:String)
> **Note**: _When adding a video on the game the file format should be a `mp4` format any video format other than `mp4` will not load properly._

Starts a video during a cutscene. 

- `videoFile` - The path of the video file. _(Relative to `mods/videos`)_

Example: `startVideo(mods/videos/ughCutscene.mp4)`

### startCountdown()
In case you forced a countdown stop for doing a pre-song cutscene or something, <ins>this starts the countdown again manually</ins>.

# Song Functions
### endSong()
In case you <ins>forced a song end for doing a post-song cutscene or something</ins>, this ends the song manually.

### exitSong(skipTransition:Bool)
Same works with `endSong()` but has an <ins>optional transition parameter</ins>.

- `skipTransition` - The transition if the song exited.

### restartSong(skipTransition:Bool)
This will <ins>restart the song</ins> that is currently playing.

- `skipTransition` - The transition if the song exited.

### loadSong(name:String, difficultyNum:Int)
This will <ins>load a new song</ins>.

- `name` - The name of the song you want to load.
- `difficulty` - The difficulty ID of song.