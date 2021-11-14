# Exercise 7-2

# mysqrt()

function mysqrt(a)
    ε = 1e-7
    x = a / 3
    while true
        y = (x + a/x) / 2
        if abs(y - x) < ε
            break
        end
        x = y
    end
    x
end

function leftjustify(text :: AbstractString, in_length)
    text_length = length(text)
    last_column = in_length
    pad_length = last_column - text_length
    padding = " " ^ pad_length
    text * padding
end

function rightjustify(text :: AbstractString, in_length)
    text_length = length(text)
    last_column = in_length
    start_column = last_column - text_length
    fill = " " ^ start_column
    fill * text
end

function testsquareroot()
    println(leftjustify("a", 3), 
    " ", leftjustify("mysqrt", 18), 
    " ", leftjustify("sqrt", 18),
    " ", leftjustify("diff", 18))

    for a in 1:9
        my = mysqrt(a)
        base = sqrt(a)
        diff = abs(base - my)
        println(rightjustify(string(Float64(a)), 3), 
                " ", rightjustify(string(my), 18), 
                " ", rightjustify(string(base), 18), 
                " ", rightjustify(string(diff), 22))
    end
end
testsquareroot()