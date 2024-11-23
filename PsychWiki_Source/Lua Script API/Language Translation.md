# About
Psych Engine has implemented the support for multi-languages, to make it more accessible to people who don't natively speak English. It uses a language localization file (`lang`, for file extension) to translate words and phrases to different languages. Such as the text's content and the sprite's image path, without doing it hardcoded manually.

***

# Configuration
## Setting Up
Language localization files are stored within the `data` folder. Whether in the `assets` folder of the game, locally in a custom mods folder, or globally in the `mods` folder. Either way it's still recommended to store it locally in a custom mods for organization, obviously.

Naming a language localization file must be recommened, using the [language code format](http://www.lingoes.net/en/translator/langcode.htm). This is for organizations, recognizability, and easily overriding in multiple named language localization files. For an example: `en-US` for english in USA; `en-CA` for english in Canada; and `es` for spanish.

## Contents
### Title
In every first line in a language localization file should have the given title of the language. And specified the country if it has different pronunciation, spelling, vocabulary, and grammar. For instances: `English (US)` and `English (UK)`. 

The title is required becuase Psych Engine will get the title of each language localization file. And displays the title on the language options menu to be selected. If the same or more titles in each language localization file exists. Both or more will merge their contents and overrides any translatable key-value pairs that exist in the content.

Examples:
```lang
LOLCAT (US)
```
```lang
Engrish (UK)
```

> [!NOTE]
> _The overriding of language localization file(s) depends on the mod's priority list from the mods menu._

### Translatable Key-Value Pairs
Trnaslatable key-value pairs are special pairs that translate word or phrases in a given language. Psych Engine includes a [pre-existing saved list](https://github.com/ShadowMario/FNF-PsychEngine/blob/main/assets/translations/shared/data/pt-BR.lang) of translatable key-value pairs for translating the ratings, achievements, menus, etc. 

Each key is always followed by a colon character <kbd>:</kbd>; the naming convention does not allow spaces. The values that are associated to the corresponding key must be enclosed with double-quoted characters <kbd>""</kbd>. Additionally values can be forcefully inserted, for any currently updating values. It utilizes numerical indexes surrounded with curly-braces characters <kbd>{}</kbd>, which always start at $1$.

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

***

# Language Translation Functions
### getFileTranslation(key:String):String
Gets a translatable key's phrase from a language localization file, `lang` file. If the translatable key is isn't present inside the file, it returns the `key` argument given to the function.

- `key` - The translatable key to get from the given language localization file.

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
Gets a translatable key's phrase from a language localization file, `lang` file. It includes a default phrase, if there is non-existing translatable key. Along with a translatable key index for inserting content for updating values.

- `key` - The translatable key to get from the given language localization file.
- `defaultPhrase` - An optional parameter, The default phrase to inherit if there is non-existing translatable key.
- `values` - An optional parameter, The values to insert in each translatable key index; follows a numerical order.

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