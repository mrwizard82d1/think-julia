# Exercise 5-6

# Draws a fractal? (part of a snowflake)

using ThinkJulia

function draw(t, length, n)
    if n == 0
        return
    end

    angle = 50
    forward(t, length * n)
    turn(t, -angle)

    draw(t, length, n - 1)
    turn(t, 2 * angle)

    draw(t, length, n - 1)
    turn(t, -angle)

    forward(t, -length * n)
end

turtle = Turtle()
@svg begin
    draw(turtle, 20, 5)
end
