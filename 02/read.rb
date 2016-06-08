# Methods
def square(number)
  number * number
end

square(4)

def repeater(n)
  n.times do
    puts square(n)
  end
end

repeater(5)

# Block & Yield

def email_to(email, &block)
  puts "Hola #{email}"
  yield if block_given?
  puts "Fin del mensaje"
end

email_to "jg.moura.almeida@gmail.com" do
  puts "¿Como te va?"
end

# Lambda & Reusing code

say_hi = -> { puts "Hello World!" }
say_hi.yield

square = -> (number) { number * number }
puts square.yield(10)

# Maps

array_plus_one = [1,2,3,4,5].map {|value| value + 1}
puts array_plus_one

# Normal call
(1..5).map {|n| n * n}
# Function call
#(1..5).map(&:square)
# Lambda call
(1..5).map(&square)

# Reduce

[1,2,3,4,5].reduce { |n, acum| n + acum}
[1,2,3,4,5].reduce {:+}
