# Exercise 8-2

# Abecedarian (alphabetical) sequences

function abecedarian(suffix, prefixes)
    for letter in prefixes
        if letter == 'O' || letter == 'Q'
            println(letter * 'u' * suffix)
        else
            println(letter * suffix)
        end
    end
end
abecedarian("ack", "JKLMNOPQ")
            