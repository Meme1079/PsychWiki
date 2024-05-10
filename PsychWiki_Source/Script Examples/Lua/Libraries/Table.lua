local table = table

function table.freeze(tab)
     return setmetatable(tab, {
          __newindex = function(self, key, value)
               debugPrint("Lua Error: Attempt to update a read-only table", 'FF0000'); error('', 2)
          end,
          __frozen = true
     })
end

function table.isFrozen(tab)
     return ({pcall(function() 
          return getmetatable(tab).__frozen
     end)})[1]
end

return table