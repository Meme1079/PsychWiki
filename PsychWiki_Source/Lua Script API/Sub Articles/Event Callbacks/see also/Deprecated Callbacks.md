> [!CAUTION] 
> _The functions featured here are deprecated meaning they are not recommended by use and outdated. Either because of name or parameter changes. This page of this wiki is to inform people to not use these functions and instead to use the new ones._

# Deprecated Event Callbacks
## Note Callbacks
> [!NOTE]
> The parameters of each callback of this section have been listed here. Due to stupid the repetitive copy and paste on each callbacks description. And all of theme just work the same as usual. If you want to know what parameters the don't include or include stuff and it type on each callbacks. Just check the title, idiot.

- `membersIndex` - The current note member ID index.
- `noteData` - The current direction index of the note; Goes from: `0` to `3`, basically left, down, up and right.
- `noteType` - The current notetype of the note.
- `isSustainNote` - Whether the notes are sustain (long notes) or not.

### goodNoteHitPost(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float)
Triggered after the player hits the note.

> Added in version `0.7.2`, but later removed in version `0.7.3` due to having the same behavior as the `goodNoteHit()` callback.

### opponentNoteHitPost(membersIndex:Int, noteData:Int, noteType:String, isSustainNote:Float)
Triggered after the opponent hits the note.

> Added in version `0.7.2`, but later removed in version `0.7.3` due to having the same behavior as the `opponentNoteHit()` callback.