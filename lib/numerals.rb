class NumeralCalculator
  def initialize
    @numeral = ""
    @integer = 10
    @letters = ["M", "D", "C", "L", "X", "V", "I"]
    @number = [1000, 500, 100, 50, 10, 5, 1]
  end

  def split_integer(letter, value)
    if @integer >= value
      (@integer / value).times do
        @numeral << letter
      end
      @integer = @integer % value
    end
  end

  def penultimate(letter, next_letter, value, next_value)
    if @integer % value >= (value - next_value)
      @numeral << (next_letter + letter)
      @integer = @integer - (value - next_value)
    end
  end

  def split(letter, next_letter, third_letter, value, next_value, third_value)
    penultimate(letter, third_letter, value, third_value)
    split_integer(next_letter, next_value)
    penultimate(next_letter, third_letter, next_value, third_value)
  end

  def roman_numeral(integer_input)
    @numeral = ""
    @integer = integer_input

    split_integer("M", 1000)

    penultimate("M", "C", 1000, 100)
    split_integer("D", 500)

    penultimate("D", "C", 500, 100)
    split_integer("C", 100)

    penultimate("C", "X", 100, 10)
    split_integer("L", 50)

    penultimate("L", "X", 50, 10)
    split_integer("X", 10)
    
    penultimate("X", "I", 10, 1)
    split_integer("V", 5)

    penultimate("V", "I", 5, 1)    
    split_integer("I", 1)
  
    @numeral
  end

end