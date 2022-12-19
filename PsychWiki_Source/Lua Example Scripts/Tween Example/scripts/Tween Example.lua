function onGameOverConfirm(retry)
     if retry then
          doTweenAngle('boyfriendRotate', 'boyfriend', 360 * 10, 5, 'cubeOut')
          doTweenX('boyfriendXshrink', 'boyfriend.scale', 0, 2, 'linear')
          doTweenY('boyfriendYshrink', 'boyfriend.scale', 0, 2, 'linear')
     end
end