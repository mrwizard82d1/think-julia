# Exercise 3-1b

function repeatlyrics()
    printlyrics()
    printlyrics()
end

function printlyrics()
    println("I'm a lumberjack and I'm okay.")
    println("I sleep all night, and I work all day.")
end

repeatlyrics()

# Interesting....

# Even though `repeatlyrics` calls `printlyrics` *before* 
# `printlynics` is defined, because `repeatlyrics` is not called
# until *both* functions are defined, everything works 
# as expected.
