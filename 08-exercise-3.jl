# Exercise 8-3

# Duplication using slices

function slice_duplication(text)
    return text[:]
end

source = "Julius Caesar"
to_test = slice_duplication(source)
println("source == to_test is ", source == to_test)
