module Exercise
  def self.fraction_calculator raw_fraction_1, raw_fraction_2, operator
    fraction_1 = parse_fraction raw_fraction_1
    fraction_2 = parse_fraction raw_fraction_2

    result_fraction = case operator
    when "*"
      multiply_fractions fraction_1, fraction_2
    when "/"
      devide_fractions fraction_1, fraction_2
    when "+"
      add_fractions fraction_1, fraction_2
    when "-"
      substract_fractions fraction_1, fraction_2
    else
      throw ArgumentError "wrong operator"
    end

    simplify_fraction(result_fraction).join '/'
  end

  private

  def self.parse_fraction fraction
    fraction.split('/').map(&:to_i)
  end

  def self.simplify_fraction fraction
    gcd = fraction[0].gcd fraction[1]

    [
      fraction[0] / gcd,
      fraction[1] / gcd
    ]
  end

  def self.convert_common_ground fraction_1, fraction_2
    new_fraction_1 = [
      fraction_1[0] * fraction_2[1],
      fraction_1[1] * fraction_2[1],
    ]

    new_fraction_2 = [
      fraction_2[0] * fraction_1[1],
      fraction_1[1] * fraction_2[1],
    ]

    [
      new_fraction_1,
      new_fraction_2,
    ]
  end

  def self.multiply_fractions fraction_1, fraction_2
    [
      fraction_1[0] * fraction_2[0],
      fraction_1[1] * fraction_2[1]
    ]
  end

  def self.devide_fractions fraction_1, fraction_2
    [
      fraction_1[0] * fraction_2[1],
      fraction_1[1] * fraction_2[0]
    ]
  end

  def self.add_fractions fraction_1, fraction_2
    common_ground_fraction_1, common_ground_fraction_2 = convert_common_ground fraction_1, fraction_2

    [
      common_ground_fraction_1[0] + common_ground_fraction_2[0],
      common_ground_fraction_1[1]
    ]
  end

  def self.substract_fractions fraction_1, fraction_2
    common_ground_fraction_1, common_ground_fraction_2 = convert_common_ground fraction_1, fraction_2

    [
      common_ground_fraction_1[0] - common_ground_fraction_2[0],
      common_ground_fraction_1[1]
    ]
  end
end

module ExerciseWithRational
  def self.fraction_calculator fraction_1, fraction_2, operator
    num_1 = Rational fraction_1
    num_2 = Rational fraction_2

    result = case operator
    when "*" then num_1 * num_2
    when "/" then num_1 / num_2
    when "+" then num_1 + num_2
    when "-" then num_1 - num_2
    else
      throw ArgumentError "wrong operator"
    end

    result.to_s
  end
end
