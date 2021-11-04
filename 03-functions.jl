# Function

println("Hello, Julia World!")  # calling a function

# Functions that convert values from one type to another
parse(Int64, "32")
parse(Float64, "3.141592653589")
parse(Int64, "Hello")  # raises `ArgumentError`

# `trunc` converts floating point numbers to integers by simply
# truncating the fractional part.
trunc(Int64, 3.99999)
trunc(Int64, -2.3)

# `float` converts integers to floating-point numbers.
float(32)

# `string` converts its argument to a string.
string(32)
string(3.141592653589793)

# Math Functions

# Most familiar mathematical functions are directly available.
signal_power = 1e0
noise_power = 1e-1
ratio = signal_power / noise_power
decibels = 10 * log10(ratio)

radians = 0.7
height = sin(radians)

degrees = 45
radians = degrees / 180 * π
sin(radians)

π
pi

sqrt(2) / 2

# Function composition

x = sin(degrees / 360 * 2 * π)
x = exp(log(x + 1))

hours = 3.75
minutes = hours * 60  # right
hours * 60 = minutes  # wrong

# Adding new functions

# Function names follow same rules as variable names with the addition:
# - Should avoid having function and variable as the same name.

function printlyrics()
    println("I'm a lumberjack and I'm okay.")
    println("I sleep all night, and I work all day.")
end
printlyrics()

function repeatlyrics()
    printlyrics()
    printlyrics()
end
repeatlyrics()

# Parameters and arguments

function printtwice(bruce)
    println(bruce)
    println(bruce)
end

printtwice("Spam")
printtwice(42)
printtwice(π)

# Expressions are evaluated *before* assigning the values to 
# parameters.
printtwice("Spam " ^ 4)
printtwice(cos(π))

michael = "Eric, the half a bee"
printtwice(michael)

# Variables and parameters are local
function cattwice(part1, part2)
    concat = part1 * part2
    printtwice(concat)
end

line1 = "Bing tiddle "
line2 = "tiddle bang."
cattwice(line1, line2)

# Local variables go out of scope when function terminates
println(concat)  

# "Fruitful" functions and void functions

x = cos(radians)
golden = (√5 + 1) / 2

sqrt(5)

# Functions with no return value return `nothing`
result = println("Bing")
show(result)  # `show` is like to print` but can handle `nothing`

typeof(nothing)
