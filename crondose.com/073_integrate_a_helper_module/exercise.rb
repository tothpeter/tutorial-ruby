module InvoiceHelper
  def textable? source
    ["online", "AZ"].include? source
  end
end

class Sale
  include InvoiceHelper

  def initialize total, source
    @total  = total.to_f
    @source = source
  end

  def place_order
    if textable? @source
      @total + @total * 0.06
    else
      @total
    end
  end
end
