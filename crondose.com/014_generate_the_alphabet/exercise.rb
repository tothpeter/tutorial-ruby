module Exercise
  def self.generate_aplhabet
    (97..122).map { |number| number.chr }
  end

  def self.generate_aplhabet_shorter
    ('a'..'z').to_a
  end
end
