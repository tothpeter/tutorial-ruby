require './exercise'

describe PurchaseOrder do
  describe "attr_extras gem integration" do
    it "can be created with a client and total" do
      po = PurchaseOrder.new("Google", 500)
      expect(po.generate_order).to eq("Google: 500")
    end

    it "allows the client attr to be changed" do
      po = PurchaseOrder.new("Google", 500)
      po.client = "Yahoo"
      expect(po.client).to eq("Yahoo")
    end
  end
end
