# Mathematical Methods
### math.min(multi:Float...):Float
Finds the minumum number by searching through each argument passed until it finds one.

- `multi` - An infinite parameter, The multiple number arguments to find the minumum number.

### math.max(multi:Float...):Float
Finds the maximum number by searching through each argument passed until it finds one.

- `multi` - An infinite parameter, The multiple number arguments to find the maximum number.

### math.floor(num:Float):Float
Rounds down a floating-point number to its nearest integer value.

- `num` - The number to round down closest integer number.

### math.ceil(num:Float):Float
Rounds up a floating-point number to its nearest integer value.

- `num` - The number to round up closest integer number.

### math.abs(num:Float):Float
The absolute value from a given number, distance of the number from zero `0`.

- `num` - The number to returns its absolute number.

### math.sqrt(num:Float):Float
The square root of the given number.

- `num` - The square root of the number.

### math.log(num:Float, ?base:Float = 2):Float
The logarithmic of the number to its base number, inverse (opposite) of exponential.

- `num` - The given logarithmic number to its base.
- `base` - An optional parameter, The base of the logarithmic number; Default value: `2`.

### math.log10(num:Float):Float
The logarithmic of the number to base ten `10`.

- `num` - The given logarithmic number to its base ten `10`.

### math.random(?min:Int = 0, ?max:Int = 1):Float
Randomizes a number between the minimum to maximum numbers. It utilizes a Pseudo-Random Number Generator (PRNG), an mathematical algorithm that takes use of formulas. To produce a sequences of random numbers; utilizing a seed to initializing the PRNG. 

Since it's not truly "random", due to computer limiations. It will always return the exact same number sequences, even if you try restarting it will still generate the exact same number sequences. That's becuase it uses the same seed that the PRNG utilizes within that script.

> [!TIP]
> _If you want to generate an "actually" random number, you can either both use. The `getRandomInt()` function for integer numbers and `getRandomFloat()` function for floating-point numbers. Or use the `math.randomseed()` method to change its current seed to generate different random number sequences._

- `min` - An optional parameter, the minimum number value range to start randomizing; Default value: `0`.
- `max` - An optional parameter, the maximum number value range to end randomizing; Default value: `1`.

### math.randomseed(seed:Int):Int
Sets the seed of the pseudo-random number generator; equal seeds produce equal sequences of numbers.

> [!TIP]
> _Highly recommended to use `os.time()` method, this returns every second from the Unix Epoch Time, which initially starts at: `00:00:00 UTC on 1 January 1970`. Making the seed change every second thus making it actually random._

- `seed` - The specified seed to generate a new random number sequence.

## Trigonometry Methods
### math.deg(rad:Float):Float
### math.rad(deg:Float):Float
### math.sin(rad:Float):Float
### math.cos(rad:Float):Float
### math.tan(rad:Float):Float
### math.asin(rad:Float):Float
### math.acos(rad:Float):Float
### math.atan(rad:Float):Float
### math.atan2(yrad:Float, xrad:Float):Float
### math.sinh(rad:Float):Float
### math.cosh(rad:Float):Float
### math.tanh(rad:Float):Float

## Constants
### math.pi
### math.huge