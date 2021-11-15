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
