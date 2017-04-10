require "date"

class MonthGenerator
  def self.months_with_date_range
    ((Date.new(2017, 01))..(Date.new(2017, 12))).each_with_object([]) do |date, month_array|
      month_array << date.strftime("%B")
    end.uniq
  end

  def self.months
    Date::MONTHNAMES[1..12]
  end
end
