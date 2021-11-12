# Exercise 6-3

# Write a function `isbetween(x, y, z)` that returns true if `x ≤ y ≤ z`.

"""
isbetween(x, y, z)

Returns `true` if x ≤ y ≤ z

Args:
    x: included lower bound of range
    y: perhaps in range
    z: included upper bound of range
"""
function isbetween(x, y, z)
    x ≤ y ≤ z
end
println("isbetween(1, 2, 3) is $(isbetween(1, 2, 3))")
println("isbetween(1, 1, 1) is $(isbetween(1, 1, 1))")
println("isbetween(1.0, prevfloat(1.0), 1.0) is $(isbetween(1.0, prevfloat(1.0), 1.0))")
println("isbetween(nextfloat(1.0), 1.0, 1.0) is $(isbetween(nextfloat(1.0), 1.0, 1.0))")
println("isbetween(1.0, 1.0, prevfloat(1.0)) is $(isbetween(1.0, 1.0, prevfloat(1.0)))")
