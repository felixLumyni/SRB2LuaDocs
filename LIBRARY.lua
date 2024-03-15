--[[
    henlo o/
    this documentation was meant for SRB2 projects
    its just info, this file won't actually do anything useful on its own
    you're not even supposed to be reading this directly
    here's the actual doc: https://wiki.srb2.org/wiki/Lua/Functions

    add this as a library in your vscode lua settings and disable diagnostics
    thats it, enjoy!
    ~lumyni
]]

-- oh also slapping some constants in here too cause why not x)

FRACBITS = 16
FRACUNIT = 1<<FRACBITS --The basic unit of measurement for lengths, speeds, Object scales and sometimes angles. Values for these measurements are interpreted as fixed-point numbers with `FRACUNIT` as the base unit, i.e., `FRACUNIT` represents one unit (or in some cases one pixel), `2*FRACUNIT` represents 2.0 units, `FRACUNIT/2` represents 0.5 units, and so on.
TICRATE = 35 --The number of tics in a second, i.e., anything multiplied by this value is a measurement in seconds.
MUSICRATE = 1000
RING_DIST = 512*FRACUNIT

--[[
    Math library
    These are the functions included in SRB2's math library. These are generally simple functions that are meant to be used in mathematical contexts.
]]

-- Basic math
-- These are basic mathematical functions that can be used in any context.

--- Returns the [absolute value](https://en.wikipedia.org/wiki/Absolute_value) (the number's distance from zero) of a.
---
--- *Note: `abs(INT32_MIN)` does not have a corresponding value, since it would be out of the 32-bit integer range.*
--- @param a int
--- @return int
abs = function(a) return end

--- Returns the smaller value of `a` or `b`.
--- @param a int
--- @param b int
--- @return int
min = function(a, b) return end

--- Returns the larger value of `a` or `b`.
--- @param a int
--- @param b int
--- @return int
max = function(a, b) return end

-- Angle math
-- These are mathematical functions that are designed to be used with angles. In SRB2, angles are usually represented by large integers where an angle of 1° is represented by the constant ANG1, which is equivalent to 11930465 – see Constants > Angles for a full list of constants used to represent angles in this scale. Sometimes, angles may also be represented as fixed-point integers (see below for information on these), where an angle of 1° is represented by the constant FRACUNIT.
-- Some of the functions listed below can be used to convert between these two different representations.
-- Also included here are the basic trigonometric functions (sin, cos and tan), which return values in the fixed-point scale.

--- Returns the sine of the given angle as a fixed-point value. Output values range from `-FRACUNIT` to `FRACUNIT`.
--- @param a angle_t
--- @return fixed_t
sin = function(a) return end

--- Returns the cosine of the given angle as a fixed-point value. Output values range from `-FRACUNIT` to `FRACUNIT`
--- @param a angle_t
--- @return fixed_t
cos = function(a) return end

--- Returns the tangent of the given angle as a fixed-point value. Output values range from about `-1303*FRACUNIT` to about `1303*FRACUNIT`. Undefined values, such as tan(90°) or tan(270°), are represented by `INT32_MIN`.
--- @param a angle_t
--- @return fixed_t
tan = function(a) return end

--- As of writing this documentation, this function has no description
--- @param a fixed_t
--- @return angle_t
asin = function(a) return end

--- As of writing this documentation, this function has no description
--- @param a fixed_t
--- @return angle_t
acos = function(a) return end

--- Converts an integer in the fixed-point scale to an angle value.
---
--- *Example: `FixedAngle(90*FRACUNIT)` will return `ANGLE_90`.*
--- @param a fixed_t
--- @return angle_t
FixedAngle = function(a) return end
--- Converts an integer in the fixed-point scale to an angle value.
---
--- *Example: `FixedAngle(90*FRACUNIT)` will return `ANGLE_90`.*
--- @param a fixed_t
--- @return angle_t
fixangle = function(a) return end

--- Converts an angle value to an integer in the fixed-point scale.
---
--- *Example: `AngleFixed(ANGLE_90)` will return `90*FRACUNIT`.*
--- @param a angle_t
--- @return fixed_t
AngleFixed = function(a) return end

--- Converts an angle value to an integer in the fixed-point scale.
---
--- *Example: `AngleFixed(ANGLE_90)` will return `90*FRACUNIT`.*
--- @param a angle_t
--- @return fixed_t
anglefix = function(a) return end

--- Returns the "inverse" of the given angle, i.e., 360° - `a`.
--- 
--- *Example: `InvAngle(ANGLE_45)` will return `ANGLE_315`.*
--- @param a angle_t
--- @return angle_t
InvAngle = function(a) return end

-- Fixed-point math
-- These are mathematical functions that are designed to be used with fixed-point integers – i.e., integers expressed as multiples of the constant FRACUNIT, or integers bit-shifted to the left by FRACBITS (FRACUNIT is the same as 1<<FRACBITS). In this system, FRACUNIT itself is treated as 1, 2*FRACUNIT (or FRACUNIT*2) is treated as 2, and so on.
-- Note: As Lua in SRB2 does not support floating-point numbers (e.g., 0.5, 0.25, 1.1, etc.), non-integer multiples of FRACUNIT should instead be written as fractions with the numerator and denominator surrounding the constant – e.g., 0.5 is written as FRACUNIT/2, and 1.25 (or 5/4) is written as 5*FRACUNIT/4.

--- Returns the result of multiplying `a` by `b` in the fixed-point scale. 
--- 
--- *Example: `FixedMul(2*FRACUNIT, 3*FRACUNIT)` will return `6*FRACUNIT`.*
--- @param a fixed_t
--- @param b fixed_t
--- @return fixed_t
FixedMul = function(a, b) return end

--- Returns the result of multiplying `a` by `b` in the fixed-point scale. 
--- 
--- *Example: `FixedMul(2*FRACUNIT, 3*FRACUNIT)` will return `6*FRACUNIT`.*
--- @param a fixed_t
--- @param b fixed_t
--- @return fixed_t
fixmul = function(a, b) return end

--- Returns the integer component of a as a normal integer.
--- 
--- *Example: FixedInt(45*FRACUNIT) will return 45.*
--- @param a fixed_t
--- @return int
FixedInt = function(a) return end

--- Returns the integer component of a as a normal integer.
--- 
--- *Example: FixedInt(45*FRACUNIT) will return 45.*
--- @param a fixed_t
--- @return int
fixint = function(a) return end

--- Returns the result of dividing `a` by `b` in the fixed-point scale.
--- 
--- *Example: `FixedDiv(6*FRACUNIT, 3*FRACUNIT)` will return `2*FRACUNIT`.*
--- @param a fixed_t
--- @param b fixed_t
--- @return fixed_t
FixedDiv = function(a, b) return end

--- Returns the result of dividing `a` by `b` in the fixed-point scale.
--- 
--- *Example: `FixedDiv(6*FRACUNIT, 3*FRACUNIT)` will return `2*FRACUNIT`.*
--- @param a fixed_t
--- @param b fixed_t
--- @return fixed_t
fixdiv = function(a, b) return end

--- Returns the remainder of dividing `a` by `b` in the fixed-point scale. 
--- 
--- *Note: Negative values for `b` are not handled correctly and may slow down the game.*
--- @param a fixed_t
--- @param b fixed_t
--- @return fixed_t
FixedRem = function(a, b) return end

--- Returns the remainder of dividing `a` by `b` in the fixed-point scale. 
--- 
--- *Note: Negative values for `b` are not handled correctly and may slow down the game.*
--- @param a fixed_t
--- @param b fixed_t
--- @return fixed_t
fixrem = function(a, b) return end

--- Returns the square root of a in the fixed-point scale.
--- 
--- *Example: `FixedSqrt(16*FRACUNIT)` will return `4*FRACUNIT`.*
--- @param a fixed_t
--- @return fixed_t
FixedSqrt = function(a) return end

--- Returns the square root of a in the fixed-point scale.
--- 
--- *Example: `FixedSqrt(16*FRACUNIT)` will return `4*FRACUNIT`.*
--- @param a fixed_t
--- @return fixed_t
fixsqrt = function(a) return end

--- Returns the [hypotenuse](https://en.wikipedia.org/wiki/Hypotenuse) of `a` and `b` in the fixed-point scale (i.e., the length of the longest side of a right-angled triangle where the other sides have lengths `a` and `b`).
--- 
--- *Example: `FixedHypot(3*FRACUNIT, 4*FRACUNIT)` will return `5*FRACUNIT`.*
--- @param a fixed_t
--- @param b fixed_t
--- @return fixed_t
FixedHypot = function(a, b) return end

--- Returns the [hypotenuse](https://en.wikipedia.org/wiki/Hypotenuse) of `a` and `b` in the fixed-point scale (i.e., the length of the longest side of a right-angled triangle where the other sides have lengths `a` and `b`).
--- 
--- *Example: `FixedHypot(3*FRACUNIT, 4*FRACUNIT)` will return `5*FRACUNIT`.*
--- @param a fixed_t
--- @param b fixed_t
--- @return fixed_t
fixhypot = function(a, b) return end

--- Returns the [floor](https://en.wikipedia.org/wiki/Floor_and_ceiling_functions) of `a` (the largest integer that is not larger than `a`) in the fixed-point scale.
--- @param a fixed_t
--- @return fixed_t
FixedFloor = function(a) return end

--- Returns the [floor](https://en.wikipedia.org/wiki/Floor_and_ceiling_functions) of `a` (the largest integer that is not larger than `a`) in the fixed-point scale.
--- @param a fixed_t
--- @return fixed_t
fixfloor = function(a) return end

--- Returns the value of `a` rounded to the nearest whole number towards 0 (or `a` truncated to zero decimal digits) in the fixed-point scale.
--- @param a fixed_t
--- @return fixed_t
FixedTrunc = function(a) return end

--- Returns the value of `a` rounded to the nearest whole number towards 0 (or `a` truncated to zero decimal digits) in the fixed-point scale.
--- @param a fixed_t
--- @return fixed_t
fixtrunc = function(a) return end

--- Returns the [ceiling](https://en.wikipedia.org/wiki/Floor_and_ceiling_functions) of `a` (the smallest integer that is not smaller than `a`) in the fixed-point scale.
--- @param a fixed_t
--- @return fixed_t
FixedCeil = function(a) return end

--- Returns the [ceiling](https://en.wikipedia.org/wiki/Floor_and_ceiling_functions) of `a` (the smallest integer that is not smaller than `a`) in the fixed-point scale.
--- @param a fixed_t
--- @return fixed_t
fixceil = function(a) return end

--- Returns the value of `a` rounded to the nearest whole number away from 0 in the fixed-point scale.
--- @param a fixed_t
--- @return fixed_t
FixedRound = function(a) return end

--- Returns the value of `a` rounded to the nearest whole number away from 0 in the fixed-point scale.
--- @param a fixed_t
--- @return fixed_t
fixround = function(a) return end

-- Miscellaneous
-- These are simple yet specialized functions that do not fit within the base library.

-- A