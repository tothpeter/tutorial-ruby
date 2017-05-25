def string_infinity_generator limit
  result = []

  (1..Float::INFINITY).each do |i|
    result << i.to_s
    break if i == limit
  end

  result
end
