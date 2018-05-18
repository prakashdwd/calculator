RSpec.describe Calculator do
  context "When testing Calculator class" do
    
    
    it "The add method should return 5" do
      calculator = Calculator.new
      expect(calculator.add(5)).to eq(5)
    end

    it "The sub method should return -2" do
      calculator = Calculator.new
      expect(calculator.sub(2)).to eq(-2)
    end

    it "The multiply method should return -15" do
      calculator = Calculator.new(-3)
      expect(calculator.multiply(5)).to eq(-15)
    end

    it "The divide method should return 5" do
      calculator = Calculator.new(15)
      expect(calculator.divide(3)).to eq(5)
    end

    it "The cancel method should return 0" do
      calculator = Calculator.new()
      expect(calculator.cancel).to eq(0)
    end

    it "The divide method should return 'cannot divide'" do
      calculator = Calculator.new(0)
      expect(calculator.divide(0)).to eq("Divide by Zero error!")
    end

    it "The sqr method should return -16" do
      calculator = Calculator.new(-4)
      expect(calculator.sqr).to eq(16)
    end

    it "The sqrt method should return 'cannot find square root of negative number'" do
      calculator = Calculator.new(-4)
      expect(calculator.sqrt).to eq( "Cannot find square root of negative number!")
    end

    it "The neg method should return 6" do
      calculator = Calculator.new(6)
      expect(calculator.neg).to eq(-6)
    end

    it "The sqrt method should return 3" do
      calculator = Calculator.new(9)
      expect(calculator.sqrt).to eq(3)
    end

    it "The cube method should return 0" do
      calculator = Calculator.new(2)
      expect(calculator.cube).to eq(8)
    end

    it "The abs method should return 7" do
      calculator = Calculator.new(-7)
      expect(calculator.abs).to eq(7)
    end

    it "The cubert method should return -2" do
      calculator = Calculator.new(-8)
      expect(calculator.cubert).to eq(-2)
    end

    it "The exit method should return 0" do
      calculator = Calculator.new
      expect(calculator.exit).to eq("Bye!")
    end

    
    
  end
end
