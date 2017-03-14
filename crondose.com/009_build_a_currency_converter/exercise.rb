class Exercise
  def self.perform ammount, location
    currency_format = get_currency_format location

    output = currency_format % ammount

    location.downcase != "uk" ? output : output.gsub(".", ",")
  end

  def self.get_currency_format location
    currency_format_map[location.downcase.to_sym]
  end

  def self.currency_format_map
    {
      us:    "$%.2f",
      japan: "¥%.0f",
      uk:    "£%.2f"
    }
  end


  def self.perform_v2 ammount, location
    case location.downcase
    when "us"
      "$%.2f" % ammount
    when "japan"
      "$%.0f" % ammount
    when "uk"
      ("$%.2f" % ammount).gsub(".", ",")
    end
  end
end
