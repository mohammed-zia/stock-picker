def stock_picker(array)
  # Initialise two pointers and variables
  left = 0
  right = 1
  max_profit = 0
  days = []
  buy = 0
  sell = 0

  # For each price in prices
  array.each do
    # While loop to set iteration length
    while right < array.size
        # If the buy price is less than the sell price 
        if array[left] < array[right]
            # Set current profit to the difference
            current_profit = array[right] - array[left]
            # If the profit in the current iteration is greater than the max profit seen so far, overwrite it and record the buy/sell "days"
            if current_profit > max_profit
                max_profit = current_profit
                buy = left
                sell = right
            end
        # If the buy price is greater than the sell price, move the buy day forwards one
        else
            left += 1
        end
        # Regardless of what happens, move the sell day forward
        right += 1
    end
    # If the while loop breaks we've come to the end of the array
    # Push the current best buy/sell values ("days") to an array and return it
    days.push(buy)
    days.push(sell)
    return days
  end
end

x = stock_picker([17,3,6,9,15,8,6,1,10])
p x
