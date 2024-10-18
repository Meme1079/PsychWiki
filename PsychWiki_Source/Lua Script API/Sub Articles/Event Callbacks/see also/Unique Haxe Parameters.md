# Altered Event Callbacks
## Countdown Callbacks
### onCountdownTick(tick:Countdown, counter:Int)
Triggered in <ins>every countdown counter tick until it ended</ins>.

- `tick` - The current countdown counter tick in words; Goes from `THREE`, `TWO`, `ONE`, to `START`.
- `counter` - The current countdown counter tick index number; Goes from `1`, `2`, `3`, to `4`.

Example:
```haxe
function onCountdownStarted(tick:Countdown, counter:Int) {
     debugPrint('Counter Tick: ' + tick ' = ' + counter);
     // --> Counter Tick: 0 = THREE
     // --> Counter Tick: 1 = TWO
     // --> Counter Tick: 2 = ONE
     // --> Counter Tick: 3 = GO
     // --> Counter Tick: 4 = START
}
```

## Note Callbacks
> [!NOTE]
> The parameters of each callback of this section have been listed here. Due to stupid the repetitive copy and paste on each callbacks description. And all of theme just work the same as usual. If you want to know what parameters the don't include or include stuff and it type on each callbacks. Just check the title, idiot.

- `note` - The current note member from the triggered event callback. You can utilize the instances from the `Note` class to get or set the note's property.

### onSpawnNote(note:Note)
Triggered on <ins>every note that has currently spawned</ins>.

Example:
> Gets the 
```haxe
function onSpawnNote(note:Note) {
     debugPrint(note.noAnimation);
}
```

### goodNoteHit(note:Note)
Triggered on <ins>each **note hit** from the **player**</ins>.

### goodNoteHitPre(note:Note)
Triggered <ins>**before note hit** calculations from the **player**</ins>.

### opponentNoteHit(note:Note)
Triggered on <ins>each **note hit** from the **opponent**</ins>.

### opponentNoteHitPre(note:Note)
Triggered <ins>**before note hit** calculations from the **opponent**</ins>.

### noteMiss(note:Note)
Triggered on <ins>each **note miss** from the **player**</ins>.