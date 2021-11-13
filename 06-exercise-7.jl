# Exercise 6-7

# ispower() function

function ispower(a, b)
    if a == b
        return true
    elseif a % b == 0
        return ispower(a ÷ b, b)
    else
        return false
    end
end
ispower(2, 2)
ispower(4, 2)
ispower(4, 3)
ispower(6, 2)