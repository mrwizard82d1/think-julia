# Exercise 7-3

# evalloop()

function evalloop()
    while true
        print("> ")
        in_text = readline()
        if in_text == "done"
            return
        end

        expr = Meta.parse(in_text)
        println(eval(expr))
    end
end
evalloop()
