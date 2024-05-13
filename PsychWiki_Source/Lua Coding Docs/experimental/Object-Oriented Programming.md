# Object-Oriented Programming
Object-Oriented Programming _(OOP)_ is a style of programming characterized by a system of a collection of objects, which contains both methods and data inside of classes. And it is the most widely used programming languages such as C, Javascript, Pyhton, Haxe, etc. While Lua isn't really a object-oriented language and doesn't have any built-in concept of classes. 

However you can implement this by the use of tables. In Lua a table is an "object" becuase they have a state and an identity that is independent of their values. For instance, two objects with the same value are differenct to each-other, while an object can have different values but it is always the same object.

There are some advantages when using OOP, these includes modularity, reusability, code maintenance, simplified problem-solving ability. etc. But there are some disadvantages due to steeper learning curve, increased complexity, and maybe performance issues.

***

# Classes
Classes is an extensible code-template for creating objects, providing a initial values for member variables and implementations of behavior like methods. To define a class we use a table obviously especially a `local` type, we'll name it `Sound` becuase we're making a class for the sound functions as an example duh.

In this example we're putting this on a separate Lua file, a module to be exact. While you can put this in any code, I'm still going to do it becuase for organization. But hey it's your option to whether or not to make it a module or not.

Example:
```lua
local Sound = {} -- our class, so amazing

return Sound
```

## Contructor 
## Methods
## Objects

***

# Inheritance

***

# Proper Usage
<!-- But it should only be used when you have a complex system with multiple methods that require a lot of interaction between different objects. It is also best for reusability and modularity becuase of the creation and reusing of objects. -->
