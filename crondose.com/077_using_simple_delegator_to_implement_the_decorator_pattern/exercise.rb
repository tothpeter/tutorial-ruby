require 'date'

class Invoice
  attr_accessor :name

  def initialize name
    @name = name
  end

  def invoice_date
    Date.new 1988, 9, 29
  end
end

class InvoiceDecorator < SimpleDelegator
  def invoice_month
    invoice_date.month
  end

  def last_name
    name.split.last
  end
end
