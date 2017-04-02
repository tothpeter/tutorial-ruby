class User
  attr_accessor :name, :email

  def initialize
    yield self if block_given?
  end
end
