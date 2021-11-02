# Variables, expressions and statements

# Assignment (statement?)

message = "And now for something completely different"
n = 17
π_val = 3.141592653589793

# Variable names

# Illegal names raise a syntax error

76trombones = "big parade"  # begins with number
more@ = 1_000_000  # ends with '@'
struct = "Advanced Theoretical Zymurgy"  # using keyword as variable name

# Expressions and statements

42
n
n + 25

# A _statement_ is a unit of code that has an effect, like 
# creating a variable or displaying a value.
n = 17
println(n)

# Script mode

# Differences between script and interactive mode

# The REPL prints *all* results

miles = 26.2
miles * 1.61

# A script only prints results when statements like `println` 
# are invoke. See 
# - `02_marathon.jl`
# - `02-one-line-at-a-time.jl`

# Operator precedence

# For mathematical operators, Julia follows mathematical 
# convention. The acronym _PEMDAS_ is useful to remember 
# the rules.

# Parentheses

2 * (3 - 1) == 4
(1 + 1)^(5-2) == 8

# Exponentiation

1 + 2^3 == 9
1 + 2^3 == 27
2 * 3^2 == 18
2 * 3^2 == 36

# Associativity 

# Operators with the same precedence are evaluated left-to-right
# with the exception of exponentiation.

degrees = 360

# This expression *does not* divide `degrees` by 2π
degrees / 2 * π  

# These expression divides by 2π
degrees / 2 / π
degrees / (2 * π)
degrees / 2πO

# String operations

# In general, one cannot perform mathematical operations on 
# strings. The following are illegal (raises `MethodError`).
"2" - "1"
"eggs" / "easy"
"third" + "a charm"  # should be `*` but see next section.

# But there are two exceptions: `*` and `^`

# The `*` operator concatenates strings.

first_str = "throat"
second_str = "warbler"

first_str * second_str

# The `^` operator repeats strings.
"Spam" ^ 3

# Comments

# Start with the '#' symbol (and run to the end of the line).

# Compute the percentage of the hour that has elapsed
minute = 32
percentage = (minute * 100) / 60

# Comments can also appear at the end of a line.

percentage = (minute / 60) * 100  # % of hour that has elapsed

# Avoid redundant comments (that say exactly what the code does)

v = 5  # assign 5 to v

v = 5  # comment explains "magic constant"
