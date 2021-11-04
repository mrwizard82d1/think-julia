# Rightjustify

function rightjustify(text :: AbstractString)
    text_length = length(text)
    last_column = 70
    start_column = last_column - text_length
    fill = " " ^ start_column
    print(fill)
    println(text)
end

function testrightjustify()
    header = "0123456789" ^ 7
    println(header)
    rightjustify("")
    rightjustify("a")
    rightjustify("Hello, Julia World!")
end

testrightjustify()
