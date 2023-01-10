
def stock_picker(days)

    d_arr = days.to_a

    lowest_value = d_arr[0]
    lowest_day = 0
    highest_day = 0
    profit = 0
    result = [0, 0]

    d_arr.each_with_index do |value, day|
        if value < lowest_value
            lowest_value = value
            lowest_day = day
        end

        if lowest_day == d_arr.length
            lowest_day - 1
        elsif day == d_arr[0]
            day + 1
        end

        if value - lowest_value > profit
            profit = value - lowest_value
            highest_day = day
            result = [lowest_day, day] #lowest_day is the day of buy, and day is the of sell(last day)
        end
    end

    p "R$#{d_arr[highest_day]} - R$#{d_arr[lowest_value]} == R$#{profit}"
    result
end
p stock_picker([17,3,6,9,15,8,6,1,10])