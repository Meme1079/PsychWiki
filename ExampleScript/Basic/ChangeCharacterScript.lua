function onCreate()
	-- triggered when the lua file is started
	addCharacterToList('pico-player', 'boyfriend');
	addCharacterToList('bf-christmas', 'boyfriend');
	addCharacterToList('bf', 'boyfriend');
	addCharacterToList('dad', 'dad');
	addCharacterToList('parents-christmas', 'dad');
	addCharacterToList('bf-pixel-opponent', 'dad');
end

function onKeyPress(key)
     if key == 0 then
		triggerEvent('Change Character', 0, 'bf-christmas');
		triggerEvent('Change Character', 1, 'parents-christmas');
	elseif key == 1 then
		triggerEvent('Change Character', 0, 'bf');
		triggerEvent('Change Character', 1, 'dad');
	elseif key == 2 then
		triggerEvent('Change Character', 0, 'bf-car');
		triggerEvent('Change Character', 1, 'mom-car');
	elseif key == 3 then
		triggerEvent('Change Character', 0, 'pico-player');
		triggerEvent('Change Character', 1, 'bf-pixel-opponent');
	end
end
