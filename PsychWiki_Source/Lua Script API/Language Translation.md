# About
Psych Engine has now added the support for a wide variety of languages, for more accessability to people who don't natively speak English. It utilizes a language localization file (LLF), uses the file format `lang`. To translate certain word and phrases to different languages.  Such as the text's content and the sprite's image path, without doing it hardcoded manually.

***

# Configuration
## Setting Up
Every LLFs are stored within the `data` golder folder directory. Whether within the `assets` folder directory of the game, locally in a custom mods folder directory, or globally in the `mods` folder directory. Either way it will stll work as usual, but it's still recommended to store it locally in a custom mods for organization, obviously.

Naming a LLF must be recommended to utilizing the [language code format](http://www.lingoes.net/en/translator/langcode.htm). For easy identifying from different languages along with organizing and overriding in multiple named LLFs. For an example: `en-US` for english in USA; `en-CA` for english in Canada; and `es` for spanish.

## Contents
### Title
In every first line within a LLF must have the given title of said language. With the additional country associated with said language. If said country that uses the same language have different pronunciation, spelling, vocabulary, and grammar. A very famous and obvious example of this: `English (US)` and `English (UK)`.

The title within the said LLF is a requirement, when translating languages. The said title within the contents will be displayed from the language options menu to be selected. If two or more LLFs share the same title, their contents will be overridden. Mainly the translatable key-value pairs that have the same name between the LLFs.

Examples:
```lang
Português (Brasil)
```
```lang
Português (Portugal)
```

### Translatable Key-Value Pairs
Translatable key-value pairs (TKVP) are special pairs that are used to translate certain word or phrases in a given language. Psych Engine includes a [pre-existing saved list](https://github.com/ShadowMario/FNF-PsychEngine/blob/main/assets/translations/shared/data/pt-BR.lang) of TKVP that translate texts within Psych Engine. Such as rating accuracy, achievements, menus, combos, etc.

Each TKVP, its key which has a unique name to inherit. Are always followed by a colon character <kbd>:</kbd>; the keys naming convention does not only allow spaces. The said values that are associated to the corresponding key, must be enclosed with double-quoted characters <kbd>""</kbd>. Additionally values can be forcefully inserted, for any currently updating values. It utilizes numerical indexes surrounded with curly-braces characters <kbd>{}</kbd>, which always start at $1$.

Example:
```lang
LOLCAT (US)

// Difficulties
difficulty_easy: "EZ"
difficulty_normal: "NORMEL"
difficulty_hard: "HARD"

// Gameplay
score_text: "SKOR: {1} | MISEZ: {2} | AKURACY: {3}"
score_text_instakill: "SKOR: {1} | AKURACY: {2}"
botplay: "CHEATIN' MODE"
```

## Translating
After you're done configurating your LLF, it's time for the translation part. When retrieving a TKVP you can either use both of these function. Both the `getFileTranslation()` function, which gets the given key in the current selected language that's in. Or the alternative `getTranslationPhrase()` function, that uses numerical indexes to insert values for specific TKVP that includes it.

Example:
```lang
LOLCAT (US)

// Difficulties
difficulty_easy: "EZ"
difficulty_normal: "NORMEL"
difficulty_hard: "HARD"
```
```lua
function onCreate()
     debugPrint( getFileTranslation('difficulty_easy') ) --> EZ
end
```


***

# Language Translation Functions
### getFileTranslation(key:String):String
Gets a translatable key-value pairs from the currently selected language within a language localization file. If said key, doesn't exists inside said file; returns the given argument passed to the function.

- `key` - The translatable key-value pairs to retrive and utilize from the currently selected language.

Example:
```lang
LOLCAT (US)

// Gameplay
score_text: "SKOR: {1} | MISEZ: {2} | ACCURACY: {3}"
score_text_instakill: "SKOR: {1} | ACCURACY: {2}"
botplay: "CHEATIN MODE"
```
```lua
function onCreate()
     debugPrint(getFileTranslation('botplay')) --> "CHEATIN MODE"
end
```

### getTranslationPhrase(key:String, ?defaultPhrase:String, ?values:Array<Dynamic> = null):String
Gets a translatable key-value pairs from the currently selected language within a language localization file. But it has additional features includes a default value, if said value is missing. Along with numerical indexes to insert values within the translatable key-value pairs.

- `key` - The translatable key-value pairs to retrive and utilize from the currently selected language.
- `defaultPhrase` - An optional parameter, the default value if no values is given within a translatable key-value pair.
- `values` - An optional parameter, the said values to insert in each corresponding numerical indexes.

Example:
```lang
LOLCAT (US)

// Gameplay
score_text: "SKOR: {1} | MISEZ: {2} | RATEEZ: {3}"
score_text_instakill: "SKOR: {1} | RATEEZ: {2}"
botplay: "CHEATIN MODE"
```
```lua
function onUpdateScore()
     local score_textPhrase = 'Score: {1} | Misses: {2} | Rating: {3}'
     local score_textValues = {score, misses, string.format('%.2f', math.floor(rating * 100))}
     local score_text = getTranslationPhrase('score_text', score_textPhrase, score_textValues)
     debugPrint(score_text) --> "SKOR: 0 | MISEZ: 0 | Rating: ?"
end
```