# About Achievements
## Creating an Achievement
## JSON Setting

***

# Achievement Functions
### isAchievementUnlocked(name:String)
Checks if the <ins>achievement is unlocked</ins>, returns `true` if it is.

- `name` - The achievement name to be used.

### unlockAchievement(name:String)
Unlocks the achievement.

- `name` - The achievement name to be used.

### addAchievementScore(name:String, ?value:Dynamic = 1, ?saveIfNotUnlocked:Bool = true)
Adds the current achievement score value. If the score is above the maxScore value from `achievements.json`, the achievement will unlock.

- `name` - The achievement name to be used.
- `value` - An optional parameter, it will add to the achievement score value with the amount specified; Default value: `1`.
- `saveIfNotUnlocked` - An optional parameter, it will save the score isn't at or above the maxScore value; Default value: `true`.

### setAchievementScore(name:String, ?value = 1, ?saveIfNotUnlocked = true)
Set the current achievement score value. If the score is above the maxScore value from `achievements.json`, the achievement will unlock.

- `name` - The achievement name to be used.
- `value` - An optional parameter, it will set the achievement score value to the value specified; Default value: `1`.
- `saveIfNotUnlocked` - An optional parameter, it will save the score isn't at or above the maxScore value; Default value: `true`.

### getAchievementScore(name:String)
Gets the current achievement score value.

- `name` - The achievement name to be used.

### achievementExists(name:String)
Checks if the <ins>achievement exists</ins> inside the game, returns `true` if it exists.

- `name` - The achievement name to be used.