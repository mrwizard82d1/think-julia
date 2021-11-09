# Exercise 5-2

# Calculate days, hours, minutes, seconds since the Unix epoch.


function as_whole_seconds_time_stamp(unix_time_stamp)
    round(Int, unix_time_stamp)
end

function whole_unit(whole_seconds, conversion_factor)
    whole_seconds ÷ conversion_factor
end

function remaining_seconds(whole_seconds, conversion_factor)
    whole_seconds % conversion_factor
end

"""
time_since_epoch(unit_time_stamp)

Prints out the number of days, hours, minutes and seconds since the Unix epoch for the specified `unix_time_stamp`.
"""
function time_since_epoch(unix_time_stamp)
    """
    Convenient conversion factors
    """
    seconds_per_minute = 60
    minutes_per_hour = 60
    seconds_per_hour = minutes_per_hour * seconds_per_minute
    hours_per_day = 24
    seconds_per_day = hours_per_day * minutes_per_hour * seconds_per_minute

    whole_seconds_time_stamp = as_whole_seconds_time_stamp(unix_time_stamp)

    days = whole_unit(whole_seconds_time_stamp, seconds_per_day)
    partial_day_in_seconds = remaining_seconds(whole_seconds_time_stamp, seconds_per_day)

    hours = whole_unit(partial_day_in_seconds, seconds_per_hour)
    partial_hour_in_seconds = remaining_seconds(partial_day_in_seconds, seconds_per_hour)

    minutes = whole_unit(partial_hour_in_seconds, seconds_per_minute)
    seconds = remaining_seconds(partial_hour_in_seconds, seconds_per_minute)

    println("days=", days)
    println("hours=", hours)
    println("minutes=", minutes)
    println("seconds=", seconds)
end

time_since_epoch(time())