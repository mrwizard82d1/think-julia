# Exercise 1-1

# Entering `println("Hello, World"` in a REPL causes the REPL 
# to wait for the closing parenthesis.

# println(Hello World)
# results in a syntax error

# println("Hello World)
# results in the REPL awaiting the closing quotation mark (and
# parenthesis).

+2
# results in positive 2

# 2++2
# results in an `UndefVarError` ("++" not defined)

02
# results in the integer 2

08
# results in the integer 8 (not octal notation)

# 2 3
# results in syntax error about extra token "3"

# Exercise 1-2

# Seconds in 42 minutes 42 Seconds
42 * 60 + 42

# Miles in 10 kilometers
10 / 1.61

# Average pace 10 km in 37 minutes 48 seconds

# Pace (min / mi)
(37 + 48 / 60) / (10 / 1.61)

# Pace (sec / mi)
(37 * 60 + 48) / (10 / 1.61)

# Speed in mph (mi / hr)
(10 / 1.61) / ((37 + (48 / 60)) / 60)

# Speed in km/s
10 / (37 * 60 + 48)

# Speed in miles per minute
(10 / 1.61) / (37 + (48 / 37))

# ...and miles per second
(10 / 1.61) / (37 * 60 + 48)

