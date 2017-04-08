class NullClass
  def method_missing *args
    self
  end

  private

  def respond_to_missing? name, include_private = false
    name.to_s || super
  end
end
