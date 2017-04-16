class Exercise
  def self.total_sorter list
    # list.sort_by do |item|
    #   item.total
    # end

    list.sort_by &:total
  end

  def self.total_sorter_desc list
    list.sort_by(&:total).reverse
  end
end
