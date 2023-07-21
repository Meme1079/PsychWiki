local metatable = { -- normal use
     __concat = function(tab1, tab2)
          local tab1 = table.concat(tab1, ', ')
          local tab2 = table.concat(tab2, ', ')
          return stringSplit(tab1..', '..tab2)
     end,
     __unm = function(tab1)
          local result = {}
          for i = 1, #tab1 do
               result[i] = -tab1[i]
          end
          return result
     end,
     __call = function(tab, operator, operand, isSave)
          local isSave = isSave or false
          if isSave == true then
               for i = 1, #tab do
                    tab[i] = load('return '..tab[i]..operator..operand)()
               end
          end
         
          local result = {}
          for i = 1, #tab do
               result[i] = load('return '..tab[i]..operator..operand)()
          end
          return result
     end
}

function getObject(tag) -- unique use
	return setmetatable({tag = name}, {
          __index = function(tab, index)
               return getProperty(tab.name.."."..index)
          end,
          __newindex = function(tab, index, value)
               setProperty(tab.name.."."..key, value)
          end
     })
end

local testTable1 = {23, 12, 83}
local testTable2 = {true, true, false}
setmetatable(testTable1, metatable)
setmetatable(testTable2, metatable)
function onCreatePost()
     local boyfriend = getObject('boyfriend')
     boyfriend.alpha = 0.3
     boyfriend.angle = 90

     for k,v in pairs(testTable1 .. testTable2) do
          debugPrint(v) -- will print > [23, 12, 83, true, true, false]
     end
     for k,v in pairs(testTable1('/', 2)) do
          debugPrint(v) -- will print > [11.5, 6, 41.5]
     end
end