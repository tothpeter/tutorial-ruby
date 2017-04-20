class Exercise
  def self.vowel_remover list
    vowels = %w{a e i o u}

    list.reject do |item|
      vowels.include? item
    end
  end

  def self.vowel_remover_with_grep list
    list.grep /[^aeiou]/
  end
end
