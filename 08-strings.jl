# Strings

# Characters

'x'
# \:banana: TAB
Char(0x01f34c)  # banana (cannot insert \:banana: in VSCode)
typeof('x')
typeof(Char(0x01f34c))

# A `String` is a sequence
fruit = "banana"
letter = fruit[1]
fruit[end]

i = 1
fruit[i + 1]
fruit[end - 1]

# Sequence must use integer value for index
try
    fruit[1.5]
catch ex
    if ex isa MethodError
        println(ex)
    end
end

# length() function
fruits = "\U01f34c \U01f34e \U01f350"
len = length(fruits)

# However, attempting to get the last character using `length`
# may fail or may not return the character one expects.
last = fruits[length(fruits)]

# Strings are uncoded using UTF-8 encoding; however, indexing 
# uses **bytes** and **not** characters.

# The `sizeof` function gives the number of **bytes** in a string
sizeof(fruits)
length(fruits)
sizeof("\U01f34c")
length("\U01f34c")

# Indexing into a string with an invalid index raises an 
# exception
try
    fruits[2]
catch ex
    println(ex)
end
try
    fruits[end - 2]
catch ex
    println(ex)
end

# The function, `nextind`, returns the next valid index in 
# a String
fruits[1]
fruits[nextind(fruits, 1)]
fruits[nextind(fruits, nextind(fruits, 1))]

# Traversal

# One can traverse a string with a while loop
index = firstindex(fruits)
while index <= sizeof(fruits)
    letter = fruits[index]
    println(letter)
    # `global` tells interpreter to use variable defined at 
    # top-level of REPL. Default behavior is to create a new,
    # local variable.
    global index = nextind(fruits, index)
end

# Another wy to write traversals is with a for loop.
for letter in fruits
    println(letter)
end

prefixes = "JKLMNOPQ"
suffix = "ack"

for letter in prefixes
    println(letter * suffix)
end

# String slices

str = "Julius Caesar"
str[1:6]
str[8:end]

# Strings are immutable

greeting = "Hello, Julia world!"
try
    greeting[1] = 'j'
catch ex
    println(ex)
end

# To change a string, create a new string concatenating the new
# and the old pieces together
target_greeting = 'J' * greeting[2:end]
greeting

# String interpolation

greet = "Hello"
whom = "Julia"
"$greet, $(whom)!"

"1 + 2 = $(1 + 2)"

# Searching

function find(word, letter)
    index = firstindex(word)
    while index <= sizeof(word)
        if word[index] == letter
            return index
        end
        index = nextind(word, index)
    end
    -1
end
find("baz", 'b')
find("baz", 'z')
find("baz", 'q')

# Looping and Counting

word = "banana"
counter = 0
for letter in word
    if letter == 'a'
        global counter = counter + 1
    end
end
counter

# String library

uppercase("Hello, Julia!")

findfirst('a', "banana")
findfirst("a", "banana")
findfirst("na", "banana")

findnext("na", "banana", 4)

# The ∈ operator

'a' ∈ "banana"

function inboth(word1, word2)
    for letter in word1
        if letter ∈ word2
            print(letter, " ")
        end
    end
    println()
end
inboth("foo", "bar")
inboth("bar", "baz")
inboth("baz", "zork")
inboth("apples", "oranges")

# String comparison

word = "Pineapple"
if word == "banana"
    println("All right, bananas.")
end

if word < "banana"
    println("Your word, $(word), comes before \"banana\".")
elseif word > "banana"
    println("Your word, $(word), comes after \"banana\".")
else
    println("All right, bananas")
end

# Julia, like most languages sorts uppercase letters before the 
# corresponding lowercase letter. A common "fix" is to 
# canonicalize the case before comparing. For example, one could
# convert all letters to lowercase before comparison.
if lowercase(word) < "banana"
    println("Your word, $(word), comes before \"banana\".")
elseif lowercase(word) > "banana"
    println("Your word, $(word), comes after \"banana\".")
else
    println("All right, bananas")
end

# Debugging

# `isreverse` is intended to test if two words are the reverse of
# each other; however, it contains two errors related to the 
# start and ending indices of strings.

function isreverse(word1, word2)
    if length(word1) != length(word2)
        return false
    end

    i = firstindex(word1)
    j = lastindex(word2)
    while j >= 0
        j = prevind(word2, j)
        if word1[i] != word2[j]
            return false
        end
        i = nextind(word1, i)
    end
    true
end
isreverse("", "")
isreverse("a", "a")
isreverse("madam im adam", "madam im adam")
isreverse("baz", "rac")

# Add some debug statements

function isreverse(word1, word2)
    if length(word1) != length(word2)
        return false
    end

    i = firstindex(word1)
    j = lastindex(word2)
    while j >= 0
        @show i j
        j = prevind(word2, j)
        if word1[i] != word2[j]
            return false
        end
        i = nextind(word1, i)
    end
    true
end
isreverse("", "")
isreverse("a", "a")
isreverse("madam im adam", "madam im adam")
isreverse("baz", "rac")

# Not `j >= 0` but `j >= 1` (or equivalently, `j > 0`)

function isreverse(word1, word2)
    if length(word1) != length(word2)
        return false
    end

    i = firstindex(word1)
    j = lastindex(word2)
    while j >= 1
        j = prevind(word2, j)
        if word1[i] != word2[j]
            return false
        end
        i = nextind(word1, i)
    end
    true
end
isreverse("", "")
isreverse("a", "a")
isreverse("madam im adam", "madam im adam")
isreverse("baz", "rac")

# Not quite. More debugging statements.

function isreverse(word1, word2)
    if length(word1) != length(word2)
        return false
    end

    i = firstindex(word1)
    j = lastindex(word2)
    while j >= 1
        j = prevind(word2, j)
        @show i j
        if word1[i] != word2[j]
            return false
        end
        i = nextind(word1, i)
    end
    true
end
isreverse("", "")
isreverse("a", "a")
isreverse("madam im adam", "madam im adam")
isreverse("baz", "rac")

# Of course, "decrementing" the index too soon.

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
isreverse("", "")
isreverse("a", "a")
isreverse("madam im adam", "madam im adam")
isreverse("baz", "rac")

# Hmmm. Very strange. More debugging.

function isreverse(word1, word2)
    if length(word1) != length(word2)
        return false
    end

    i = firstindex(word1)
    j = lastindex(word2)
    while j >= 1
        if word1[i] != word2[j]
            @show i j
            return false
        end
        i = nextind(word1, i)
        j = prevind(word2, j)
    end
    true
end
isreverse("", "")
isreverse("a", "a")
isreverse("madam im adam", "madam im adam")
isreverse("baz", "rac")

# Hmmm. Confused by embedded spaces. Replace the test case.

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
isreverse("", "")
isreverse("a", "a")
isreverse("redivider", "redivider")
isreverse("baz", "rac")
isreverse("12/22/21", "12/22/21")  # Something to look forward to (as on 16-Nov-2021)
