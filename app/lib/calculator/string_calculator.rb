module Calculator
  class StringCalculator
    def self.add(numbers)
      return 0 if numbers.empty?
      numbers = numbers.split.map(&:to_i)
      return numbers.first if numbers.length == 1
    end
  end
end
