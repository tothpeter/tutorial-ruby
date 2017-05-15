require 'attr_extras'

class PurchaseOrder
  attr_accessor_initialize :client, :total

  def generate_order
    "#{client}: #{total}"
  end
end
