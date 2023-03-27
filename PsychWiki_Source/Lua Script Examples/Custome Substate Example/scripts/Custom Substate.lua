function onSongStart()
	runTimer('start break', 0.2);
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'start break' then
		openCustomSubstate('littleBreak', true);
	end
end

function onCustomSubstateCreate(tag)
	if tag == 'littleBreak' then
		runHaxeCode([[
			FlxG.sound.play(Paths.sound('confirmMenu')); // Plays the confirmMenu
			bgSpr = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, 0xFF000000); // MakeGrahic duh
			bgSpr.alpha = 0.4; // set the opacity into 0.4
			CustomSubstate.instance.add(bgSpr); // Adds the sprite

			new FlxTimer().start(1.0, function(tmr)
			{
				FlxG.sound.play(Paths.sound('cancelMenu'));
				game.closeSubState(); // Closes the substate
			});
		]])
	end
end