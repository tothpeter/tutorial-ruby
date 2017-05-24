class Array
  def remove_anomalies min_value, max_value
    select { |item| item.between? min_value, max_value }
  end
end
