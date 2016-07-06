class StockPrice

  def stock_prices_yesterday
    [10, 7, 5, 8, 11, 9]
  end

  def get_max_profit(stock_prices)
    min_price = stock_prices[0]
    max_profit = stock_prices[1] - stock_prices[0]
    stock_prices.each_with_index do |current_price, index|
      if index == 0 then next end
      potential_profit = current_price - min_price

      max_profit = [max_profit, potential_profit].max
      min_price = [min_price, current_price].min
    end
    max_profit
  end
end
