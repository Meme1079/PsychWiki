# Functions
### tostring(convert:Int|Boolean)
### tonumber(convert:String, ?base:Int)
### type(check:Any)
### load(code:Sttring)
### select(min:Int, list:Array)
### unpack(list:Array, ?min:Int, ?max:Int)
### pairs(iterate:Array)
### ipairs(iterate:Array)
### next(iterate:Array, ?nextKey:Int|String)
### error(?message:String)
### pcall(func:Function, ...args:Any)
### xpcall(func:Function, message:String, ...args:Any)

***

# Properties
### _G
The Global Variable `_G` is special type of table dictionary that holds the global environment. This allows you to insert variables and functions across all of your Lua scripts.

But unfortunately doesn't work why? idk, there are alternatives to Global Variable `_G` such as `setVar()` and `setOnLuas()` functions. The only thing its used for getting multiple global variables from a loop and modify the values easily.

Example:
```lua
function onCreate()
     myGlobalVar0, myGlobalVar1 = 183, 231
     myGlobalVar2, myGlobalVar3 = 963, 263
     for nummys = 0, 3 do
          debugPrint(_G['myGlobalVar' .. nummys])         -- will print > '183, 231, 963, 263'
          debugPrint(_G['defaultPlayerStrumX' .. nummys]) -- will print > '732, 844, 956, 1068'
     end 
end
```

### _VERSION
A global variable that contains the current version of Lua. If don't know what version is it, it's `5.1`.