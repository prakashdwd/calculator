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

    it "The sqr method should return 0" do
      calculator = Calculator.new
      expect(calculator.sqr).to eq(0)
    end

    it "The neg method should return 0" do
      calculator = Calculator.new
      expect(calculator.neg).to eq(0)
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
    it "The route  method should return nil when input is add 5" do
      param = "add" , 5
      router=Router.new(param)
      expect(router.route).to eq(5)
    end
    
    it "The route method should return 'Invalid' when input is 'add'" do
      param = "" 
      router=Router.new(param)
      expect(router.route).to eq("Invalid")
    end  
  end
end
