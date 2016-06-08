class StringCalculator
  def initialize
    @negatives_array = []
  end

  def add(string)
    return 0 if string.empty?

    clean_array_of_numbers = string_array(string)
    negatives_check(clean_array_of_numbers)

    if negatives_exists?
      return "negatives not allowed #{@negatives_array.join(', ')}"
    else
      return clean_array_of_numbers.reduce(:+)
    end
  end

  private

    def string_array(string)
      delimiter = ','
      if string[0] == '/'
        delimiter = string[2]
        string_with_delimiter = string[5..-1]
      else
        string_with_delimiter = string.gsub('\n', ',')
      end
      array_of_numbers(string_with_delimiter, delimiter)
    end

    def array_of_numbers(string, delimiter)
      string.split(delimiter).map(&:to_i)
    end

    def negatives_check(string_array)
      @negatives_array = string_array.select { |number| number < 0 }
    end

    def negatives_exists?
      !@negatives_array.empty?
    end
end
