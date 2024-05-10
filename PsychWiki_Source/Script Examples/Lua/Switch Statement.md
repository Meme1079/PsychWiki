<details><summary><b>Switch Statement (Straight to the Point):</b></summary>
<p>

```lua
function switch(value)      -- calling operation (); first argument value
     return function(cases) -- calling operation (); "second" argument table
          if cases[value] or cases.default then -- checks if any cases or default case exists
               return (cases[value] or cases.default)()
          end
          return -- if not, return nothing
     end
end

local color = ''
switch (dadName) {
     dad     = function() color = 'ff0000' end,
     pico    = function() color = '00ff00' end,
     default = function() color = '00ffff' end
}
cameraFlash('camHUD', color, 2, true)
```

</p>
</details>

# About

***

# Functionality


***

# Usage