require 'phone'

# %c - country_code (385)
# %a - area_code (91)
# %A - area_code with leading zero (091)
# %n - number (5125486)
# %f - first @@n1_length characters of number (configured through Phoner::Phone.n1_length), default is 3 (512)
# %l - last characters of number (5486)
# %x - the extension number

class PhoneTools
  def self.phone_builder number:, area_code:, country_code:, extension:
    Phoner::Phone.new({
      number: number,
      area_code: area_code,
      country_code: country_code,
      extension: extension
    })
  end

  def self.phone_parser number
    Phoner::Phone.parse number
  end

  def self.phone_formatter number
    Phoner::Phone.parse(number).format("(%a) %f-%l")
  end

  def self.phone_valid? number
    Phoner::Phone.valid? number
  end
end
