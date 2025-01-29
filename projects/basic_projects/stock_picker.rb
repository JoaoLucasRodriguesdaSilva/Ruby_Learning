def stock_picker(price_per_day)
  days = [0, 0]
  profit = 0
  for buy in 0...price_per_day.length
    for sell in buy...price_per_day.length
      aux_profit = price_per_day[sell] - price_per_day[buy]
      if aux_profit > profit
        profit = aux_profit
        days = [buy, sell]
      end
    end
  end
  p days
end

stock_picker([17,3,6,9,15,8,6,1,10])