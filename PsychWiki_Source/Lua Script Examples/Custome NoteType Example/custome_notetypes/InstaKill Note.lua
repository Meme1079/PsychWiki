function onCreate()
     for i = 0, getProperty('unspawnNotes.length') - 1 do -- Get every unspawn notes and subtracts it with 1
          if getPropertyFromClass('unspawnNotes', i, 'noteType') == 'InstaKill Note' then -- Checks if the notetype is InstaKill Note 
               setPropertyFromGroup('unspawnNotes', i, 'texture', 'Instakill_Note_Assets')
               setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '-500')

               if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then -- Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true) -- Miss has no penalties
			end
          end
     end
end