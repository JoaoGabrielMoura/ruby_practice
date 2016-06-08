class FizzBuzz

  def multiple_of?(criteria:, number:)
    number % criteria == 0
  end

  def includes_number?(criteria, number)
    digits = number.to_s.chars.map(&:to_i)
    digits.include?(criteria)
  end

  def stringify(number)
    return "FizzBuzz" if turns_to_fizz_buzz?(number)
    return "Fizz" if turns_to_fizz?(number)
    return "Buzz" if turns_to_buzz?(number)
    return "#{number}"
  end

  def string_builder(limit)
    final_string = ""
    (1..limit).each do |number|
      final_string << stringify(number) + " "
    end
    final_string.chop
  end

  private
    def turns_to_fizz?(number)
      multiple_of?(criteria: 3, number: number) || includes_number?(3, number)
    end

    def turns_to_buzz?(number)
      multiple_of?(criteria: 5, number: number) || includes_number?(5, number)
    end

    def turns_to_fizz_buzz?(number)
      (multiple_of?(criteria: 3, number: number) && multiple_of?(criteria: 5, number: number)) || (includes_number?(5, number) && includes_number?(3, number))
    end
end
