# frozen_string_literal: true

## RomanNumber
#
# https://en.wikipedia.org/wiki/Roman_numerals
#
class RomanNumber
  attr_reader :roman
  def initialize(number)
    @arabian = number
    @roman = ''
    while number >= 1000
      @roman += 'M'
      number -= 1000
    end
    while number >= 900
      @roman += 'CM'
      number -= 900
    end
    while number >= 500
      @roman += 'D'
      number -= 500
    end
    while number >= 400
      @roman += 'CD'
      number -= 400
    end
    while number >= 100
      @roman += 'C'
      number -= 100
    end
    while number >= 90
      @roman += 'XC'
      number -= 90
    end
    while number >= 50
      @roman += 'L'
      number -= 50
    end
    while number >= 40
      @roman += 'XL'
      number -= 40
    end
    while number >= 10
      @roman += 'X'
      number -= 10
    end
    while number >= 9
        @roman += 'IX'
        number -= 9
    end
    while number >= 5
        @roman += 'V'
        number -= 5
    end
    while number >= 4
      @roman += 'IV'
      number -= 4
    end
    while number >= 1
        @roman += 'I'
        number -= 1
    end
  end
end
