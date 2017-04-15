class Exercise
  def self.weird_alphabet
    ('a'..'z').sort do |left, right|
      if left == 'k'
        1
      else
        left <=> right
      end
    end
  end
end
