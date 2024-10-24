# Mathematical Methods
### math.min(multi:Float...):Float
Finds the minumum number by searching through each argument passed until it finds one.

- `multi` - An infinite parameter, The multiple number arguments to find the minumum number.

Examples:
```lua
debugPrint( math.min(43, 34, 19, 34)    )    --> 19
debugPrint( math.min(1.34, 0.37, 94.34) )    --> 0.37
debugPrint( math.min(0x83, 0x8a, 0xff)  )    --> 131
```
```lua
debugPrint( math.min(-43, -34, -19, -34)   ) --> -43
debugPrint( math.min(-1.34, -0.37, -94.34) ) --> -94.34
debugPrint( math.min(-0x83, -0x8a, -0xff)  ) --> -255
```

### math.max(multi:Float...):Float
Finds the maximum number by searching through each argument passed until it finds one.

- `multi` - An infinite parameter, The multiple number arguments to find the maximum number.

Example:
```lua
debugPrint( math.max(43, 34, 19, 34)    )    --> 43
debugPrint( math.max(1.34, 0.37, 94.34) )    --> 94.34
debugPrint( math.max(0x83, 0x8a, 0xff)  )    --> 255
```
```lua
debugPrint( math.max(-43, -34, -19, -34)   ) --> -19
debugPrint( math.max(-1.34, -0.37, -94.34) ) --> -0.37
debugPrint( math.max(-0x83, -0x8a, -0xff)  ) --> -131
```

### math.floor(num:Float):Float
Rounds down a floating-point number to its nearest integer value.

- `num` - The number to round down closest integer number.

Example:
```lua
debugPrint( math.floor(93.73) ) --> 93
debugPrint( math.floor(54.23) ) --> 54
```

### math.ceil(num:Float):Float
Rounds up a floating-point number to its nearest integer value.

- `num` - The number to round up closest integer number.

Example:
```lua
debugPrint( math.floor(93.73) ) --> 94
debugPrint( math.floor(54.23) ) --> 55
```

### math.abs(num:Float):Float
The absolute value from a given number, distance of the number from zero `0`.

- `num` - The number to returns its absolute number.

Example:
```lua
debugPrint( math.abs(-47) ) --> 47
debugPrint( math.abs(47) )  --> 47
```

### math.sqrt(rad:Float):Float
The square root of the given number.

- `num` - The radicand of the given number.

Example:
```lua
debugPrint( math.sqrt(4) ) --> 2
debugPrint( math.sqrt(2) ) --> 1.4142135623731
```

### math.modf(num:Float):\<Int, Float\>
Returns the floating-point integral part (integer) and fractional part (decimal places).

- `num` - The floating-point to split into integral and fractional parts.

Example:
```lua
local int, frc = math.modf(364.36452)
debugPrint(int) --> 364
debugPrint(frc) --> 0.36452
```

### math.log(num:Float, ?base:Float = 2):Float
The logarithmic of a number to the base, inverse (opposite) of exponential. Which makes the base number is the exponent must be raised to produced the number. For an example, since $\log_{2}(8)=3$, its inverse equivalent is $2^3=8$.

> [!CAUTION]
> Logarithmics cannot have negative numbers and the base must be above one `1`. Remember it is the inverse of exponential, so if you're saying $\log_{2}(8)=n$ then its inverse is $2^n=-8$, which is impossible to do. If we try using base one `1` let's say $\log_{1}(5)=n$ its inverse is $1^5=n$, again impossible becuase $1^5$ is always equal to one `1`. <!-- removed italics due to a visiual bug -->

- `num` - The logarithmic of the given number to its base.
- `base` - An optional parameter, The logarithmic base number; Default value: `2`.

Example:
```lua
debugPrint( math.log(32, 2) ) --> 5.0
debugPrint( math.log(13, 2) ) --> 3.7004397181411
```

### math.log10(num:Float):Float
The logarithmic of a number to the base of ten `10`, the common logarithm.

- `num` - The logarithmic of the given number to the base ten `10`.

Example:
```lua
debugPrint( math.log10(1000) ) --> 3.0
debugPrint( math.log10(567)  ) --> 2.7535830588929
```

### math.random(?min:Int = 0, ?max:Int = 1):Float
Randomizes a number between the minimum to maximum numbers. It utilizes a Pseudo-Random Number Generator (PRNG), an mathematical algorithm that takes use of formulas. To produce a sequences of random numbers; utilizing a seed to initializing the PRNG. 

Since it's not truly "random", due to computer limiations. It will always return the exact same number sequences, even if you try restarting it will still generate the exact same number sequences. That's becuase it uses the same seed that the PRNG utilizes within that script.

> [!TIP]
> _If you want to generate an "actually" random number, you can either both use. The `getRandomInt()` function for integer numbers and `getRandomFloat()` function for floating-point numbers. Or use the `math.randomseed()` method to change its current seed to generate different random number sequences._

- `min` - An optional parameter, the minimum number value range to start randomizing; Default value: `0`.
- `max` - An optional parameter, the maximum number value range to end randomizing; Default value: `1`.

Example:
```lua
debugPrint( math.random()     ) --> 0.84018771676347
debugPrint( math.random(1, 6) ) --> 5
```

### math.randomseed(seed:Int):Int
Sets the seed of the pseudo-random number generator; equal seeds produce equal sequences of numbers.

> [!TIP]
> _Highly recommended to use `os.time()` method, this returns every second from the Unix Epoch Time, which initially starts at: `00:00:00 UTC on 1 January 1970`. Making the seed change every second thus making it actually random._

- `seed` - The specified seed to generate a new random number sequence.

Examples:
```lua
math.randomseed(103)
debugPrint( math.random(4, 6)  ) --> 5
debugPrint( math.random(1, 40) ) --> 37
```
```lua
math.randomseed(os.time())
debugPrint( math.random(4, 6)  ) --> 4
debugPrint( math.random(1, 40) ) --> 23
```

## Trigonometry Methods
### math.rad(deg:Float):Float
Converts a radians to degrees.

- `deg` - The degree number to convert to radians.

### math.deg(rad:Float):Float
Converts a degrees to radians.

- `rad` - The radian number to convert to degrees.

### math.sin(rad:Float):Float
Returns the sine of the number, given in radians.

- `rad` - The radians to calculate the sine value.

### math.cos(rad:Float):Float
Returns the cosine of the number, given in radians.

- `rad` - The radians to calculate the cosine value.

### math.tan(rad:Float):Float
Returns the tangent of the number, given in radians.

- `rad` - The radians to calculate the tangent value.

### math.asin(rad:Float):Float
Returns the arc (inverse) sine of the number, given in radians. Returns between $-\frac{\pi}{2}$ radians ($-90^\circ$ degrees) and $\frac{\pi}{2}$ radians ($90^\circ$ degrees).

- `rad` - The radians to calculate the inverse sine value; Goes from `-1` to `1`.

### math.acos(rad:Float):Float
Returns the arc (inverse) cosine of the number, given in radians. Returns between $\pi$ radians ($180^\circ$ degrees) and $0$ radians ($0^\circ$ degrees).

- `rad` - The radians to calculate the inverse cosine value; Goes from `-1` to `1`.

### math.atan(rad:Float):Float
Returns the arc (inverse) tangent of the number, given in radians. Returns between $-\frac{\pi}{2}$ radians ($-90^\circ$ degrees) and $\frac{\pi}{2}$ radians ($90^\circ$ degrees).

- `rad` - The radians to calculate the inverse tangent value.

### math.atan2(y:Float, x:Float):Float
Returns the calculated arc (inverse) tangent of x and y coordinate points, given in radians. Between the between the positive x-axis and the ray from the origin to the x and y coordinate points in the Cartesian plane.

- `y` - The given y position to calculate.
- `x` - The given x position to calculate.

### math.sinh(rad:Float):Float
Returns the hyperbolic sine of the number, given in radians.

- `rad` - The radians to calculate the hyperbolic sine value.

### math.cosh(rad:Float):Float
Returns the hyperbolic cosine of the number, given in radians.

- `rad` - The radians to calculate the hyperbolic cosine value.

### math.tanh(rad:Float):Float
Returns the hyperbolic tangent of the number, given in radians.

- `rad` - The radians to calculate the hyperbolic tangent value.

## Constants
### math.pi
### math.huge