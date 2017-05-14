require './exercise'

describe Sale do
  describe "#place_order" do
    it "calculates the correct tax amount if source is online or AZ" do
      s = Sale.new(500, 'AZ')
      expect(s.place_order).to eq(530.0)
    end

    it "Ensures that an InvoiceHelper module has been included in the class" do
      s = Sale.new(500, 'AZ')
      expect(Sale.included_modules.first).to eq(InvoiceHelper)
    end
  end
end
