# Exercise 8-5

# count()

function count(text, to_find)
    counter = 0
    for candidate in text
        if candidate == to_find
            counter = counter + 1
        end
    end
    counter
end
println("count(\"\", 'a') = $(count("", 'a'))")
println("count(\"baz\", 'z') = $(count("baz", 'z'))")
println("count(\"quux\" , 'u') = $(count("quux" , 'u'))")
