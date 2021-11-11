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
