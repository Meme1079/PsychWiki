getmetatable('').__concat = function(str, tab) -- basically '[[string]] .. {name = value}'
     for k,v in pairs(tab) do
         tab[k] = tostring(v):gsub('nil', 'null') -- bacause haxe
     end
     return str:gsub('%${(.-)}', tab)
end

function onCreatePost()
     addHaxeLibrary('FlxText', 'flixel.text')
     runHaxeCode([[
          var textDisplay = new FlxText(0, 0, 0, '${textContent}', 35, false);
          textDisplay.cameras = [${cameraType}];
          textDisplay.screenCenter();
          game.add(textDisplay);
     ]] .. {textContent = 'This is a random text', cameraType = 'game.camHUD'})
end