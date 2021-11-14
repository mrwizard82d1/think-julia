# Exercise 7-4

# estimatepi()

function estimatepi()
    k = 0
    sum = 0
    while true
        term = (factorial(4k) * (1103 + 26309k)) / (factorial(k)^4 * 396^4k)
        if term < 1e-15
            break
        end

        sum = sum + term
        k = k + 1
    end

    1 / ((2 * √2) / 9801 * sum)
end
estimate = estimatepi()
println("estimatepi() returns ", estimate)
diff = abs(π - estimate)
println("abs(π - estimate) = ", diff)
