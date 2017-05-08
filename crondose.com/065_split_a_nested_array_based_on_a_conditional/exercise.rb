class Exercise
  def self.invoice_filter invoices
    invoices.partition do |item|
      item.total > 300
    end
  end
end
