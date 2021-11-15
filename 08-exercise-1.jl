# Exercise 8-1

# reverse_print function

function findlast(text)
    if length(text) == 0
        error("No last index for zero-length string.")
    end
    probe = firstindex(text)
    while probe < sizeof(text)
        probe = nextind(text, probe)
    end
    return probe
end
findlast("")
findlast("a")
findlast("foo")

"""
Find the index of the character in `text` before the index, `ante`.
"""
function findlastante(text, ante)
    if length(text) == 0
        error("No characters in empty string.")
    end
    if ante == 1
        error("No characters before first character in string.")
    end
    last = findlast(text)
    if ante < 1 || ante > last
        error("ante must be between 2 and ", last)
    end

    probe = firstindex(text)
    while probe <= ante 
        candidate = probe
        probe = nextind(text, probe)
        if probe == ante
            return candidate
        end
    end 
end
findlastante("", 0)
findlastante("a", 1)
findlastante("an", 0)
findlastante("an", 2)
findlastante("bar", 3)
findlastante("bar", 2)

function reverse_print(text)
    # Handle empty string specially
    if length(text) == 0
        println("")
        return
    end

    last = findlast(text)
    while last > firstindex(text)
        println(text[last])
        last = findlastante(text, last)
    end
    println(text[last])
end
reverse_print("")
reverse_print("a")
reverse_print("no")
reverse_print("baz")
