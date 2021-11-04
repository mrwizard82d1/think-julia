# Exercise 3-3c

function dotwice(f, argument)
    f(argument)
    f(argument)
end

function dofour(f, argument)
    dotwice(f, argument)
    dotwice(f, argument)
end

function printspam(text)
    println(text)
end

dofour(printspam, "spam")
