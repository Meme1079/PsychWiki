-- string         > "JsonData":% *"(.-)"% *,?
-- int            > "JsonData":% *(%d+)% *,?
-- float          > "JsonData":% *(%d+%.%d+)% *,?
-- boolean        > "JsonData":% *(%a+)% *,?
-- nil            > "JsonData":% *(nil)% *,?
-- object         > "JsonData":% *{(.-)}% *,?
-- array          > "JsonData":% *%[(.-)%]% *,?
-- array (nested) > "JsonData":% *%[(%[.-%])%]% *,?

local function getTextFileContent(path) -- gets any file but we're getting the json file
     local file = io.open(path)
     local content = ''
     for line in file:lines() do -- checks every line inside of a file
          content = content .. line .. '\n'
     end
     return ({content:gsub('null', 'nil')})[1] -- replaces null to nil becuase we're in lua
end

local function toboolean(str)
     if str == 'true' then
         return true
     end
     return false
end

local myJson = getTextFileContent('mods/scripts/homo.json')
function onCreatePost()
     local opacityHUD = myJson:match('"myFloat":% *(%d+%.%d+)% *,?')
     local flipXBF    = myJson:match('"myBool":% *(%a+)% *,?')

     setProperty('camHUD.alpha', opacityHUD)
     setProperty('boyfriend.flipX', toboolean(flipXBF))
end

--[==[
function onCreate()
     local stringJson = myJson:match('"myString":% *"(.-)"% *,?')
     local intJson    = myJson:match('"myInt":% *(%d+)% *,?')
     local floatJson  = myJson:match('"myFloat":% *(%d+%.%d+)% *,?')
     local boolJson   = myJson:match('"myBool":% *(%a+)% *,?')
     local nilJson    = myJson:match('"myNil":% *(nil)% *,?')

     debugPrint(stringJson) -- will print 'JSON Parser allows you to parse and transfer JSON Data inside a script'
     debugPrint(intJson)    -- will print '10'
     debugPrint(floatJson)  -- will print '0.5'
     debugPrint(boolJson)   -- will print 'true'
     debugPrint(nilJson)    -- will print 'nil'

     -- Arrays --

     local arrayJson        = myJson:match('"myArray": *%[(.-)%]% *,?')
     local arrayNestedJson1 = myJson:match('"myNestedArray": %[(%[.-%])%],?'):match('% *%[(.-)%]% *,?', 1)
     local arrayNestedJson2 = myJson:match('"myNestedArray": %[(%[.-%])%],?'):match('% *%[(.-)%]% *,?', 2)

     debugPrint(arrayJson)        -- will print '"string", 360, 0.9, false, nil'
     debugPrint(arrayNestedJson1) -- will print '0, 50'
     debugPrint(arrayNestedJson2) -- will print '230, 140'

     -- Objects --

     local objectJson1 = myJson:match('"myObject1":% *{(.-)}% *,?')
     local objectJson2 = myJson:match('"myObject2":% *{(.-)}% *,?'):match('"hideGirlfriend":% *(%a+)% *,?')
     local objectJson3 = myJson:match('"myObject3":% *{(.-)}% *,?'):match('"PlayerPos":% *%[(.-)%]% *,?')

     debugPrint(objectJson1) --[=[ will print '
          "hideGirlfriend": true,
          "cameraSpeed": 1,
          "PlayerPos": [[0, 20], [45, 23]]
     ']=]

     debugPrint(objectJson2)                              -- will print 'true'
     debugPrint(objectJson3:match('% *%[(.-)%]% *,?', 1)) -- will print '0, 20'
end
]==]