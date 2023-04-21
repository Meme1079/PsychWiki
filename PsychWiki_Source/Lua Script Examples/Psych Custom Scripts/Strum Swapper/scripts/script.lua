function onCreate()
     makeLuaText('you text', 'YOU', nil, 920, 200)
     setTextSize('you text', 35)
     setObjectCamera('you text', 'camHUD')
     addLuaText('you text', true)
end

local function onChange(bool) 
     if not middlescroll then
          for i = 0, 3 do
               local setPlayerStrumX   = _G['defaultPlayerStrumX'..i] + i - 3
               local setOpponentStrumX = _G['defaultOpponentStrumX'..i] + i - 3
               if bool then 
                    setPropertyFromGroup('opponentStrums', i, 'x', setPlayerStrumX) -- better method
                    setPropertyFromGroup('playerStrums', i, 'x', setOpponentStrumX)
               else
                    setPropertyFromGroup('opponentStrums', i, 'x', setOpponentStrumX)
                    setPropertyFromGroup('playerStrums', i, 'x', setPlayerStrumX)
               end
          end
     end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
     if not isSustainNote then
          local a = getRandomInt(1, 12)
          if a <= 6 then
               onChange(true)
               setProperty('you text.x', 280)
          else
               onChange(false)
               setProperty('you text.x', 920)
          end
     end
end
