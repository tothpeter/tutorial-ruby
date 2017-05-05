class Exercise
  def self.longest_word_with_flat_map list
    list.flat_map(&:split).max_by &:length
  end

  def self.longest_word list
    list.join(" ").split.max_by &:length
  end
end
