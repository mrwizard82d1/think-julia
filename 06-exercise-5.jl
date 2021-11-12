# Exercise 6-5

# Ackermann function

function ack(m, n)
    if !((m isa Int64) && (n isa Int64))
        error("Arguments must be integer values.")
    elseif !(m ≥ 0 && n ≥ 0)
        error("Argument m must be non-negative")
    elseif m == 0
        return n + 1
    elseif m > 0 && n == 0
        return ack(m - 1, 1)
    elseif m > 0 && n > 0
        return ack(m - 1, ack(m, n - 1))
    end
end

println("ack(0, 7133) = $(ack(0, 7133))")
println("ack(1, 1) = $(ack(1, 1))")
println("ack(3, 4) = $(ack(3, 4))")
