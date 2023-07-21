local Sprite = require('scripts/classes/Sprite')

local graphicStuff = Sprite:new('graphicStuff', nil, {0, 0})
function onCreate()
     graphicStuff:addGraphic({500, 500}, 0x000000)
     screenCenter('graphicStuf', 'XY')
     graphicStuff:remove()
end