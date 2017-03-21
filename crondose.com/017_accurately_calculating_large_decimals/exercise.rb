require 'bigdecimal'

module Exercise
  def self.large_number_processor num1, num2
    (BigDecimal(num1) * BigDecimal(num2)).to_s('F')
  end
end
