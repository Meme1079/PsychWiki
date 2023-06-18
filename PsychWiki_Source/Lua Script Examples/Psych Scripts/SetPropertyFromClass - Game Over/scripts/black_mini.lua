-- function created by Mayo78
local function setPos(obj, pos)  -- concatenates setProperty x and y
     if pos[1] ~= nil then -- makes pos parameter acts like a table
          setProperty(obj..'.x', pos[1])
     end
     if pos[2] ~= nil then
          setProperty(obj..'.y', pos[2]) 
     end
end

local function getPos(obj)
     return {getProperty(obj..'.x'), getProperty(obj..'.y')}
end

local function setPropertyVersionFromClass(class, var, value)
     local sup1, sup2 = '', ''
     if version > '0.7.0' then
          sup1, sup2 = 'backend.', 'data.' 
     end
     return setPropertyFromClass(sup1..class, sup2..var, value);
end

local function getPropertyVersionFromClass(class, var)
     local sup1, sup2 = '', ''
     if version > '0.7.0' then
          sup1, sup2 = 'backend.', 'data.' 
     end
     return getPropertyFromClass(sup1..class, sup2..var);
end

function onCreate()
     addCharacterToList('black-mini', 'boyfriend') -- lag prevention
     
     if getPropertyVersionFromClass('PlayState', 'isPixelStage') == true then
          setPropertyVersionFromClass('GameOverSubstate', 'characterName', 'black-mini');
          setPropertyVersionFromClass('GameOverSubstate', 'deathSoundName', 'loss-defeat');     -- file goes inside sounds/ folder
          setPropertyVersionFromClass('GameOverSubstate', 'loopSoundName', 'gameover_v4_LOOP'); -- file goes inside music/ folder
          setPropertyVersionFromClass('GameOverSubstate', 'endSoundName', 'gameover_v4_END');   -- file goes inside music/ folder
     end  
end

local function setStageBlack()
     local blackMiniYcords = 0
     if curStage == 'stage' or curStage == 'spooky' or curStage == 'mall' then
          blackMiniYcords = getPos('boyfriend')[2] + 100
     elseif curStage == 'philly' or curStage == 'mallEvil' then
          blackMiniYcords = getPos('boyfriend')[2] + 90
     elseif curStage == 'limo' then
          blackMiniYcords = getPos('boyfriend')[2] + 70
     elseif curStage == 'tank' then
          blackMiniYcords = getPos('boyfriend')[2] + 130
     end
     
     setPos('boyfriend', {getPos('boyfriend')[1], blackMiniYcords})
end

function onCreatePost()
     triggerEvent('Change Character', 'BF', 'black-mini')
     setStageBlack()
end

local function checkIfTankStage()
     if curStage ~= 'tank' then
          return 'errrmm not tank stage'
     end
     if mustHitSection ~= true then
          return 'errrmm not true'
     end
     if version > '0.7.0' then -- for backwards compatability
          setProperty('camGame.scroll.x',  570)
     end
          
     setProperty('camFollowPos.y', 570)
end

function onUpdatePost(elapsed)
     checkIfTankStage()
end

function onEvent(eventName, value1, value2)
     if eventName == 'Hey!' and boyfriendName == 'black-mini' then
          playAnim('boyfriend', 'idle', true)
     end
end