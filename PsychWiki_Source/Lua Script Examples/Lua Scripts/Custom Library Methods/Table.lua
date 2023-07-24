function table.find(tab, value)
     for k,v in pairs(tab) do
          if v == value then return k end
     end
end

function table.move(tab, startPos, endPos, dest, ind)
     local ind = ind or 1
     for i = startPos, endPos do
          table.insert(dest, ind, tab[i])
     end
     return dest
end
 
function table.clone(tab)
     local result = {}
     for k,v in pairs(tab) do
          result[k] = v
     end
     return result
end

function table.sub(tab, startPos, endPos)
     local faker = {}
     for i = startPos, endPos or #tab do
          table.insert(faker, tab[i])
     end
     return faker
end

function table.move(tab, startPos, endPos, dest, ind)
     local ind = ind or 1
     for i = startPos, endPos do
         table.insert(dest, ind, tab[i])
     end
     return dest
end

function table.merge(tab1, tab2)
     local subTab1 = table.concat(tab1, ', ')
     local subTab2 = table.concat(tab2, ', ')
     return stringSplit(tab1..', '..tab2, ', ')
end
 
function table.filter(tab, func)
     local result = {}
     for i = 1, #tab do
          if func(tab[i]) == true then
               table.insert(result, tab[i])
          end
     end
     return result
end