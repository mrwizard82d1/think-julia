# Recursively repeat a function count times

function do_n(f, n)
    if n ≤ 0
        return
    end

    f()
    do_n(f, n - 1)
end

function printem()
    println("Ola")
end

do_n(printem, 5)
do_n(printem, 0)
do_n(printem, -1)