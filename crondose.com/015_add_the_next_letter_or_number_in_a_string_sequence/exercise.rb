module Exercise
  def self.increment_value str
    str + str.next.slice(-1)
  end
end
