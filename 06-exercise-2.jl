# Exercise 2

# Calculate the hypotenuse of a right triangle using incremental development

# Simplest possible implementaton
function hypotenuse(a, b)
    return 0.0
end
println("hypotenuse(0, 0) = 0 is $(hypotenuse(0, 0) == 0)")

# But fails other cases
println("hypotenuse(3, 4) = 5 is $(hypotenuse(3, 4) == 5)")

# Use other arguments. Original passes. Other case still fails. Include debugging.
function hypotenuse(a, b)
    sum = a^2 + b^2
    @show sum
    return 0.0
end
println()
println("hypotenuse(0, 0) = 0 is still $(hypotenuse(0, 0) == 0)")

# But fails other cases
println("hypotenuse(3, 4) = 5 is still $(hypotenuse(3, 4) == 5)")

# Calculate hypotenuse squared but return 0.0 still. Debugging output.
function hypotenuse(a, b)
    c² = a^2 + b^2
    @show c²
    return 0.0
end
println()
println("hypotenuse(0, 0) = 0 is still $(hypotenuse(0, 0) == 0)")

# But fails other cases
println("hypotenuse(3, 4) = 5 is still $(hypotenuse(3, 4) == 5)")

# Calculate hypotenuse but return 0.0 still. Debugging output.
function hypotenuse(a, b)
    c² = a^2 + b^2
    @show sqrt(c²)
    return 0.0
end
println()
println("hypotenuse(0, 0) = 0 is still $(hypotenuse(0, 0) == 0)")

# But fails other cases
println("hypotenuse(3, 4) = 5 is still $(hypotenuse(3, 4) == 5)")

# Return hypotenuse. Debugging output.
function hypotenuse(a, b)
    c² = a^2 + b^2
    result = sqrt(c²)
    @show result
    return result
end
println()
println("hypotenuse(0, 0) = 0 is $(hypotenuse(0, 0) == 0)")

# And finally passes other cases
println("hypotenuse(3, 4) = 5 is $(hypotenuse(3, 4) == 5)")

# Remove debugging.
function hypotenuse(a, b)
    c² = a^2 + b^2
    result = sqrt(c²)
    return result
end
println()
println("hypotenuse(0, 0) = 0 is $(hypotenuse(0, 0) == 0)")

# And finally passes other cases
println("hypotenuse(3, 4) = 5 is $(hypotenuse(3, 4) == 5)")

# Refactor
function hypotenuse(a, b)
    result = sqrt(a^2 + b^2)
    return result
end
println()
println("hypotenuse(0, 0) = 0 is $(hypotenuse(0, 0) == 0)")

# And finally passes other cases
println("hypotenuse(3, 4) = 5 is $(hypotenuse(3, 4) == 5)")

# Final
function hypotenuse(a, b)
    sqrt(a^2 + b^2)
end
println()
println("hypotenuse(0, 0) = 0 is $(hypotenuse(0, 0) == 0)")

# And finally passes other cases
println("hypotenuse(3, 4) = 5 is $(hypotenuse(3, 4) == 5)")