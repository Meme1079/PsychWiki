function math.factorial(num)
     if num >= 66 then
          return 'Maximum Integer value reach!'
     end

     local sum = 1
     for i = 2, num do 
          sum = sum * i 
     end
     return sum
end
 
function math.root(radicand, index)
     local index = index or 2
     return radicand^(1/index)
end
 
function math.round(num, dp) -- i stole this
     local mult = 10^(dp or 0);
     return math.floor(num * mult + 0.5)/mult;
end

function math.type(num)
     local strNum = tostring(num)
     return strNum:match('%-?%d+%.%d+') and 'float' or 'integer'
end
 
function math.trunc(num)
     return ({math.modf(num)})[1]
end
 
function math.sign(num)
     return num == 0 and 0 or (num < 0 and -1 or 1)
end