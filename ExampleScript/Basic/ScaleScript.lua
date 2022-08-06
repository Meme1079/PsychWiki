function onMoveCamera(focus)
	if focus == 'boyfriend' then
		-- called when the camera focus on boyfriend
		if getPropertyFromObject('boyfriend', 'y') >= 450 then
			doTweenX('scaleTweenX', 'boyfriend.scale', 1.5, 1, 'elasticInOut');
			doTweenY('scaleTweenY', 'boyfriend.scale', 1.5, 1, 'elasticInOut');
			doTweenY('bfTweenY', 'boyfriend', getPropertyFromObject('boyfriend', 'y') - 70, 1, 'elasticInOut');
		end
	elseif focus == 'dad' then
		-- called when the camera focus on dad
		if getPropertyFromObject('boyfriend', 'y') <= 450 then
			doTweenX('scaleTweenX', 'boyfriend.scale', 1, 1, 'elasticInOut');
			doTweenY('scaleTweenY', 'boyfriend.scale', 1, 1, 'elasticInOut');
			doTweenY('bfTweenY', 'boyfriend', getPropertyFromObject('boyfriend', 'y') + 70, 1, 'elasticInOut');
		end
	end
end
