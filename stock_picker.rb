def stock_picker(stock_prices_array)
  highest_return = 0
  i = 0
  pair_of_days = []
  while i < stock_prices_array.size - 1
    buy_price = stock_prices_array[i]
    k = i + 1
    while k < stock_prices_array.size
      sell_price = stock_prices_array[k]
      if sell_price - buy_price > highest_return
        highest_return = sell_price - buy_price
        pair_of_days[0], pair_of_days[1] = i, k
      end
      k += 1
    end
    i += 1
  end
  return pair_of_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])