class Calculator

  def add(*args)
    args.reduce(:+)
  end

  def subtract(*args)
    args.reduce(:-)
  end

  def multiply(*args)
    args.reduce(:*)
  end

  def divide(*args)
    args.each_with_index do |arg_element, index|
      if arg_element == 0 && index > 0
        return "Undefined"
      end
    end
    args.reduce(:/)
  end
end
