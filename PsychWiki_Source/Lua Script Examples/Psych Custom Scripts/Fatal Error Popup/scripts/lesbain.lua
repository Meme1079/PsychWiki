function onCreate()
     setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);
     precacheImage('error_popups')
end

local Spawn = false
local PopUpbool = true
local num = 1
function onBeatHit()
     if getRandomBool(35) then
          onGeneratePopUp(PopUpbool, RanX, RanY)
          num = num + 1
     end
end

function onUpdatePost(elapsed)
     RanX = getRandomInt(-68, 775)
     RanY = getRandomInt(-90, 423)
     Limit = 20

     if mouseClicked('left') then -- when pressed
          objectPlayAnimation('popUp'..num, 'glitch')
     elseif mouseReleased('left') then -- when released
          removeLuaSprite('popUp'..num, false)     
          num = num - 1
     end

     if num <= 0 then -- if below 0
          num = 1
     end

     if num >= Limit then
          PopUpbool = false
          num = Limit
     else
          PopUpbool = true
     end
end

function onGeneratePopUp(bool, x, y)
     Spawn = bool
     if Spawn then
          onCreatePopUp('popUp'..num, 1.9, 1.8, x, y)
          Spawn = false
     end
end

function onCreatePopUp(tag, scaleX, scaleY, x, y)
     makeAnimatedLuaSprite(tag, 'error_popups', x, y)
     objectPlayAnimation(tag, 'glitch')
     addAnimationByPrefix(tag, 'glitch', 'idle', 24, false)
     setObjectCamera(tag, 'camOther')
     setProperty(tag..'.antialiasing', false)
     scaleLuaSprite(tag, scaleX, scaleY)
     addLuaSprite(tag, true)
end