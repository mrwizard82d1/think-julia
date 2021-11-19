# Exercise 8-7

c = 'x'
typeof(c)

c = Int('x')
typeof(c)

Char(120)

Char(0x110000)
isvalid(Char, 0x110000)

'\u0'
'\u70'
'\u2200'
'\U10ffff'

Int('\0')
Int('\t')
Int('\n')
Int('\e')
Int('\x7f')
Int('\177')

'A' < 'a'
'A' <= 'a' <= 'Z'
'A' <= 'X' <= 'Z'
'x' - 'a'
'A' + 1

str = "Hello, Julia world\n"
"""Contains "quote" characters"""

str[begin]
str[1]
str[6]
str[end]

firstindex(str)
lastindex(str)
length(str)  # Same because str is ASCII characters only

str[end - 1]
str[end - 2]

str[begin - 1]
str[end + 1]

str[4:9]
str[6]
str[6:6]

str = "long string"
substr = SubString(str, 1, 4)
typeof(substr)

s = "\u2200 x \u2203 y"
length(s)
sizeof(s)

s[1]
s[2]
s[3]
s[4]

nextind(s, 1)
nextind(s, 4)

s[end]
s[end - 1]
s[end - 2]

prevind(s, lastindex(s), 2)
s[prevind(s, lastindex(s), 2)]
s[7]

# The previous arguments to `previndex` can be simplified
s[prevind(s, end, 2)]

# But only in an index
prevind(s, end, 2)

s[1:1]

s[1:2]

s[1:4]
s[1:nextind(s, 1)]

lastindex(s)
length(s)

# An inefficient way to iterate through the characters of `s`
for i = firstindex(s):lastindex(s)
    try
        println(s[i])
    catch
        # ignore the index error
    end
end

# The efficient way to iterate through characters of `s`
for c in s
    println(c)
end

# Returns a 7-element vector of all valid character indices
collect(eachindex(s))

# Access raw bytes using `codeunit(s, i)`
for i in 1:sizeof(s)
    @show (codeunit(s, i))
end

# Julia attempts to minimize errors due to invalid characters
# in strings
s = "\xc0\xa0\xe2\x88\xe2|"
foreach(display, s)

isvalid.(collect(s))

s2 = "\xf7\xbf\xbf\xbf"
foreach(display, s2)

# Concatenation

greet = "Hello"
whom = "Julia"
string(greet, " ", whom, "\n")

greet * " " * whom * "\n"

# Note that one **can** concatenate **invalid** UTF-8 strings. 
# The resulting string may contain different characters than
# the input strings, and its number of characters may be 
# **lower** than the sum of the characters of the concatenated
# strings.

a, b = "\xe2\x88", "\x80"
c = a * b
length(a)
length(b)
length(c)

collect.([a, b, c])
length.([a, b, c])

# Interpolation

"$(greet), $(whom).\n"
"greet * ' ' * whom = $(greet * " " * whom)"
"$(greet * " " * whom)"

"1 + 2 = $(1 + 2)"

v = [1, 2, 3]
"v: $(v)"

c = 'x'
"Hi, $c"

"Hi, $whom"
print("I have \$100 in my account.\n")

# Triple-quoted string literals
