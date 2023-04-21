local function toHex(red, green, blue)
     local RanInts = {getRandomInt(0, 255), getRandomInt(0, 255), getRandomInt(0, 255)}
     local red, green, blue = red or RanInts[1], green or RanInts[2], blue or RanInts[3] -- dont delete
     local function min_to_max(par)
          if par >= 255 then
               return 255
          elseif par <= 0 then
               return 0
          end
          return par
     end

     local rgb = {({math.modf(red)})[1], ({math.modf(green)})[1], ({math.modf(blue)})[1]}
     return ('%02x%02x%02x'):format(min_to_max(rgb[1]), min_to_max(rgb[2]), min_to_max(rgb[3]))
end

local num_red, num_green, num_blue = 0, 0, 0
local amgus = 0
local colorPerSecond = 0.5
function onUpdatePost(elapsed)
     if amgus == 0 then
          if num_green <= 255 then
               num_green = num_green + colorPerSecond
          end
          if num_green >= 255 then
               amgus = 1
          end
     elseif amgus == 1 then
          if num_red >= 0 then
               num_red = num_red - colorPerSecond
          end
          if num_red <= 0 then
               amgus = 2
          end
     elseif amgus == 2 then
          if num_blue <= 255 then
               num_blue = num_blue + colorPerSecond
          end
          if num_blue >= 255 then
               amgus = 3
          end
     elseif amgus == 3 then
          if num_green >= 0 then
               num_green = num_green - colorPerSecond
          end
          if num_green <= 0 then
               amgus = 4
          end
     elseif amgus == 4 then
          if num_red <= 255 then
               num_red = num_red + colorPerSecond
          end
          if num_red >= 255 then
               amgus = 5
          end
     elseif amgus == 5 then
          if num_blue >= 0 then
               num_blue = num_blue - colorPerSecond
          end
          if num_blue <= 0 then
               amgus = 0
          end
     end

     local rgbs = toHex(num_red, num_green, num_blue)
     setTextColor('scoreTxt', rgbs)
     setTextColor('timeTxt', rgbs)
     setTextColor('botplayTxt', rgbs)

     setHealthBarColors(rgbs, rgbs)
     setTimeBarColors(rgbs)
end