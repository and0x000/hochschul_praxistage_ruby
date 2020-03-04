# frozen_string_literal: true

## FizzBuzz
class FizzBuzz
  attr_reader :items
  def initialize(items)
    @items = items.map do |item|
      if item % 3 == 0 && item % 5 == 0
        'FizzBuzz'
      elsif item % 3 == 0
        'Fizz'
      elsif item % 5 == 0
        'Buzz'
      else
        item.to_s
      end
    end
  end
end
