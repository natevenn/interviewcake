class ProductOfAllIntsExceptAtIndex

  def get_products_of_all_ints_except_at_index(ints)
    products_before_index = get_products_before_indices(ints)

    total_before_index_with_after_index(ints, products_before_index)
  end

  def get_products_before_indices(ints)
    before_index_total = 1
    before_index_array = []
    i = 0
    while i < ints.length
      before_index_array[i] = before_index_total
      before_index_total *= ints[i]
      i += 1
    end
    before_index_array
  end

  def total_before_index_with_after_index(ints, products_before_index)
    products_except_at_index = products_before_index
    after_index = 1
    i = ints.length - 1
    while i >= 0
      products_except_at_index[i] *= after_index
      after_index *= ints[i]
      i -= 1
    end
    products_except_at_index
  end
end

