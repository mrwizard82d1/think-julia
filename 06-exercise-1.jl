# Exercise 6-1

# Write a `compare` function. It takes two arguments, x and y,
# and returns:
#
#  1 if X > y
# -1 if x < y
#  0 if x == y

"""
compare(x, y)

Compares two numeric values.

Args:
    x: the "left-hand" argument of the comparison
    y: the "right-hand" argument of the comparison

Returns:
    1 if x > y
    -1 if x < y
    0 if x == y
"""
function compare(x, y)
    if x > y
        return 1
    elseif x < y
        return -1
    else
        return 0
    end
end
println("compare(1, 2) returns $(compare(1, 2))")
println("compare(-1, -2) returns $(compare(-1, -2))")
println("compare(0, 0) returns $(compare(0, 0))")
