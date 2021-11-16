# Exercise 8-4

# Find character in word starting at start.

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
find("baz", 'b', 1)
find("baz", 'z', 2)
find("baz", 'q', 3)
