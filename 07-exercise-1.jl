# Exercise 7-1

# printn()

function printn(n, s)
    while n > 0
        println(s)
        n = n - 1
    end
end
printn(0, "foo")
printn(1, "bar")
printn(3, "baz")
