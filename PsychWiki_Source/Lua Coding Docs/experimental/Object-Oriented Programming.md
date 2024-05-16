# Object-Oriented Programming
Object-Oriented Programming _(OOP)_ is a style of programming characterized by a system of a collection of objects, which contains both methods and data inside of classes. And it is the most widely used programming languages such as C, Javascript, Pyhton, Haxe, etc. While Lua isn't really a object-oriented language and doesn't have any built-in concept of classes. 

However you can implement this by the use of tables. In Lua a table is an "object" becuase they have a state and an identity that is independent of their values. For instance, two objects with the same value are differenct to each-other, while an object can have different values but it is always the same object.

There are some advantages when using OOP, these includes modularity, reusability, code maintenance, simplified problem-solving ability. etc. But there are some disadvantages due to steeper learning curve, increased complexity, and maybe performance issues.

***

# Self
The `self` keyword is special keyword which is the central point in OOP, it refers to the current object of a class within a method or constructor. It is generally used to get instance attributes, which are attributes defined within the constructor, and to get its own methods from the class itself. To use within a method to manipulate, to apply, and to calculate the given instance attributes.

Most object-oriented languages have the `self` keyword partially hidden so that it does not have to be declared in a method's parameters or included into the method's first argument. Fortunately, Lua can disguise this with the colon operator <kbd>:</kbd>. It adds an additional hidden parameter in a method declaration and a hidden argument in a method call, namely the `self` keyword, making it more convenient and less annoying. For instance: `Class.method(self, args)` to `Class:method(args)`.

Example:
```lua
local Rectangle = {length = 100, width = 150}

function Rectangle:area()
     return self.length * self.width
end

function onCreate()
     debugPrint(Rectangle:area()) --> 15000
end
```

***

# Classes
Classes is an extensible code-template for creating objects, providing a initial values for member variables and implementations of behavior like methods. To define a class we use a table obviously especially a `local` type, we'll name it `Sound` becuase we're making a class for the sound functions as an example duh.

In this example we're putting this on a separate Lua file, a module to be exact. While you can put this in any code, I'm still going to do it becuase for organization. But hey it's your option to whether or not to make it a module or not.

Example:
```lua
local Sound = {} -- our class, so amazing

return Sound
```

## Constructor
A constructor is a special type of method with a class the is invoked whed a new object is created. It is used to assign the object's attributes to the instance attributes. By getting the specified amount of arguments from an object. So that the class can get the instance attributes to use within its methods to manipulate, to apply, and to calculate it.

To define a constructor, create a method within the class called `new` for our method. With the constructor's parameters for the class to utilize it. Before we can assign the object's attributes to the instance attributes, we must create a local variable that contains a metatable. 

The first argument should be an empty table, and the second should be a metacontent with a `__index` metamethod containing the class itself; Example: `setmetatable({}, {__index = self})`. Now we can insert constructor's parameters to the instance attributes for the class to utilize. Lastly return the table that contains a metatable to distribute throughout the class.

Example:
```lua
function Sound:new(sound, volume, tag) -- constructor
     local self = setmetatable({}, {__index = self})
     self.sound  = sound   -- instance attribute
     self.volume = volume
     self.tag    = tag

     return self -- distribute throughout the class
end
```

<details><summary>Example (Full Code):</summary>
<p>

```lua
local Sound = {} -- our class, so amazing

function Sound:new(sound, volume, tag) -- constructor
     local self = setmetatable({}, {__index = self})
     self.sound  = sound   -- instance attribute
     self.volume = volume
     self.tag    = tag

     return self -- distribute throughout the class
end

return Sound
```

</p>
</details>

## Methods
A method is basically the equivalent of a function in OOP, a sequence of code that are designed to perform a specific task. The difference is that a method can get instance attributes to maniuplate with arguments it recieves. In addition it must be with an associated object when calling a method.

In this example, we added the `play()` method to play a sound. It also determins if you want to play a sound or music by the `soundType` parameter. Additionally it includes the instance attributes to set the sound/music function to fill in the given arguments.

Example:
```lua
function Sound:play(soundType) -- method
     local soundType = soundType == false and true or false -- dafault value: false
     if soundType == false then
          playSound(self.sound, self.volume, self.tag)
          return -- stops the code execution at the bottom
     end
     musicSound(self.sound, self.volume, self.tag)
end
```

<details><summary>Example (Full Code):</summary>
<p>

```lua
local Sound = {} -- our class, so amazing

function Sound:new(sound, volume, tag) -- constructor
     local self = setmetatable({}, {__index = self})
     self.sound  = sound   -- instance attribute
     self.volume = volume
     self.tag    = tag

     return self -- distribute throughout the class
end

function Sound:play(soundType) -- method
     local soundType = soundType == false and true or false -- dafault value: false
     if soundType == false then
          playSound(self.sound, self.volume, self.tag)
          return -- stops the code execution at the bottom
     end
     musicSound(self.sound, self.volume, self.tag)
end

function Sound:remove() -- removes the instance attributes and object
     setmetatable(self, nil)
end

return Sound
```

</p>
</details>

## Objects
Objects are an instance, creating a copy of a class created with a specified amount of data to define. Each object has a unique state and behaviors which will differentiate each-other. In layman's terms, it's basically calling class, kinda like a function.

To get an object from a specified class, call the class' constructor method and pass in the specified amount of arguments; Example: `Class:new(args)`. This object should be held in a local variable; if you wish to use the class' method, call the local variable with the associated method; Example: `ClassVar:method(args)`.

Example:
```lua
local Sound = require 'mods.scripts.libraries.Sound'

local dingding = Sound:new('scrollMenu', 1)       -- first object
local boomboom = Sound:new('ANGRY_TEXT_BOX', 0.8) -- second object
function onCountdownTick(counter)
     if counter < 3 then
          dingding:play()   -- calling a method on an object
     else
          boomboom:play()
          boomboom:remove() -- removes any data from an object
     end
end
```

<details><summary>Path Reference:</summary>
<p>

```txt
mods
└─scripts
  ├─libraries
  │ └─Sound.lua
  └─script.lua
```

</p>
</details>

***

# Inheritance
Inheritance, often called a sub-class or child class is one the main concepts of OOP. It's a mechanism where a class is inherites from another class that shares its instance attributes and methods. It useful for code reuse and develops ties between classes, additionally it gives an ability to change the behaviors of a specified methods.

In other programming languages it is often defined with the `extends` keyword followed by the given class to inherite. In Lua, replace the class's own table with the inherit class. By calling the constructor method without passing the said amount of arguments, for it to work properly; Example: `local SubClass = SuperClass:new()`.

Now it inherits the inherited class, or super-class its instance attributes and methods. Meaning you can use the method from the super-class without declaring it, on a sub-class.


<details><summary>Parallelogram Class (Module):</summary>
<p>

```lua
local Parallelogram = {}
function Parallelogram:new(length, width)
     local self = setmetatable({}, {__index = self})
     self.length = length
     self.width  = width

     return self
end

function Parallelogram:intro()     -- method, will change on the sub-class
     return 'Parallelograms are cool'
end

function Parallelogram:perimeter() -- method, will inherit from the sub-class
     return 2 * (self.length + self.width)
end

return Parallelogram
```

</p>
</details>

<details><summary>Rectangle Class (Module):</summary>
<p>

```lua
local Parallelogram = require 'mods.scripts.libraries.Parallelogram' -- import class

local Rectangle = Parallelogram:new() -- inherit from the Parallelogram class
function Rectangle:new(length, width)
     local self = setmetatable({}, {__index = self})
     self.length = length
     self.width  = width

     return self
end

function Rectangle:intro() -- method, changed
     return 'Rectangles are better'
end

return Rectangle
```

</p>
</details>


Examples:
```lua
-- the super-class which the class Rectangle will inherit from
local Parallelogram = {}

-- the sub-class Rectangle is holding 'Parallelogram:new()'
-- now it get the instance attributes and methods from the super-class
-- click on the "widget" at the top too see further deatils
local Rectangle = Parallelogram:new()
```
```lua
local Parallelogram = require 'mods.scripts.libraries.Parallelogram'
local Rectangle     = require 'mods.scripts.libraries.Rectangle'

function onCreate()
     local shapelogram = Parallelogram:new(100, 150)
     debugPrint(shapelogram:intro())     -- Parallelograms are cool
     debugPrint(shapelogram:perimeter()) -- 500
     
     local shapect = Rectangle:new(30, 50)
     debugPrint(shapect:intro())         -- Rectangles are better
     debugPrint(shapect:perimeter())     -- 160
end
```

<details><summary>Path Reference:</summary>
<p>

```txt
mods
└─scripts
  ├─libraries
  │ ├─Parallelogram.lua
  │ └─Rectangle.lua
  └─script.lua
```

</p>
</details>


***

# Proper Usage
<!-- But it should only be used when you have a complex system with multiple methods that require a lot of interaction between different objects. It is also best for reusability and modularity becuase of the creation and reusing of objects. -->
