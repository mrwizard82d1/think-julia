# Chapter 6

# Fruitful functions

# Standard functions return values
e = exp(1.0)
radius = 1.0
radians = π / 4 
height = radius * sin(radians)

# Returning a value from a function
function area(radius)
    result = π * radius^2
    return result
end
area(1)

# With **no** return statement, functions return the last expression evaluated by the function
function area(radius)
    π * radius^2
end
area(1)

# Multiple return statements
function absvalue(x)
    if x < 0
        return -x
    else
        return x
    end
end
absvalue(-1)
absvalue(0)
absvalue(1)

# Uses information book has not yet covered
# An `if` statement returns a value
function absvalue(x)
    return (
        if x < 0
            -x
        else
            x
        end
    )
end
absvalue(-1)
absvalue(0)
absvalue(1)

function broken_absvalue(x)
    if x < 0
        return -x
    end
    if x > 0
        return x
    end
end
show(broken_absvalue(-1))
show(broken_absvalue(0))  # Use `show` to display returned `nothing` value
show(broken_absvalue(1))

# Incremental development

# First step: start with (very) small but working code
function distance(x₁, y₁, x₂, y₂)
    0.0
end
distance(0, 0, 0, 0)

# This only passes some arguments.
distance(1, 2, 4, 6)  # values result in 3^2 + 4^2 or 5

# Add code to handle original case
function distance(x₁, y₁, x₂, y₂)
    dx = x₂ - x₁
    dy = y₂ - y₁
    @show dx dy  # shows arguments and then moves on
    0.0
end
distance(0, 0, 0, 0)

# But does not yet implement failing case
distance(1, 2, 4, 6)

# Continue changing implementation to handle failing case but only pass original
function distance(x₁, y₁, x₂, y₂)
    dx = x₂ - x₁
    dy = y₂ - y₁
    d² = dx^2 + dy^2
    @show d²  # shows arguments and then moves on
    0.0
end
distance(0, 0, 0, 0)
distance(1, 2, 4, 6)

# Change implementation to pass both tests
function distance(x₁, y₁, x₂, y₂)
    dx = x₂ - x₁
    dy = y₂ - y₁
    d² = dx^2 + dy^2
    @show d²  # shows arguments and then moves on
    sqrt(d²)
end
distance(0, 0, 0, 0)
distance(1, 2, 4, 6)


# Remove debugging code
function distance(x₁, y₁, x₂, y₂)
    dx = x₂ - x₁
    dy = y₂ - y₁
    d² = dx^2 + dy^2
    sqrt(d²)
end
distance(0, 0, 0, 0)
distance(1, 2, 4, 6)

# Although not needed here, refactor to remove intermediate, temporary values
function distance(x₁, y₁, x₂, y₂)
    d² = (x₂ - x₁)^2 + (y₂ - y₁)^2
    sqrt(d²)
end
distance(0, 0, 0, 0)
distance(1, 2, 4, 6)

# Final refactoring
function distance(x₁, y₁, x₂, y₂)
    sqrt((x₂ - x₁)^2 + (y₂ - y₁)^2)
end
distance(0, 0, 0, 0)
distance(1, 2, 4, 6)

# Composition
function circlearea(xc, yc, xp, yp)
    radius = distance(xc, yc, xp, yp)
    result = area(radius)
    return result
end
circlearea(0, 0, 1, 1)

function circlearea(xc, yc, xp, yp)
    area(distance(xc, yc, xp, yp))
end
circlearea(0, 0, 1, 1)

# Boolean functions
function isdivisible(x, y)
    if x % y == 0
        return true
    else
        return false
    end
end
isdivisible(81, 3)
isdivisible(83, 2)
isdivisible(6, 4)
isdivisible(6, 3)

function isdivisible(x, y)
    x % y == 0
end
isdivisible(81, 3)
isdivisible(83, 2)
isdivisible(6, 4)
isdivisible(6, 3)

# More recursion

function fact(n) end

function fact(n) 
    if n == 0
        return 1
    end
end
fact(0)

function fact(n)
    if n == 0
        return 1
    end

    return n * fact(n - 1)
end
fact(0)
fact(1)
fact(5)

# Note that Julia provides a `factorial` function to calculate 
# the factorial of an integer value.

# One more example
function fib(n)
    if n == 0
        return 0
    elseif n == 1
        return 1
    else
        return fib(n - 1) + fib(n - 2)
    end
end
fib(0)
fib(1)
fib(2)
fib(3)
fib(5)
fib(10)

# Checking types

# Executing the following code in VS Code seems to:
# 
# - Raise a stack overflow error
# - Prevent the editor from accepting input
#
# Because of the second consequence, I have commented out 
# this code

# fact(1.5)

function fact(n)
    if ! (n isa Int64)
        error("Factorial only defined for integer values.")
    elseif n < 0
        error("Factorial is only defined for positive integer values.")
    elseif n == 0
        return 1
    else
        return n * fact(n - 1)
    end
end
fact(1.5)
fact(-2)
fact(0)
fact(1)
fact(10)
