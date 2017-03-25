class Array
  def average
    sum = reduce(:+)
    sum / length
  end
end
