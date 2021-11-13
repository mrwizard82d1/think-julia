# Iteration

# Reassignment

x = 5
println(x)
x = 7
println(x)

a = 5
b = a
a == b
a = 3
a == b

# Updating variables

x = x + 1

y = y + 1

y = 0
y = y + 1

# The `while` statement

function countdown(n)
    while n > 0
        print(n, " ")
        n = n - 1
    end
    println("Blastoff!")
end
countdown(3)

function seq(n)
    while n != 1
        println(n)
        if n % 2 == 0
            n = n ÷ 2
        else
            n = n * 3 + 1
        end
    end
end
seq(16)
seq(3)

# Break

while true
    print("> ")
    line = readline()
    if line == "done"
        break
    end
    println(line)
end
println("Done!")

for i in 1:10
    if i % 3 == 0
        continue
    end
    print(i, " ")
end

# Square root

a = 4
x = 3
y = (x + a/x) / 2
x = y
y = (x + a/x) / 2
x = y
y = (x + a/x) / 2
x = y
y = (x + a/x) / 2
x = y
y = (x + a/x) / 2

x = 4
while true
    println(x)
    y = (x + a/x) / 2
    if y == x
        break
    end
    x = y
end

x = 5
ε = 1e-7
while true
    println(x)
    y = (x + a/x) / 2
    if abs(y - x) < ε
        break
    end
    x = y
end
