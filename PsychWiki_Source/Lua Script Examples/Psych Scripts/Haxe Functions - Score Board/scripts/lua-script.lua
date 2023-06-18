local function getTextFileContent(path)
     file = io.open(path)
     content = ''
     for line in file:lines() do  
          content = content .. line .. '\n'
     end
     return stringSplit(content, '//===//')
end

function onCreatePost()
     addHaxeLibrary('Paths')
     addHaxeLibrary('FlxG', 'flixel')
     addHaxeLibrary('FlxSprite', 'flixel')
     addHaxeLibrary('FlxText', 'flixel.text')
     runHaxeCode(getTextFileContent('mods/scripts/haxe-script.hx')[1])

     -- Good like trying to understand this lol
     local txtScrOffXGlo = {{}, {}, {}, {}, {}, {}, {}}
     local txtScrOffXVal = {0, 2, 6, 4, 2, 10.5, 9, -1, -2, -1}
     local txtScrOffYVal = {-20, -19, -25, -26, -28, -30, -28, -17, -18, -20}
     
     local function multTableVals(tabInd, setVal) 
          for k = 1, #txtScrOffXVal do
               table.insert(txtScrOffXGlo[tabInd], {setVal - txtScrOffXVal[k], txtScrOffYVal[k]})
          end
     end

     local tabInds = {1, 2, 3, 4, 5, 6, 7}
     local tabVals = {0, 50, 100, 150, 200, 250, 300}
     for valys = 1, math.max(#tabInds, #tabVals) do 
          multTableVals(tabInds[valys], tabVals[valys])
     end

     local function mergTableVals(tabInd)
          local result = ''
          for i = 1, 10 do
               result = result .. '['..table.concat(txtScrOffXGlo[tabInd][i], ', ')..'], '
          end
          return result:sub(1, #result - 2)
     end

     local insertVars = {
          mergTab1 = mergTableVals(1), mergTab2 = mergTableVals(2), mergTab3 = mergTableVals(3),
          mergTab4 = mergTableVals(4), mergTab5 = mergTableVals(5), mergTab6 = mergTableVals(6),
          mergTab7 = mergTableVals(7)
     }
     
     runHaxeCode(([[
          setVar('gays', $mergTab1, $mergTab2, $mergTab3, $mergTab4, $mergTab5, $mergTab6, $mergTab7)
     ]]):gsub('%$(%w+)', insertVars))
end

function onUpdateScore(miss)
     local stuff = {0, 0, 0, 0, 0, 0, 0}
     for words in tostring(getScore()):gmatch('%d') do
          table.insert(stuff, words)
     end
     local stuff_result = table.concat(stuff, ','):reverse():gsub('% ,', ', ')
     runHaxeCode([[ setVar('amgus', [ ]]..stuff_result..[[ ]); ]])
     runHaxeCode(getTextFileContent('mods/scripts/haxe-script.hx')[2])
end