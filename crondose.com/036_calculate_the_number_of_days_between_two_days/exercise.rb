require "date"

class Exercise
  def self.day_counter
    (Date.new(2016, 12, 25) - Date.new(2004, 07, 01)).to_i
  end
end
