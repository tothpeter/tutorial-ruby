class Completion
  def initialize number_of_guides:, total_completed:
    @number_of_guides = number_of_guides
    @total_completed  = total_completed
  end

  def mark_one_complete
    @total_completed += 1
  end

  def completed_percentage
    @total_completed.to_f / @number_of_guides.to_f
  end
end
