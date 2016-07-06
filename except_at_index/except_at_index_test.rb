gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'except_at_index'

class ExceptAtIndexTest < Minitest::Test
  def products
    ::ProductOfAllIntsExceptAtIndex.new
  end

  def test_returns_product_of_all_ints_except_at_index
    array1 = [1, 7, 3, 4]
    array2 = [1, 2, 6, 5, 9]

    result1 = [84, 12, 28, 21]
    result2 = [540, 270, 90, 108, 60]

    assert_equal result1, products.get_products_of_all_ints_except_at_index(array1)
    assert_equal result2, products.get_products_of_all_ints_except_at_index(array2)
  end

  def test_array_of_one_element
    array = [10]
    result = [1]

    assert_equal result, products.get_products_of_all_ints_except_at_index(array)
  end

  def test_empty_array
    array = []
    result = []

    assert_equal result, products.get_products_of_all_ints_except_at_index(array)
  end
end
