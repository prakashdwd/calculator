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

    it "The add method should return 5" do
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

    
    
  end
end

RSpec.describe Parser do
  context "when testing Parser class" do
    it "The parse method should return nil when input is add 5 gg" do
      parser=Parser.new("add 5 gg")
      expect(parser.parse).to eq(nil)
    end

    it "The parse method should return 'add 5' when input is 'add   5 '" do
      parser=Parser.new("add 5 ")
      operator , value = parser.parse 
      expect(operator).to eq("add")
      expect(value).to eq(5)
    end

    it "The parse method should return 'divide 7' when input is '  divide 7 '" do
      parser=Parser.new("divide 7 ")
      operator , value = parser.parse 
      expect(operator).to eq("divide")
      expect(value).to eq(7)
     
    end
    
  end
end

RSpec.describe Router do
  context "when testing Router class" do
    it "The route  method should return 5 when input is add 5" do
      param = "add" , 5
      router=Router.new(param)
      expect(router.route).to eq(5)
    end

    it "The route  method should return -5 when input is sub 5" do
      param = "sub" , 5
      router=Router.new(param)
      expect(router.route).to eq(-5)
    end
    
    it "The route method should return 'Invalid' when input is 'add'" do
      param = "" 
      router=Router.new(param)
      expect(router.route).to eq("Invalid")
    end  
  end
end
