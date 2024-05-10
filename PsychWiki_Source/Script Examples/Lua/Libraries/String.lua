local string = string

--- Splits a string by using a pattern
---@param self string The string to split
---@param delimiter string The pattern to split the string
---@return string
function string:split(delimiter)
     local result = {};
     for match in (self..delimiter):gmatch("(.-)"..delimiter) do
         table.insert(result, match);
     end
     return result;
end

--- Checks if the string begins with the specified pattern, returning `true` if detected
---@param self string The string to use
---@param startPattern string The starting pattern for the string to find
---@return string
function string:startsWith(startPattern)
     return self:match('^'..startPattern) and true or false
end

--- Checks if the string ends with the specified pattern, returning `true` if detected
---@param self string The string to use
---@param endPattern string The ending pattern for the string to find
---@return string
function string:endsWith(endPattern)
     return self:match(startPattern..'$') and true or false
end

--- Capitalize the first character of the string
---@return string
function string:upperAtStart()
     return self:sub(1,1):upper()..self:sub(2, #self)
end

--- Removes any whitespaces from a string
---@param self string The string to trim
---@param direction string The direcftion to trim `l` for left and `r` for right
---@return string
function string:trim(direction)
     local direct = direction ~= nil and direction:lower()
     if direction == 'l' then
          return self:gsub('^%s*', '')
     elseif direction == 'r' then
          return self:gsub('%s*$', '')
     end
     return self:gsub('%s*', '')
end

--- Pads a string; extends a string to a given length with the specified character(s)
---@param self string The string to pad
---@param length number The length of the padding
---@param direction string The direcftion to pad `l` for left and `r` for right
---@return string
function string:pad(length, pad, direction)
     local direct = direction ~= nil and direction:lower()
     local result = self
     for i = 1, length do
          if direction == 'l' then
               result = pad .. result
          elseif direction == 'r' then
               result = result .. pad
          else
               result = pad .. result .. pad
          end
     end
     return result
end

--- Counts the number of patterns in a given string
---@param self string The string to count the pattern
---@param pattern string The pattern to be counted on the given string
---@param startInd number An optional parameter, The starting position to start counting; Default value: 1
---@param endInd number An optional parameter, The starting position to end the counting
---@return string
function string:count(pattern, startInd, endInd)
     local startInd = startInd == nil and 1 or endInd
     local endInd   = endInd   == nil and math.huge or endInd

     local result = 0
     local index  = 0
     for found in self:gmatch(pattern) do
          index = index + 1
          if index >= startInd and index <= endInd then
               result = result + 1
          end
     end
     return result
end

--- Shorthand for "Interpolation", is a process substituting values of variables into placeholders in a string
--- This uses the `${variable}` format to insert variable's value inside the string
--- It uses two methods to use this function, it uses global variables or tables on the `template` parameter
---@param self string The string to interpolate with variables
---@param template string The template to reference the variables inside the string
---@return string
function string:interpol(template)
     local function deepCopy(original)
          local copy = ''
          for k,v in pairs(original) do
               if type(v) == "table" then
                    v = deepCopy(v)
               end
               copy = copy .. k..' = '..tostring(v)..', '
          end
          return '@LCBRACK'..copy:gsub('[,%s*]+@RCBRACK', ', '):sub(1, #copy - 2)..'@RCBRACK'
     end
     if type(template) == 'table' then
          local result = {}
          for k,v in next, template do
               if type(v) == 'table' then
                    result[k] = deepCopy(v)
               else
                    result[k] = tostring(v)
               end
          end
          return self:gsub('%${(.-)}', result):gsub('@LCBRACK', '{'):gsub('@RCBRACK', '}')
     end

     local captured = {}
     for temp in self:gmatch('%${.-}') do
          captured[#captured + 1] = temp:gsub('%${(.-)}', '\"..%1..\"')
     end
     local result = ''
     for k,v in next, template do
          result = self:gsub('%${.-}', v)
     end
     return load('return '..'"'..result..'"')()
end

return string