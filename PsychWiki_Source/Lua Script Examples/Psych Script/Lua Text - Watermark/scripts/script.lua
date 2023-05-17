function onCreatePost()
     makeLuaText('watermark', songName..' - '..difficultyName..' | Psych Engine v'..version)
     setObjectCamera('watermark', 'camHUD')
     addLuaText('watermark', true)
end