require "spec_helper"
require "./calculator"

describe Calculator do
  let(:calculator) { Calculator.new }

  describe "#add" do
    it "returns 10 when it receives 4 & 6" do
      expect(calculator.add(4,6)).to eql(10)
    end

    it "returns 21 when it receives 7 & 14" do
      expect(calculator.add(7,14)).to eql(21)
    end

    it "returns -5 when it receives -5 and 0" do
      expect(calculator.add(-5, 0)).to eql(-5)
    end

    it "returns 9 when it receives 3, 3, and 3" do
      expect(calculator.add(3, 3, 3)).to eql(9)
    end
  end

  describe "#subtract" do
    it "returns 5 when it receives 10 and 5" do
      expect(calculator.subtract(10, 5)).to eql(5)
    end

    it "returns 30 when it receives 10 and -20" do
      expect(calculator.subtract(10, -20)).to eql(30)
    end

    it "returns -10 when it receives -20 and 10" do
      expect(calculator.subtract(-20, -10)).to eql(-10)
    end

    it "returns -30 when it receives -10, 10, 10" do
      expect(calculator.subtract(-10, 10, 10)).to eql(-30)
    end

    it "returns 20 when it receives -10 and -30" do
      expect(calculator.subtract(-10, -30)).to eql(20)
    end
  end

  describe "#divide" do
    it "returns 5 when it receives 10 and 2" do
      expect(calculator.divide(10, 2)).to eql(5)
    end

    it "returns 0.5 when it receives 1 and 2" do
      expect(calculator.divide(1.0, 2)).to eql(0.5)
    end

    it "returns Undefined when it receives 0 and 1" do
      expect(calculator.divide(0, 1)).to eql(0)
    end

    it "returns Undefined when it receives 1 and 0" do
      expect(calculator.divide(1, 0)).to eql("Undefined")
    end

    it "returns 2 when it receives 8, 2, and 2" do
      expect(calculator.divide(8, 2, 2)).to eql(2)
    end
  end

  describe "#multiply" do
    it "returns 10 when it receives 2 and 5" do
      expect(calculator.multiply(2, 5)).to eql(10)
    end

    it "returns -100 when it receives 10 and -10" do
      expect(calculator.multiply(10, -10)).to eql(-100)
    end

    it "returns 0 when it receives 10 and 0" do
      expect(calculator.multiply(10, 0)).to eql(0)
    end

    it "returns 100 when it receives -10 and -10" do
      expect(calculator.multiply(-10, -10)).to eql(100)
    end

    it "returns 1000 when it receives 10 and 10 and 10" do
      expect(calculator.multiply(10, 10, 10)).to eql(1000)
    end
  end

end
