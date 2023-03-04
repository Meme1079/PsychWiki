# Dialogues/Cutscene Functions
### startDialogue(dialogueFile:String, song:String = null)
Starts the <ins>dialogue stuff</ins>, it will load the `json` file relative to `data/your-song-name/` folder. When the <ins>dialogue is finished</ins>, `startCountdown()` function will be called.

If the <ins>dialogue line has finished</ins>, `onNextDialogue()` callback will be called. If it <ins>skips</ins> then `onSkipDialogue()` callback will be called.

- `dialogueFile` - The name of the dialogue `json` file.
- `song` - An optional parameter, The `ogg` music file to be played; Must be relative to `mods/music` or `assets/music` folders.

### startVideo(videoFile:String)
Starts the <ins>video</ins> during a cutscene.

- `videoFile` - The name of the video `mp4` file; Must be relative to `mods/videos` folder.

### startCountdown()
Starts the <ins>countdown</ins>, used it if you want to skip the annoying dialogue or video manually.

***

# Song Functions
### loadSong(name:String, difficultyNum:Int)
> **Warning**: _You can't load a song if the week `json` has different difficulties._

Loads a new song.

- `name` - The name of the song to be loaded.
- `difficultyNum` - The difficulty ID number of the song.

### restartSong(skipTransition:Bool)
Restarts the song.

- `skipTransition` - Whether there will be a transition when the song is reset.

### exitSong(skipTransition:Bool)
Exits the song with an optional transition; Not to be confised with `endSong()` function. 

- `skipTransition` - Whether there will be a transition when the song has exited.

### endSong()
Ends the song manually.