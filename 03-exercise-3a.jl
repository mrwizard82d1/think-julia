# Exercise 3-3a

function dotwice(f)
    f()
    f()
end

function printspam()
    println("spam")
end

dotwice(printspam)
