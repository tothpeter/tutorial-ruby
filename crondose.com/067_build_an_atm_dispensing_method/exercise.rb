class Exercise
  def self.atm required_ammount, available_denominations
    result = {}

    available_denominations.each do |denomination|
      result[denomination] = required_ammount / denomination

      required_ammount -= result[denomination] * denomination
    end

    result
  end

  def self.atm_with_reduce required_ammount, available_denominations
    available_denominations.reduce({}) do |result, denomination|
      result[denomination] = required_ammount / denomination

      required_ammount -= result[denomination] * denomination

      result
    end
  end

  def self.atm_with_divmod required_ammount, available_denominations
    result = {}

    available_denominations.each do |denomination|
      result[denomination], required_ammount = required_ammount.divmod denomination
    end

    result
  end
end
