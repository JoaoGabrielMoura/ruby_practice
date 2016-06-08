require 'spec_helper'
require './fizz_buzz'

describe FizzBuzz do
  let(:fizz_buzz) {FizzBuzz.new}

  describe "#multiple_of?" do
    it 'returns true for (3, 6)' do
      expect(fizz_buzz.multiple_of?(criteria: 3, number: 6)).to eql(true)
    end

    it 'returns false for (3, 5)' do
      expect(fizz_buzz.multiple_of?(criteria: 3, number: 5)).to eql(false)
    end

    it 'returns true for (5, 10)' do
      expect(fizz_buzz.multiple_of?(criteria: 5, number: 10)).to eql(true)
    end

    it 'returns false for (5, 8)' do
      expect(fizz_buzz.multiple_of?(criteria: 5, number: 8)).to eql(false)
    end
  end

  describe "#includes_number?" do
    it 'returns true for (3, 33)' do
      expect(fizz_buzz.includes_number?(3, 33)).to eql(true)
    end

    it 'returns true for (5, 15)' do
      expect(fizz_buzz.includes_number?(5, 15)).to eql(true)
    end

    it 'returns false for (3, 15)' do
      expect(fizz_buzz.includes_number?(3, 15)).to eql(false)
    end
  end

  describe "#stringify" do
    it 'returns "1" when receiving 1' do
      expect(fizz_buzz.stringify(1)).to eql("1")
    end

    it 'returns "Fizz" when receiving 3' do
      expect(fizz_buzz.stringify(3)).to eql("Fizz")
    end

    it 'returns "Buzz" when receiving 5' do
      expect(fizz_buzz.stringify(5)).to eql("Buzz")
    end

    it 'returns "FizzBuzz" when receiving 15' do
      expect(fizz_buzz.stringify(15)).to eql("FizzBuzz")
    end

    it 'returns "Fizz" when receiving 13' do
      expect(fizz_buzz.stringify(13)).to eql("Fizz")
    end

    it 'returns "Buzz" when receiving 25' do
      expect(fizz_buzz.stringify(25)).to eql("Buzz")
    end

    it 'returns "FizzBuzz" when receiving 53' do
      expect(fizz_buzz.stringify(53)).to eql("FizzBuzz")
    end
  end

  describe "#string_builder" do
    it 'returns "1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz Fizz 14 FizzBuzz" when receiving 15' do
      expect(fizz_buzz.string_builder(15)).to eql("1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz Fizz 14 FizzBuzz")
    end
  end
end
