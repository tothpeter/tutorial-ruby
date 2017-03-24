class Exercise
  def self.pseudo_random num
    srand 1

    Fiber.new do
      num.times do
        Fiber.yield rand 100
      end
    end
  end
end
