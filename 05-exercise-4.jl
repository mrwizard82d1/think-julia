# Exercise 5-4

# Determine if three lengths ("sticks") can form a triangle or not.

function istriangle(a, b, c)
    if a > b + c
        return false
    end

    if b > c + a
        return false
    end

    if c > a + b
        return false
    end

    return true
end


function test_triangle_candidate()
    println("Enter the lengths of the three sticks.")
    
    print("a? ")
    a = parse(Float64, readline())
    if a < 0
        println("Length, $(a), cannot be negative!")
        return
    end

    print("b? ")
    b = parse(Float64, readline())
    if b < 0
        println("Length, $(b), cannot be negative!")
        return
    end

    print("c? ")
    c = parse(Float64, readline())
    if c < 0
        println("Length, $(c), cannot be negative!")
        return
    end

    if istriangle(a, b, c)
        println("Eureka!")
    else
        println("Darn")
    end
end

test_triangle_candidate()
