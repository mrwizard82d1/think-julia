# Conditionals and recursion

# Floor division

# The floor division operator, '÷', divdes two numbers and 
# rounds *down* to the nearest integer.
minutes = 105
minutes / 60

hours = minutes ÷ 60

remainder = minutes  - hours * 60

# The modulus operator, '%', returns the remainder of dividing 
# one number by the other.
remainder = minutes % 60

# Other uses for modulus

# Determining of one number evenly divides another (is a factor)
4 % 3
4 % 2

# Extracting decimal digits

# Rightmost digit
314 % 10
# Rightmost *two* digits
314 % 100

# Boolean expressions

# A boolean expression is either `true` or `false` (neither integers nor strings)
5 == 5
5 == 5 + eps(5.)

typeof(true)
typeof(false)

# Other Boolean operators
5 != 5
5 ≠ 5 + eps(5.)
5 > 6
5 < 6
5 >= 5
5 ≥ 6
5 <= 6
5 ≤ 6

# Logical operators

# The three logical operators are `&&`, `||` and `!`.

x = 5
x > 0 && x < 10
x = 10
x > 0 && x < 10

n = 6
n % 2 == 0 || n % 3 == 0
n = 4
n % 2 == 0 || n % 3 == 0
n = 9
n % 2 == 0 || n % 3 == 0
n = 7 
n % 2 == 0 || n % 3 == 0

# Both `&&` and `||` associate *right*, but the precedence 
# of `&&` is *higher* than that of `||`

x = 5
y = 6
!(x > y)
y = 5
!(x > y)
y = 4
!(x > y)

# Conditional execution

# The `if` statement
if x > 0
    println("x is positive")
end

# No statements are allowed in body of `if` statement
if x < 0
    # TODO: not written yet
end

println("x=", x)
if x % 2 == 0
    println("x is even")
else
    println("x is odd")
end

if x < y
    println("x is less than y")
elseif x > y
    println("x is greater than y")
else
    println("x and y are equals")
end

# No branches need be taken. The code then continues *after* the 
# conditional statement.

function draw_a()
    println('a')
end

function draw_b()
    println('b')
end

function draw_c()
    println('c')
end

choice = 'd'
if choice == 'a'
    draw_a()
elseif choice == 'b'
    draw_b()
elseif choice == 'c'
    draw_c()
end

# Nested conditionals

println("x=$(x)")
println("y=$(y)")
if x == y
    println("x and y are equal")
else
    if x < y
        println("x is less than y")
    else
        println("x is greater than y")
    end
end

# Logical operators can sometimes be used to simplify nested
# conditionals
println("x=$(x)")
if 0 < x
    if x < 10
        println("x is a positive, single-digit number")
    end
end

if 0 < x && x < 10
    println("x is a positive, single-digit number")
end

# Julia simplifies this syntax by allowing multiple comparisons
# separated by an implicit `&&`
if 0 < x 10
    println("x is a positive, single-digit number")
end