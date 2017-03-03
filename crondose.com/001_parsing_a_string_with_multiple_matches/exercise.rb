class Exercise
  def self.perform str
    result = /(\d+)%$/.match str
    result[1].to_i
  end

  def self.perform2 str
    str.scan(/\d+/).last.to_i
  end
end
