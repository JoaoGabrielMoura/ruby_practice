# Write a script that gets the name and age of 3 people (name, age)
# Store them in an people of hashes named people e.g. {name: 'Adrian', age: 29}
# Further steps:
# 1. Select only the person who is under 20 years
# 2. Select only the persons with name starting with 'a'
# 3. Sort the persons by age, from young to old

class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def under_twenty?
      @age < 20
    end
  end

  def starts_with(char = 'a')
    @name[0] == char
  end
end

pedro = Person.new("Pedro", 18)
gabriel = Person.new("Gabriel", 20)
victor = Person.new("Victor", 25)
people = [pedro, gabriel, victor]

puts people.select { |person| person.under_twenty? }
puts people.select { |person| person.starts_with('a') }
puts people.sort_by { |person| person.age }
#puts people.sort_by(&:age)
