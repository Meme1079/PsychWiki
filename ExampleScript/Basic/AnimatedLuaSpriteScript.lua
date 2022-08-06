-- Lua stuff
function onCreate()
	-- triggered when the lua file is started

	-- create a lua sprite called "sexualintercourse"
	makeAnimatedLuaSprite('sexualintercourse', 'characters/DADDY_DEAREST', -100, 100);
	addAnimationByPrefix('sexualintercourse', 'first', 'Dad idle dance', 24, false);
	objectPlayAnimation('sexualintercourse', 'first');
	addLuaSprite('sexualintercourse', false); -- false = add behind characters, true = add over characters
end

-- Gameplay interactions
function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation('sexualintercourse', 'first');
	end
end

function onStepHit()
	-- triggered 16 times per section
	setProperty('sexualintercourse.scale.x', getProperty('sexualintercourse.scale.x') + 0.01);
end

function onCountdownTick(counter)
	if counter % 2 == 0 then
		objectPlayAnimation('sexualintercourse', 'first');
	end
end
