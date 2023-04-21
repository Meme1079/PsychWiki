function onCreate()
     -- A basic text nothing else
     makeLuaText('myTagText1', 'A funny text', 0, 0, 0) -- Initializes the text
     addLuaText('myTagText1')                           -- Adds the text inside the game

     -- Text with three arguments; "width, x, y"
     makeLuaText('myTagText2', 'Another funny text', 10, 50, 100)
     addLuaText('myTagText2')

     -- Text with set text properties
     makeLuaText('myTagText3', 'Ewww a text', 0, 0, 150)
     setTextFont('myTagText3', 'PUSAB___') -- changes the font into 'pusab'
     setTextColor('myTagText3', 'ffff00')  -- changes the color into 'yellow'
     addLuaText('myTagText3')

     -- getting text properties
     debugPrint(getTextString('scoreTxt'))  -- gets the content of the 'score bar'
     debugPrint(getTextWidth('myTagText2')) -- gets the current width of 'myTagText2'
     debugPrint(getTextSize('myTagText1'))  -- gets the current size of 'myTagText1'
end