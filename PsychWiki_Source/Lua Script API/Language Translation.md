# About
Languages are a system of communication that consists of speech, manual (signed), or written symbols. In version 1.0 pre-release of Psych Engine, it added the support for languages to make more accessible to people who don't natively speak English. It uses a language localization file or a `lang` file to translate words and phrases to different languages. Like the text's content or the sprite's image, without doing it hard-coded.

## Setting up
Firstly make a `lang` file that is relative to: `assets/shared/data` or `mods/data` folders. You can name this file anything you want but I'd recommend using the language code format. For organization and easily use a pre-existing `lang` file. As an example: `en-US` for english in USA; `en-CA` for english in Cananda; and `es` for spanish. You can see the list of language code for each [countries](http://www.lingoes.net/en/translator/langcode.htm).

Path (Reference):
```txt
mods
└─my_mods
  └─data
    ├─en-US.lang
    ├─en-CA.lang
    └─es.lang
```

## Translating
The contents within a `lang` file should include the given title of the language. And a list of translatable keys for translating specific words or phrases.

### Title
The first line of the `lang` file is the title of the given language. Which is the name of the language with the specified country to associate with. If the language is used by that country, for instance: `English (US)` and `English (UK)`. 

This is important becuase the title will be displayed on the Language options to be selected. If the titles from different `lang` files are the same, assuming no typos. Both will merged their contents and overrides any translatable keys, if both exist in the content and depending on the mods priority.

Example:
```lang
LOLCAT (US)
```

### Translatable Keys
Translatable keys are special keys for that translate word or phrases in a given language. Very useful for translating the text's content and the sprite's image path. The syntax for this includes the key, obviously; the name of it can have any characters you want to have; Example: `options:` `stupid_text:`, `images/warning:`, etc. 

With the key's content given word or phrase attached to inherit. The contents of it must be always inclosed with double-bracket characters <kbd>""</kbd>; Example: `"Cuadrado"`, `"ボール"`, `"Bobo"`, etc. You can also insert any values to the key's content, for any updating values. It uses a translatable key index to insert any values, the index must be inclosed with curly-braces <kbd>{}</kbd>; Its starting value is always starts at `1`. For example: `Pontos: {1} | Erros: {2} | Avaliação: {3}`.

Examples:
```lang
LOLCAT (US)

// Custom Stuff
timer_text: "TIM LEFT"
timer_format_text: "MINIT: {1} - SECUND: {2} - MILLISECONDZ: {3}"
```

> [!IMPORTANT]
> There are pre-existing translatable keys that Psych Engine hard-coded to modify existing text content and sprite image paths. Such as the Main menu buttons, HUD, Ratings, Achievements, and so on, I won't be listing every translatable keys that are presen. But there is a `lang` file template you can download, just click [here](https://cdn.discordapp.com/attachments/929801502829215745/1265069886632099972/en-US.lang?ex=66c272a4&is=66c12124&hm=fa2e9507bcc0bbb721fa0cf71aebe0cf93ff5b87200a852731795b479ba4f036&).


***

# Language Translation Functions
### getFileTranslation(key:String)
Gets a translatable key's phrase from a language localization file, `lang` file. If the translatable key is isn't present inside the file, it returns the `key` argument given to the function.

- `key` - The translatable key to get from the given language localization file.

Examples:
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

### getTranslationPhrase(key:String, ?defaultPhrase:String, ?values:Array<Dynamic> = null)
Gets a translatable key's phrase from a language localization file, `lang` file. It includes a default phrase, if there is non-existing translatable key. Along with a translatable key index for inserting content for updating values.

- `key` - The translatable key to get from the given language localization file.
- `defaultPhrase` - An optional parameter, The default phrase to inherit if there is non-existing translatable key.
- `values` - An optional parameter, The values to insert in each translatable key index; follows a numerical order.

Examples:
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