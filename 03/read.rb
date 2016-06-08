class Person

  def initialize(name, age)
    @name = name
    @age = age
  end

  def age
    @age
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end
end

person = Person.new("Abraham", 27)
puts person.name
puts person.age

class Person
  attr_reader :age
  attr_accessor :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def inspect
    "The person name is: #{name} with age: #{age}"
  end
end

person = Person.new("Abraham", 27)
puts person.name
puts person.age
puts person.inspect

class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def make_sound
    ""
  end
end

class Rhino < Animal
end

rhino = Rhino.new("Rhino")
puts rhino.make_sound

class Duck < Animal
  def make_sound
    "quaaaaaaaaaaack!"
  end
end

class Cow < Animal
  def make_sound
    "quaaaaaaaaaaack!"
  end
end

duck = Duck.new("Hector")
puts duck.make_sound

class Duck
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def make_sound
    "quack!"
  end
end

pato = Duck.new("Hector")
puts pato.make_sound

class Cow
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def inspect
    "the cow name is: #{name}"
  end

  def self.inspect
    "The class of the Cow is: #{self}"
  end

  def make_sound
    "muuuuuuuu!"
  end
end

cow = Cow.new("Lejandro")
puts cow.inspect
puts Cow.inspect

require "ostruct"

class Student < OpenStruct
end

student = Student.new({name: "Abraham", age: 27, last_name: "Kuri"})
puts student.name #=> Abraham
puts student.last_name #=> Kuri

# Modules
# Encapsulates behavior

module Area
  PI = 3.14

  def self.square(side)
    side * side
  end

  def self.circle(radius)
    PI * (radius * radius)
  end
end

puts Area.square(5)
puts Area::PI

module Mailer
  def email_to(email, &block)
    puts "Hello #{email}"
    yield if block_given?
    puts ";)"
  end
end

class User
  extend Mailer
  include Mailer
end

class Admin < ActiveRecord
  include Mailer
end
user = User.new
user.email_to "kurenn@icalialabs.com" do
  puts "Es un mensaje"
end
