# Exercise 3-3b

function dotwice(f, argument)
    f(argument)
    f(argument)
end

function printspam(text)
    println(text)
end

dotwice(printspam, "spam")
