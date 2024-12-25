# User Interface
| Group Instances 	| Description 	| Type 	|
|---	|---	|---	|
| `uiGroup` 	| The user-interface (HUD) elements containing icons, health-bar, score, etc. 	| `FlxSpriteGroup` 	|
| `comboGroup` 	| The combo elements when hitting a note, containing the ratings <br>and the number of note hits. 	| `FlxSpriteGroup` 	|

***

# Characters
| Group Instances 	| Description 	| Type 	|
|---	|---	|---	|
| `boyfriendGroup` 	| The boyfriend (player) character group, used for ordering objects. 	| `FlxSpriteGroup` 	|
| `dadGroup` 	| The dad (opponent) character group, used for ordering objects. 	| `FlxSpriteGroup` 	|
| `gfGroup` 	| The girlfriend (supporting) character group, used for ordering objects. 	| `FlxSpriteGroup` 	|

***

# Note/Splash/Receptors
## Playstate Group Instances
| Group Instances 	| Description 	| Type 	|
|---	|---	|---	|
| `notes` 	| The notes that are currently spawning in game. 	| `FlxTypedGroup<Note>` 	|
| `unspawnNotes` 	| The notes that are not spawned in the game yet.  	| `Array<Note>` 	|
| `eventNotes` 	| The event notes that are present. 	| `Array<EventNote>` 	|
| `grpNoteSplashes` 	| The player note splash group. 	| `FlxTypedGroup<NoteSplash>` 	|
| `playerStrums` 	| The player strum group. 	| `FlxTypedGroup<StrumNote>` 	|
| `opponentStrums` 	| The opponent strum group. 	| `FlxTypedGroup<StrumNote>` 	|
| `strumLineNotes` 	| Both containing the player and opponent strum group. 	| `FlxTypedGroup<StrumNote>` 	|

## Note Class Instances
### Note
#### Hits
| Group Instances 	| Description 	| Type 	| Default Value 	|
|---	|---	|---	|---	|
| `ignoreNote` 	| Whether the note should have a penalty for missing or not. 	| `Boolean` 	| `false` 	|
| `hitByOpponent` 	| Whether the note can have the ability to hit by the opponent or not. 	| `Boolean` 	| `false` 	|
| `gfNote` 	| Whether the note is from the girlfriend (supporting) character or not. 	| `Boolean` 	| `false` 	|
| `noteWasHit` 	| Whether the note was hit or not, self-explanatory. 	| `Boolean` 	| `false` 	|
| `prevNote` 	| The previous note earlier, self-explanatory. 	| `Note` 	| _None_ 	|
| `nextNote` 	| The next note from the current note, self-explanatory. 	| `Note` 	| _None_ 	|
| `mustPress` 	| Whether the note is a must press, from the player or not. 	| `Boolean` 	| `false` 	|
| `canBeHit` 	| Whether the note can have the ability to be hit, only works for player. 	| `Boolean` 	| `false` 	|
| `blockHit` 	| Whether the note will be blocked when hit, only works for player. 	| `Boolean` 	| `false` 	|
| `wasGoodHit` 	| Whether the note was a good hit from good to sick. 	| `Boolean` 	| `false` 	|
| `tooLate` 	| Whether the note was a late hit from bad to shit. 	| `Boolean` 	| `false` 	|
| `hitHealth` 	| The amount of health gained when hitting a note. 	| `Float` 	| `0.02` 	|
| `missHealth` 	| The amount of health loss when missing a note. 	| `Float` 	| `0.1` 	|
| `missed` 	| Whether the note was missed or not. 	| `Boolean` 	| `false` 	|
| `noAnimation` 	| Whether the note should play an animation when hita note or not. 	| `Boolean` 	| `false` 	|
| `noMissAnimation` 	| Whether the note should play an animation when missing a note or not. 	| `Boolean` 	| `false` 	|
| `hitCauseMiss` 	| Whether the note causes a miss when hitting it or not. 	| `Boolean` 	| `false` 	|
| `distance` 	| The notes distance position between it and the strums. 	| `Float` 	| `2000` 	|
| `hitsoundDisabled` 	| Whether the hitsounds will be disabled, even if it's enabled. 	| `Boolean` 	| `false` 	|
| `hitsoundForce` 	| Whether the hitsounds will be force to play, even if it's disabled. 	| `Boolean` 	| `false` 	|
| `hitsoundVolume` 	| The current hitsound volume; Goes from `0` to `3`. 	| `Float` 	| `1.0` 	|
| `hitsoundChartEditor` 	| _Still Researching_ 	| `Boolean` 	| `true` 	|

#### Offsets
| Group Instances 	| Description 	| Type 	| Default Value 	|
|---	|---	|---	|---	|
| `earlyHitMult` 	| The amount distance from the note that be hit earlier. 	| `Float` 	| `1` 	|
| `lateHitMult` 	| The amount distance from the note that be hit late. 	| `Float` 	| `1` 	|
| `offsetX` 	| The offset in x position for the note to offset to. 	| `Float` 	| `0` 	|
| `offsetY` 	| The offset in y position for the note to offset to. 	| `Float` 	| `0` 	|
| `offsetAngle` 	| The offset in angle position for the note to offset to. 	| `Float` 	| `0` 	|
| `multAlpha` 	| The alpha (opacity) multiplier of the note. 	| `Float` 	| `1` 	|
| `multSpeed` 	| The speed multiplier of the note. 	| `Float` 	| `1` 	|

#### Data
| Group Instances 	| Description 	| Type 	| Default Value 	|
|---	|---	|---	|---	|
| `animSuffix` 	| The current animation suffix name when hitting a note. 	| `String` 	| `''` 	|
| `noteData` 	| The corresponding direction index of the note. 	| `Int` 	| `0` 	|
| `strumTime` 	| The strum time of the notes appearing in game. 	| `Float` 	| `0` 	|
| `sustainLength` 	| The current sustain (long notes) length of the note. 	| `Float` 	| `0` 	|
| `isSustainNote` 	| Whether the notes are sustain (long notes) or not. 	| `Boolean` 	| `false` 	|
| `spawned` 	| Whether the note currently spawned or not. 	| `Boolean` 	| `false` 	|
| `noteType` 	| The current note-type of the note. 	| `String` 	| `null` 	|
| `texture` 	| The current texture image of the note. 	| `String` 	| `null` 	|
| `rating` 	| The current rating name when hitting a note. 	| `String` 	| `'unknown'` 	|
| `ratingMod` 	| The current rating value when hitting a note. Each specific values<br>correspond to each rating. `1` = Sick!, `0.75` = Good, `0.5` = Bad,<br>`0.25` = Shit, and `9` = unknown. 	| `Float` 	| `0` 	|
| `ratingDisabled` 	| Whether the rating functionality is enabled or not. 	| `Boolean` 	| `false` 	|

#### Copyable Properties
| Group Instances 	| Description 	| Type 	| Default Value 	|
|---	|---	|---	|---	|
| `copyX` 	| Whether the notes will follow the strum receptor's x position value. 	| `Boolean` 	| `true` 	|
| `copyY` 	| Whether the notes will follow the strum receptor's y position value. 	| `Boolean` 	| `true` 	|
| `copyAngle` 	| Whether the notes will follow the strum receptor's angle position value. 	| `Boolean` 	| `true` 	|
| `copyAlpha` 	| Whether the notes will follow the strum receptor's alpha (opacity) value. 	| `Boolean` 	| `true` 	|

### Event Notes
> [!NOTE]
> _This only applies to the `eventNotes` group instance, meaning it only work for that group instance only._

| Group Instances 	| Description 	| Type 	| Default Value 	|
|---	|---	|---	|---	|
| `event` 	| The current event name from the corresponding event note. 	| `String` 	| `''` 	|
| `strumTime` 	| The strum time of the event notes to appear in game. 	| `Float` 	| `0` 	|
| `value1` 	| The first value from said event. 	| `String` 	| `''` 	|
| `value2` 	| The second value from said event. 	| `String` 	| `''` 	|

### Splashes
> [!NOTE]
> _These elements came from the `noteSplashData` instance, for instance `noteSplashData.texture`._

| Group Instances 	| Description 	| Type 	| Default Value 	|
|---	|---	|---	|---	|
| `texture` 	| The current texture of the note splashes. 	| `String` 	| `null` 	|
| `disabled` 	| Whether the note splashes are disabled when hitting a note or not. 	| `Boolean` 	| `false` 	|
| `antialiasing` 	| Whether the note splashes will apply anti-aliasing or not. 	| `Boolean` 	| [^1] 	|
| `useGlobalShader` 	| Whether the note splashes will apply the copied default RGB <br>shader colors or not. 	| `Boolean` 	| `false` 	|
| `useRGBShader` 	| Whether the note splashes will apply RGB shader colors or not. 	| `Boolean` 	| [^2] 	|
| `a` 	| The amount of alpha (opacity) applied to the note splashes. 	| `Float` 	| [^3] 	|

[^1]: The anti-aliasing applying, depends if the stage isn't a pixel stage or not.
[^2]: This depends if RGB shader colors are disabled in the chart editor.
[^3]: This depends the alpha (opacity) value selected from the options menu.