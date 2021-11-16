# Exercise 8-5

# count()

function find(word, letter, start)
    index = start
    while index <= sizeof(word)
        if word[index] == letter
            return index
        end
        index = nextind(word, index)
    end
    -1
end


function count(text, to_find)
    counter = 0
    start_at = 1
    found_at = find(text, to_find, start_at) 
    while found_at != -1
        counter = counter + 1
        start_at = nextind(text, found_at)
        found_at = find(text, to_find, start_at)
    end
    counter
end
println("count(\"\", 'a') = $(count("", 'a'))")
println("count(\"baz\", 'z') = $(count("baz", 'z'))")
println("count(\"quux\" , 'u') = $(count("quux" , 'u'))")
