# Exercise 3-1a

# Calling a function *before* it is defined results in an `UndefVarError`
repeatlyrics()

function printlyrics()
    println("I'm a lumberjack and I'm okay.")
    println("I sleep all night, and I work all day.")
end

function repeatlyrics()
    printlyrics()
    printlyrics()
end
