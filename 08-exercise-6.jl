# Exercise 8-6

"""
isreverse(word1, word2)

Determine if `word1` and `word2` are the reverse of each other.

Args:
    word1: One word to test
    word2: The second word to test

Returns:
    `true` if `word1` and `word2` are the reverse of each other;
    othewise, `false`.
"""
function isreverse(word1, word2)
    if length(word1) != length(word2)
        return false
    end

    i = firstindex(word1)
    j = lastindex(word2)
    while j >= 1
        if word1[i] != word2[j]
            return false
        end
        i = nextind(word1, i)
        j = prevind(word2, j)
    end
    true
end
println("isreverse(\"pots\", \"stop\") is $(isreverse("pots", "stop"))")
println("isreverse(\"pats\", \"stop\") is $(isreverse("pats", "stop"))")
