> [!NOTE]
> _In HScript, some event callback parameters, have been altered to either be added or removed completely. This pages is just to list of altered event callbacks that are only exclusive to HScript in general._

## Countdown
### onCountdownTick(tick:Countdown, counter:Int)
Triggeres every countdown tick until it ended.

- `tick` - The current countdown counter tick in words, will go from `THREE`, `TWO`, `ONE`, to `START`.
- `counter` - The current counter tick number, will go from `4` to `0`.

Example:
```haxe
function onCountdownStarted(tick:Countdown, counter:Int) {
     debugPrint('Counter Tick: ' + tick ' = ' + counter);
}
```
```txt
Counter Tick: 0 = THREE
Counter Tick: 1 = TWO
Counter Tick: 2 = ONE
Counter Tick: 3 = GO
Counter Tick: 4 = START
```

## Notes
### onSpawnNote(note:Note)
Triggers every <ins>note spawning currently in the game</ins>.

- `note` - The Note class containing instance variables to manipulate the note's property values.

### goodNoteHit(note:Note)
Triggers every <ins>good note hit from the **player**</ins>.

- `note` - The Note class containing instance variables to manipulate the note's property values.

### opponentNoteHit(note:Note)
Triggers every <ins>good note hit from the **opponent**</ins>.

- `note` - The Note class containing instance variables to manipulate the note's property values.

### goodNoteHitPre(note:Note)
Triggers before every <ins>good note hit calculation from the **player**</ins>.

- `note` - The Note class containing instance variables to manipulate the note's property values.

### opponentNoteHitPre(note:Note)
Triggers before every <ins>good note hit calculation from the **opponent**</ins>.

- `note` - The Note class containing instance variables to manipulate the note's property values.

### noteMiss(note:Note)
Triggers every <ins>note miss from the player</ins>.

- `note` - The Note class containing instance variables to manipulate the note's property values.