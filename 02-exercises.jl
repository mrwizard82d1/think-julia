# Chapter 2 exercise

# Type the following statements in the Julia REPL to observe 
# their effect.
5
x = 5
x + 1

# Run the same statements in a script and run it. The run 
# produces *no* output.
# - `02-ex-2-1a-script.jl`
# - `02-ex-2-1b-script.jl`

# Exercise 2-2

n = 17
42 = n  # syntax error: invalid assignment location "42"
x = y = 1
x
y

3 + 4;  # prints *no* value
# println("foo").  awaits further input
println("foo").abc  # Raises exception: "Nothing has no field println"

x y  # syntax error: extra token "y" after end of expression
xy  # UndefVarError: xy not defined
5x

# Exercise 2-3

r = 5
(4 / 3)π * r^3

cover_price = 24.95
discount = 40 / 100
copy_count = 60
shipping = 3 + 0.75(copy_count - 1)
total = cover_price * (1 - discount) * cover_price + shipping

start_seconds = ((6 * 60) + 52) * 60
first_mile = (8 * 60 + 15) * 1
three_miles = (7 * 60 + 12) * 3
last_mile = (8 * 60 + 15) * 1
stop_seconds = start_seconds + first_mile + three_miles + last_mile
divrem(stop_seconds, 60)
divrem(450, 60)  # 7:30:06 AM
