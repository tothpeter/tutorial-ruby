require "benchmark"

class Exercise
  def self.perform list
    list.inject(list.first) do |memo, item|
      memo > item ? memo : item
    end
  end

  def self.perform2 list
    max_item = list.first

    list.each do |item|
      max_item = item if item > max_item
    end

    max_item
  end

  def self.perform_bad list
    list.sort.last
  end

  def self.run_benchmark
    list = Array.new(10_000_000) { rand 1000 }

    Benchmark.bm(10) do |x|
      x.report("Inject: ") { Exercise.perform(list) }
      x.report("Each: ")   { Exercise.perform2(list) }
      x.report("Bad: ")    { Exercise.perform_bad(list) }
      x.report("Origin: ") { list.max }
    end

  end
end

Exercise.run_benchmark
