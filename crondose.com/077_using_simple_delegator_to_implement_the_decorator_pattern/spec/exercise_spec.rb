require './exercise'

describe InvoiceDecorator do
  before do
    @invoice = Invoice.new("Kalina Tech")
    @decorated_invoice = InvoiceDecorator.new(@invoice)
  end

  it "can take an invoice obj as an argument and add functionality on top of the class" do
    expect(@decorated_invoice.invoice_month).to eq(9)
  end

  it "can work with data from the class" do
    expect(@decorated_invoice.last_name).to eq("Tech")
  end

  it "can access the decorated object" do
    expect(@decorated_invoice.__getobj__).to eq(@invoice)
  end
end
