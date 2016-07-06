gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'apple_stocks'

class AppleStockTest < Minitest::Test
  def stock
    ::StockPrice.new
  end

  def yesterday_stocks
    stock_array = stock.stock_prices_yesterday
  end

  def test_stock_price_yesterday_returns_aray
    assert_equal [10, 7, 5, 8, 11, 9], yesterday_stocks
  end

  def test_finds_max_profit
    result = stock.get_max_profit(yesterday_stocks)
    assert_equal 6, result
  end

end
