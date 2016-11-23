require 'benchmark'

class Array
  def quicksort
    return self if self.size <= 1
    pivot = self[0]
    right = Array.new
    left = Array.new
    (1..self.size - 1).each do |i|
      if self[i] <= pivot
        left.push(self[i])
      else
        right.push(self[i])
      end
      left.quicksort
      right.quicksort
      return left + [pivot] + right
    end
  end
end

sample = (0..50).sort_by { rand }

puts Benchmark::CAPTION
puts Benchmark.measure { sample.quicksort }

puts sample.quicksort
