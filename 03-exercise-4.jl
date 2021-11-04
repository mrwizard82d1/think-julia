# Exercise 3-4

function dotwice(f, argument)
    f(argument)
    f(argument)
end

function dofour(f, argument)
    dotwice(f, argument)
    dotwice(f, argument)
end

function printgrid()
    dashes = " -" ^ 4 * " "
    dashes_line = "+" * dashes * "+" * dashes * "+"
    println(dashes_line)

    spaces = " " ^ 9
    spaces_line = "|" * spaces * "|" * spaces * "|"
    dofour(println, spaces_line)

    println(dashes_line)
    dofour(println, spaces_line)
    println(dashes_line)
end

printgrid()
