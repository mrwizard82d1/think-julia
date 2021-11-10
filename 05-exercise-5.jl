# Exercise 5-5

# Recursive sum of integers

"""
recurse(n, s)

Sums the integers 1..n with an initial seed, s.
"""
function recurse(n, s)
    if n == 0
        println(s)
    else
        recurse(n - 1, n + s)
    end
end

recurse(3, 0)
