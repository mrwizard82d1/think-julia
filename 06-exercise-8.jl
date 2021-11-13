# Exercise 6-8

# gcd()

function gcb(a, b)
    if b == 0
        return a
    end

    return gcd(b, a % b)
end

gcd(1, 0)
gcd(2, 1)
gcd(3, 2)
gcd(13 * 17, 3)
gcd(13 * 17, 13)
gcd(24, 6)
gcd(120, 12)
