# Exercise 5-3

# Fermat's last theorem

# Although one can try running this script in the REPL, the 
# `readline` calls make this problematic (one must press 
# 'ENTER' twice sometimes), it is easiest to run this code
# as a script.

function checkfermat(a, b, c, n)
    if n > 2 && a^n + b^n == c^n
        println("Holy mathematics, Batman, Fermat was wrong!")
    else
        println("No, that doesn't work.")
    end
end

# checkfermat(1, 2, 3, 1)
# checkfermat(3, 4, 5, 2)
# checkfermat(1, 1, 2, 3)

println("Checking Fermat's last theorem")

print("Integer a? ")
candidate_a = readline()
a = parse(Int64, candidate_a)

print("Integer b? ")
candidate_b = readline()
b = parse(Int64, candidate_b)

print("Integer c? ")
candidate_c = readline()
c = parse(Int64, candidate_c)

print("Integer n? ")
candidate_n = readline()
n = parse(Int64, candidate_n)

checkfermat(a, b, c, n)