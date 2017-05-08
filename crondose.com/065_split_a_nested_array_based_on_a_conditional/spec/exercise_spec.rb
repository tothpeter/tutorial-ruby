require './exercise'

describe Exercise do
  describe ".invoice_filter" do
    it "splits invoices over 300" do
      Invoice = Struct.new(:title, :total, :category)

      google   = Invoice.new('Google', 500, 'SEM')
      facebook = Invoice.new('Facebook', 1000, 'Social')
      linkedIn = Invoice.new('LinkedIn', 200, 'Social')

      invoices = [google, facebook, linkedIn]

      expect(Exercise.invoice_filter(invoices).first).to eq([google, facebook])
      expect(Exercise.invoice_filter(invoices).last).to eq([linkedIn])
    end
  end
end
