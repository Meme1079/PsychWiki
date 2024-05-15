# Object-Oriented Programming
Object-Oriented Programming _(OOP)_ is a style of programming characterized by a system of a collection of objects, which contains both methods and data inside of classes. And it is the most widely used programming languages such as C, Javascript, Pyhton, Haxe, etc. While Lua isn't really a object-oriented language and doesn't have any built-in concept of classes. 

However you can implement this by the use of tables. In Lua a table is an "object" becuase they have a state and an identity that is independent of their values. For instance, two objects with the same value are differenct to each-other, while an object can have different values but it is always the same object.

There are some advantages when using OOP, these includes modularity, reusability, code maintenance, simplified problem-solving ability. etc. But there are some disadvantages due to steeper learning curve, increased complexity, and maybe performance issues.

***

# Self
The `self` keyword is special keyword which is the central point in OOP, it refers to the current object of a class within a method or constructor. It is generally used to get instance attributes, which are attributes defined within the constructor, and to get its own methods. To use within a method to manipulate, to apply, and to calculate the given instance attributes.

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
A constructor is a special type of method within a class. It is used to initialize the object's attributes and setting up the object's state. It accepts the passed arguments from a object so that the constructor to required the set of member variables. Which are the parameters for the constructor to define the class definiton.

## Methods

## Objects

***

# Inheritance

***

# Proper Usage
<!-- But it should only be used when you have a complex system with multiple methods that require a lot of interaction between different objects. It is also best for reusability and modularity becuase of the creation and reusing of objects. -->
