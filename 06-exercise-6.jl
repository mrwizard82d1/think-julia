# Exercise 6-1

# Palindromes

function first(word)
    first = firstindex(word)
    word[first]
end

function last(word)
    last = lastindex(word)
    word[last]
end

function middle(word)
    first = firstindex(word)
    last = lastindex(word)
    word[nextind(word, first) : prevind(word, last)]
end

println("middle(\"an\") = '$(middle("an"))'")
println("middle(\"a\") = '$(middle("a"))'")
try
    middle_of_empty = middle("")
catch ex
    if ex isa BoundsError
        println(ex)
    else
        error(ex)
    end
end

function palindrome(word)
    if length(word) == 0
        return true
    elseif first(word) == last(word)
        return palindrome(middle(word))
    else
        return false
    end
end
palindrome("")
palindrome("I")
palindrome("an")
palindrome("ada")
palindrome("adam")
palindrome("noon")
palindrome("redivider")
