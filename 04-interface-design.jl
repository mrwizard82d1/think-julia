# Case study: interface design

# Uses the `ThinkJulia` module that is available from
# `https://github.com/benLauwens/ThinkJulia.jl`. 
#
# Create an environment and add this package using the package
# manager mode. (Entered by pressing the right bracket 
# (']') key.)
#
# Although the book describes using `JuliaBox` to run the code,
# I have decided to use `IJulia` instead. (Must also be added to
# the environment.)

"""
polyline(t, n, len, angle)

Draws `n` line segments, each of length, `len`, and rotated by 
`angle` (degrees) relative to the previous line line segment, 
using the turtle, `t`
"""
function polyline(t, n, len, angle)
    for i in 1:n
        forward(t, len)
        turn(t, angle)
    end
end