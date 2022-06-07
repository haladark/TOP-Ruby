
#assuming a profit is always >= 0
# you must buy before you can sell

def stock_picker(prices)
    days_compination = Array.new
    max = 0
    profit = nil

    for i in 0..(prices.length-1) do
        for j in (i+1)..(prices.length-1) do
            profit = prices[j]-prices[i]
            if profit > max
                max = profit
                days_compination = [i,j]

            end
        end
    end
  if days_compination.empty?
    puts "Prices are going higher everyday!"
  else
    puts "Days compination is #{days_compination} for a profit of #{max}"
  end
end

stock_picker([17,3,6,9,15,8,6,1,10])