function onCreate()
     makeLuaText('getButt', 'Current Button Pressed: None', 0, 0, 0)
     setTextSize('getButt', 24)
     addLuaText('getButt')
end

function onUpdate(elapsed)
     if keyboardJustPressed('A') then
          setTextString('getButt', 'Current Button Pressed: A')
     elseif keyboardJustPressed('S') then
          setTextString('getButt', 'Current Button Pressed: S')
     elseif keyboardJustPressed('K') then
          setTextString('getButt', 'Current Button Pressed: K')
     elseif keyboardJustPressed('L') then
          setTextString('getButt', 'Current Button Pressed: L')
     end
end