## Adding Score/Accuracy

### addScore(value:Int = 0)
Adds `value` to the current song's score and recalculates rating

### addMisses(value:Int = 0)
Adds `value` to the current song's misses total and recalculates rating

### addHits(value:Int = 0)
Adds `value` to the current song's notes hit total and recalculates rating

### addHealth(value:Float = 0)
Adds `value` to the current song's health total and recalculates rating

## Setting Score/Accuracy

### setScore(value:Int = 0)
Set the current song's score to `value` and recalculates rating

### setMisses(value:Int = 0)
Set the current song's misses to `value` and recalculates rating

### setHits(value:Int = 0)
Set the current song's hit total to `value` and recalculates rating

### setHealth(value:Int = 0)
Set the current song's health total to `value` and recalculates rating

### setRatingPercent(value:Float)
Sets the rating percent in case you want to do your own rating calculation.

- `value` - Should go from `0` to `1` but can actually be whatever value you want, but it's kinda stupid to get out of the base values.

### setRatingString(value:String)
Sets the rating name to `value` in case you want to do your own rating calculation.

### setRatingFC(value:String)
Sets the rating FC on the `scoreTxt`

## Getting Score/Accuracy

### getScore()
Get the current song's score

### getMisses()
Get the current song's misses

### getHits()
Get the current song's hit total

### getHealth()
Get the current song's health