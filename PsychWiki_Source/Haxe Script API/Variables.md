# Application
| Variables 	| Description 	| Type 	|
|---	|---	|---	|
| `buildTarget` 	| The current build target (device) of Psych Engine. 	| `String` 	|

***

# Custom Substate
| Variables 	| Description 	|
|---	|---	|
| `customSubstate` 	| The current opened custom substate instance. If none are open, returns: `null` 	|
| `customSubstateName` 	| The name of the current opened custom substate. If none are open, returns: `unamed` 	|

***

# Debugging
| Variables 	| Description 	| Type 	|
|---	|---	|---	|
| `Function_Continue` 	| Enables the event callbacks functionality. 	| `String` 	|
| `Function_Stop` 	| Disables the event callbacks functionality. 	| `String` 	|
| `Function_StopLua` 	| Disables the event callbacks functionality, only in Lua. 	| `String` 	|
| `Function_StopHScript` 	| Disables the event callbacks functionality, only in HScript. 	| `String` 	|
| `Function_StopAll` 	| Disables the event callbacks functionality, only both in Lua and HScript. 	| `String` 	|