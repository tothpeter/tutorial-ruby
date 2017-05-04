class Exercise
  def self.longest_words_with_max_by list, limit
    list.max_by limit, &:length
  end

  def self.longest_words_with_sort_by list, limit
    list.sort_by(&:length).reverse.first(limit)
  end
end
