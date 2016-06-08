require "spec_helper"
require "./calculator"

describe StringCalculator do

  let(:calculator) { StringCalculator.new }

  describe "#add" do

    it "returns 0 when it receives empty string" do
      expect(calculator.add('')).to eql(0)
    end

    it "returns 1 when it receives '1' string" do
      expect(calculator.add('1')).to eql(1)
    end

    it "returns 3 when it receives '1,2' string" do
      expect(calculator.add('1,2')).to eql(3)
    end

    it "return 10 when it receives '1,2,3,4' string" do
      expect(calculator.add('1,2,3,4')).to eql(10)
    end

    it "returns 6 when it receives '1\n2,3'" do
      expect(calculator.add('1\n2,3')).to eql(6)
    end

    it "return 3 when it receives '//;\n1;2'" do
      expect(calculator.add('//;\n1;2')).to eql(3)
    end

    it "return negatives not allowed '-1,2,3,-4'" do
      expect(calculator.add("-1,2,3,-4")).to eql("negatives not allowed -1, -4")
    end

  end

end
