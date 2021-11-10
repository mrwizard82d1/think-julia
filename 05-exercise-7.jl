# Exercise 5-7

# Koch curve

using ThinkJulia

"""
koch(t, x)

Draw a Koch curve.

Args:
    t: turtle used for drawing
    x: integer length to be drawn
"""
function koch(t, x)
    if x == 0
        return
    end

    if x < 3
        forward(t, x)
    end

    koch(t, x ÷ 3)
    turn(t, -60)

    koch(t, x ÷ 3)
    turn(t, 120)

    koch(t, x ÷ 3)
    turn(t, -60)

    koch(t, x ÷ 3)
end

function draw_koch(x)
    turtle = Turtle()
    @svg begin
        koch(turtle, x)
    end
end

"""
snowflake(t, x)

Draw a snowflake using three Koch curves.

Args:
    t: turtle used for drawing
    x: length of snowflake / Koch curve
"""
function snowflake(t, x)
    koch(t, x)
    turn(t, 120)
    koch(t, x)
    turn(t, 120)
    koch(t, x)
end

function draw_snowflake(x)
    turtle = Turtle()
    @svg begin
        snowflake(turtle, x)
    end
end

"""
koch_antisnowflake(t, x)

I think this draws a Koch 'antisnowflake' 
(See https://en.wikipedia.org/wiki/Koch_snowflake)

Args:
    t: turtle used for drawing
    x: length of curve
"""
function koch_antisnowflake(t, x)
    if x == 0
        return
    end

    if x < 3
        forward(t, x)
    end

    koch(t, x ÷ 3)
    turn(t, -90)

    koch(t, x ÷ 3)
    turn(t, 180)

    koch(t, x ÷ 3)
    turn(t, -90)

    koch(t, x ÷ 3)
end

function draw_koch_antisnowflake(x)
    turtle = Turtle()
    @svg begin
        koch_antisnowflake(turtle, x)
        turn(turtle, 120)
        koch_antisnowflake(turtle, x)
        turn(turtle, 120)
        koch_antisnowflake(turtle, x)
    end
end
