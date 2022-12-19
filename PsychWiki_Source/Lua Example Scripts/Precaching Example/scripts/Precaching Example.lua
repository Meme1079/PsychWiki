function onCreate()
     addCharacterToList('dad', 'boyfriend')
     addCharacterToList('boyfriend', 'boyfriend')
     addCharacterToList('pico-player', 'boyfriend')
     addCharacterToList('mom', 'boyfriend')
end

function goodNoteHit(id, direction, noteType, isSustainNote)
     if direction == 0 then
          triggerEvent('Change Character', 'boyfriend', 'dad')
     elseif direction == 1 then
          triggerEvent('Change Character', 'boyfriend', 'boyfriend')
     elseif direction == 2 then
          triggerEvent('Change Character', 'boyfriend', 'pico-player')
     elseif direction == 3 then
          triggerEvent('Change Character', 'boyfriend', 'mom')
     end
end