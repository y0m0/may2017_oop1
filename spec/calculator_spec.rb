require 'calculator'

RSpec.describe Calculator do
  # define the subject of the test more explicitly
  subject(:calculator) { Calculator.new }

  describe "#add" do
    it 'adds two numbers together' do
      expect(calculator.add(2, 3)).to eq 5
      expect(calculator.add(1, 2)).to eq 3
      expect(calculator.add(0, 1)).to eq 1
      expect(calculator.add(-1, 2)).to eq 1
      expect(calculator.add(-1, -1)).to eq -2
      expect(calculator.add(0, Float::INFINITY)).to eq Float::INFINITY
      expect(calculator.add(Float::INFINITY, Float::INFINITY)).to eq Float::INFINITY
    end
  end

  describe "#subtract" do
    it 'subtracts one number from another' do
      expect(calculator.subtract(2, 1)).to eq 1
      expect(calculator.subtract(3, 1)).to eq 2
      expect(calculator.subtract(0, 0)).to eq 0
      expect(calculator.subtract(0, 1)).to eq -1
      expect(calculator.subtract(-1, -1)).to eq 0
      expect(calculator.subtract(0, Float::INFINITY)).to eq -Float::INFINITY
    end
  end
end

describe Printer do
  subject(:printer) { Printer.new }

  describe "#print" do
    it 'it prints the ouput' do
      string = "this is a test"
      expect(printer.print("this is a test")).to eq "Output: " + string
    end
  end
end
