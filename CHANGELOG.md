### 17.0.0 (Christmas) Version
- Added "Haxe Script API"
- Added Custom Sprite Page
- Added Custom Text Page
- Overhaul Pages
     - Library Methods
          - Made "String Methods" section into a subarticle page
          - Made "Table Methods" section into a subarticle page
          - Made "Mathematical Methods" section into a subarticle page
     - Built-in Functions & Constants
          - Remade the descriptions of each functions
     - Object Functions
          - Focus to functions that are utilizing objects such as sprites, texts, etc
     - General Functions
          - Focus to miscellaneous category of functions
     - Deprecated & Removed Functions
          - Renamed "Deprecated Lua Functions" to "Deprecated & Removed Functions"
          - Added dates for functions
     - HScript Functions
          - Moved other functions to the "Haxe Script API" section.
     - Language Translation
          - Remade the about section
          - Remade the descriptions of each functions
     - Game Input Control Functions
          - Renamed "Game Control Functions" to "Game Input Control Functions"
          - Added subarticle "Input Controls" page
     - Custom Shaders
          - Revamp the entire about section to more accurate
          - Revamp the descriptions of each functions for accuracy
     - Custom Substates
          - Remade the about section
          - Remade the descriptions of each functions
     - Sound & Music Functions
          - Added "Configuration" section for more detailed information
          - Remade the descriptions of each functions
     - Scripting & File Functions
          - Remade the descriptions of each functions
     - Tweens & Timers Functions
          - Remade the descriptions of each functions
     - Variables
          - Remaed the description of each variables
- Removed "Custom Sprites & Texts Functions" page
- Fix some formatting
- Fix spelling/grammar errors

### 16.0.0 Version
- Added "Language Translation" Page
     - Includes a tutorial
     - New functions: `getFileTranslation()` and `getTranslationPhrase()`
- Updated Pages
     - "Basics of Coding" Page
          - Renamed "Difference" to "Scripting Adjustment" section
          - Adjusted "Scripting Adjustment" section for context on callbacks
          - Adjusted "Operators" > "Miscellaneous" sub-section for new examples
     - "Built-in Functions and Constants" Page
          - Fixed an example; missing a parameter
     - "Custom Sprites & Texts Functions" Page
          - Improved functions and parameter description
          - Added a new parameter `group` in `removeLuaSprite()` function
     - "Deprecated Lua Functions" Page
          - Renamed "Value Setting & Getting Functions" to "Reflection Function" section
          - Organize the "Reflection Function" section
               - Added `updateHitboxFromGroup()` function
- Overhaul Pages
     - "Event Callbacks" Page
          - New descriptions that fixes and adds more context, including examples
          - Renamed "Callback Templates" to "Event Callbacks"
          - Includes an about section and sub-articles
               - Sub-aritcles include "Dynamic Callbacks", "Disabling Callbacks", "Deprecated Callbacks", and "Unique Haxe Parameters"
     - "General Functions" Page
          - Improved functions and parameter description
          - Added "Camera Property Setter/Getters Functions" section, for recently added new functions
     - "Reflection Functions" Page
          - Improved functions and parameter description
          - Includes re-formatted list that uses tables
          - Added `addToGroup()` function
     - "Variables" Page
          - Includes re-formatted list that uses tables

### 15.1.0 Version
- Added "Object-Oriented Programming" Page
- Overhaul the Functions section from "Basics of Coding" page
- Overhaul "Metatable" page

### 15.0.0 Version
- New Logo & Banner
- New Blockquote highlights
- Added "FlxAnimate Functions" page
- Added HScript variables section to the "Custom Substates" page
- Added new dynamic functions to the "Callback Templates" page
- Added new table methods to "Library Methods" page
- Renamed "Global Functions & Variables" to "Built-in Functions & Constants" page
- Overhaul "Basics of Coding" page
- Overhaul "Built-in Functions & Constants" page
- Updated some function arguments
- Fix some formatting
- Fix spelling/grammar errors

#### Contributors
- [LarryFrosty](https://github.com/LarryFrosty)

### 14.3.0 Version
- Added Dynamic Functions and Deprecated Functions in "Callback Templates" Page
- Edited some shortcuts in some variables so that they actually do what they're supposed to do
- More note properties in "Reflection Functions" Page
- Added more infos on some functions & variables
- Proper Formatted on some pages
- Fix spelling/grammar errors

#### Contributors
- [LarryFrosty](https://github.com/LarryFrosty)

### 14.2.0 Version
- Added custom achievement functions
- Added new callback functions
- Fixed some information on some functions
- Fix spelling/grammar errors

#### Contributors
- [LarryFrosty](https://github.com/LarryFrosty) - For adding some new callback functions to the wiki, that I didn't know existed
- [galactic2005](https://github.com/galactic2005) - For on how to use `getPixelColor()` function and added custom achievement functions

### 14.1.0 Version
- Added "Custom Substate" Page
- Added new 0.7.2 functions
- Organized some pages from the wiki

### 14.0.0 Version
- Added some additional context on descriptions
- Added descriptions to `createInstance()` and `addInstance()` functions
- Added new names for some function & variable for newer versions
- Added Pre-imported Libraries for references in "HScript Functions" Page
- Added missing variables and functions
- Revamp "Basics of Coding", "Global Functions & Variables", "Library Methods", and "String Patterns" Page
- Fix spelling/grammar errors.

#### Contributors
- [LarryFrosty](https://github.com/LarryFrosty) - For fixing some grammar, adding more additional context on descriptions, adding descriptions to `createInstance()` and `addInstance()` functions, etc

### 13.1.0 Version
- Added the new `onEventPushed()` callback function, that's it.

### 13.0.0 Version
- Added "Global Functions & Variables" to `Lua Coding Docs`
- Added new variables from the "Variables" Page
- Added the description of the `allowMaps` parameter in the "Reflection Functions"
- Change the parameters for the `debugPrint()` function
- Revamp & Reformatted "Metatables" Page
- Revamp & Reformatted "Basics of Coding" Page
- Revamp "Custom Sprites & Texts Functions" Page
- Revamp "Tweens & Timer Functions" Page
- Fix spelling/grammar errors.

### 12.0.0 Version
- Added "Metatables" Page to `Lua Coding Docs`
- Added "Hscript Functions" Page to `Lua Script API`
- Added new functions
- Updated "Variables" **All Shortcut to** sections and added **Deprecated Original Shortcuts** for compatibility
- Updated "Tweens & Timers Functions" Page
- Revamp & Reformatted "Basics of Coding" Page
- Fixed the `_G` Variable Section description.
- Fix spelling/grammar errors.
- Renamed "Matching Patterns" Page to "String Patterns"
- Renamed "Value Setters & Getters Function" to "Reflection Functions"

### 11.0.0 Version
- Improve some descriptions on "Basics of Coding" and "Library Methods" Pages
- Added a new page "Matching Patterns" in `Lua Coding Docs`
- Added "CHANGELOG" markdown file
- Added `loadFrames()` function in "Object Functions" Page
- Added `kbg` tag when representing characters, cuz it looks cool
- Moved 'Escape Characters' Section to "Basics of Coding" Page
- Fix spelling/grammar errors
- Fix some errors and inconsistency to the "Basics of Coding" Page _(Sorry :()_
- Renamed "Control Functions" into "Game Control Functions"
- Overhual `Lua Script Examples` folder
- Organized some sections in "Variables" and "Game Control Functions" Pages

### 10.0.0 Version
- Improve "Basics of Coding" tutorial
- Move "Basics of Coding" into `Lua Coding Docs` folder
- Added "Library Methods"
- Added more more unmentioned functions in "Scripting & File Functions"
- Updated the `CONTRIBUTING` file
- Modified "Callback Templates", "Custom Sprites & Texts Functions", "Shader Functions", and "Value Setting & Getting Functions" Pages
- Revamp the `Lua Script Examples` folder (WIP)
- Overhual "General Functions", "Object Functions", "Scripting & File Functions", "Variable" Pages
- Orginazed The folders

### 9.0.0 Version
- Improve the Dialogue/Cutscene, Precaching, Shader Wiki pages.
- Added `getLuaObject()` Haxe Function.
- Did some small changes in Scripting/File examples mainly in Haxe Script/Haxe Functions.
- Re-order some functions in Dialogue/Cutscene mainly in Song Functions.
- Fix the error on Basics of Coding. _(Thank you [Rodney, Imaginative Person](https://github.com/RodneyAnImaginativePerson) for noticing it!!!)_
- Fix spelling/grammar errors.

### 8.0.0 Version
- Improve majority of pages description of functions and parameters.
- Moved the Set/Get Text Fonts to Custom Sprite/Texts. _(I legit don't know why I did this in the first place lol)_
- Reduced the long inserted text.
- Re-order some functions in Callback Templates.
- Added `.length` and `.offset` in Value Setting/Getting Functions.
- Added `loadGraphic()` function. _(Very important announcement lol)_
- Fix spelling/grammar errors.

### 7.0.0 Version
- Added Scripting & File Functions Page
- Improve Create Sprites/Text, Tween/Timers, Value Setting/Getting, General Pages.
- Move the Set/Get Text Fonts to Value Setting/Getting Page
- Fix spelling/grammar errors

### 6.0.0 Version
- Added more Callback Templates Functions
- Added Depracated Lua Function
- Added Lua Example Scripts
- Added Psych Engine API (WIP)
- Lessen unnecessary inserted text
- Fix spelling errors

### 5.0.0 Version
- Added more examples in Basics of Coding
- More unnecessary inserted text (Probrably will change in 6.0 Update)
- Fix spelling errors

### 4.0.0 Version
- Revamp the Callback Templates
- Added `Note` and `Warning` on the function descriptions cuz yea 
- Added more inserted text on the description
- Fix spelling errors

### 3.0.0 Version
- Added inserted text in every function description to make chunk of text important
- Finish the Shaders wiki page
- Revamp the Variable wiki page
- Fix spelling errors

### 2.0.0 Version
- Revamp the entire wiki, including new function descriptions and spelling corrections.

### 1.0.0 Version
- Added wiki source code