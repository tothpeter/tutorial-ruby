class Exercise
  def self.perform headers, *data
    headers.zip *data
  end
end
