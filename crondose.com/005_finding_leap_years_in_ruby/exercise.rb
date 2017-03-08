require "date"

class Exercise
  def self.perform
    # (1904..1999).step(4).to_a
    (1900..1999).step(4).select { |year| Date.new(year).leap? }
  end
end
