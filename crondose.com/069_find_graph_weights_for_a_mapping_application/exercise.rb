class Exercise
  def self.route_generator total_distance, nodes
    count_of_blocks = nodes.reduce(0) { |sum, node| sum += node[1] }
    total_distance.to_f / count_of_blocks.to_f
  end
end
