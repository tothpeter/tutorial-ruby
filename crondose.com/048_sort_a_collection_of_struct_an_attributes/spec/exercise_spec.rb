require './exercise'

describe Exercise do
  Invoice = Struct.new(:name, :total, :category)

  invoice1 = Invoice.new "Goodle", 500, "Marketing"
  invoice2 = Invoice.new "Amazon", 1000, "eComorce"
  invoice3 = Invoice.new "Yahoo", 300, "Marketing"

  before do
    @invoices = [ invoice1, invoice2, invoice3 ]
  end

  describe ".total_sorter" do
    it "sorts a set of invoices by their totals" do
      expect(Exercise.total_sorter(@invoices).first.total).to eq(300)
      expect(Exercise.total_sorter(@invoices).last.total).to eq(1000)
    end
  end

  describe ".total_sorter_desc" do
    it "sorts a set of invoices by their totals" do
      expect(Exercise.total_sorter_desc(@invoices).first.total).to eq(1000)
      expect(Exercise.total_sorter_desc(@invoices).last.total).to eq(300)
    end
  end
end
