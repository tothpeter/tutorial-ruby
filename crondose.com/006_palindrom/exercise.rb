class Exercise
  def self.perform word
    word.downcase == word.downcase.reverse
  end

  def self.perform_with_loop word
    index_start = 0
    index_end = word.length - 1

    while index_start < index_end
      return false if word[index_start].downcase != word[index_end].downcase

      index_start += 1
      index_end -= 1
    end

    true
  end
end
