require './exercise'

describe PhoneTools do
  it "can properly build a phone number" do
    phone_number_params = {
      number: "1234567",
      area_code: "480",
      country_code: "1",
      extension: "333"
    }

    phone = PhoneTools.phone_builder phone_number_params

    expect(phone.area_code).to eq("480")
  end

  describe "#phone_parser" do
    it "can properly parse a phone number" do
      expect(PhoneTools.phone_parser("+16021234567").area_code).to eq("602")
    end
  end

  describe "#phone_formatter" do
    it "can format a phone number" do
      expect(PhoneTools.phone_formatter "+16021234567").to eq("(602) 123-4567")
    end
  end

  describe "#phone_valid" do
    it "can verify if a phone number is valid" do
      expect(PhoneTools.phone_valid? "+16021234567").to eq(true)
    end
  end
end
