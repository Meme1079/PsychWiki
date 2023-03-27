# Introduction
When contrubuting this repostory you must abide these rule and follow the formating.

# Rules
1. The subject must be 100% related to Psych Engine not other engines. This repository is to document missing stuff not mentioned on the wiki. If you did not abide this you have low common sence and iq.
2. If you're adding a lua function that is in `FunkinLua.hx` please check if the lua function currently exist in the current Psych Engine. If it doesn't existed don't add it.
3. The Lua version that Psych Engine is using is `5.1`. So please don't add lua functions above or below `5.1`. 
4. If you're doing a useless pull request/issue I will mark it as `invalid`. I don't even know why you're trolling this repository there are less people to troll here.
5. And Lastly follow the format shown below becuase i said so. _(such a good responce 😎)_

# Formating
## Defualt Function Format:
````md
### functionName(parName1:Type, ?parName2:Type, parName3:Type = Value, ?parName4:Type = Value, #parName5:Type)
Function decription. _(Your dumb comments, this is optional)_

> **Note**: _This is optional, use this if you want to inform something on the parameters._
> **Warning**: _This is optional, use this if you there is something really important to do in parameters._

- `parameter1` - Description. _(Your dumb comments, this is optional)_
- `parameter2` - An optional parameter, Description.
- `parameter3` - An optional parameter, Description; Defualt value: `value`.
- `parameter4` - An optional parameter, Description; Defualt value: `value`.
- `parameter5` - An infinite parameter, Description. <!-- If the parameter is an infinite type -->

Example:
```lua
-- stupid code of yours
```

````

## Defualt Group Format:
```md
# Group Name Function
### functionName1(parameters)
### functionName2(parameters)
### functionName3(parameters)

***

# Another Group Function