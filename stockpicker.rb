require 'pry'

def stock_picker (prices)
    profit = 0
    i = 0 # i represents the index where a stock is bought
    start_index = 0
    end_index = 0

    while i < prices.length do
        j = i + 1; # J is the sell position, has to be after i, the buy position
        while j < prices.length do  
            if (prices[j] - prices[i]) > profit
                profit = prices[j] - prices[i]
                start_index = i
                end_index = j
            end
            j += 1;
        end
        i += 1;
    end
    result = [start_index, end_index]
    p result
end

# Test 
stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12