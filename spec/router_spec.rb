RSpec.describe Router do
  context "when testing router method of Router class" do
    it "when input is 'add 5', return value should be 9" do
      param = "add" , 5
      calculator = Calculator.new(4)
      router=Router.new(param)
      expect(router.route(calculator)).to eq(9)
    end

    it "when input is 'sub 5', return value should be '-1'" do
      param = "sub" , 5
      calculator = Calculator.new(4)
      router=Router.new(param)
      expect(router.route(calculator)).to eq(-1)
    end
    
    it "when input is 'add ', return value should be 'Invalid'" do
      param = ""
      calculator = Calculator.new(4)
      router=Router.new(param)
      expect(router.route(calculator)).to eq("Invalid")
    end

    it "when input is 'multiply 5', return value should be 20" do
      param = "multiply" , 5
      calculator = Calculator.new(4)
      router=Router.new(param)
      expect(router.route(calculator)).to eq(20)
    end

    it "when input is 'divide 5', return value should be 20" do
      param = "divide" , 5
      calculator = Calculator.new(10)
      router=Router.new(param)
      expect(router.route(calculator)).to eq(2)
    end

    it "when input is 'sqrt ', return value should be 5.0" do
      param = "sqrt"
      calculator = Calculator.new(25.0)
      router=Router.new(param)
      expect(router.route(calculator)).to eq(5)
    end

    it "when input is 'sqr', return value should be 36" do
      param = "sqr"
      calculator = Calculator.new(6)
      router=Router.new(param)
      expect(router.route(calculator)).to eq(36)
    end

    it "when input is 'cube ', return value should be 27" do
      param = "cube"
      calculator = Calculator.new(3)
      router=Router.new(param)
      expect(router.route(calculator)).to eq(27)
    end

    it "when input is 'cubert', return value should be 5" do
      param = "cubert"
      calculator = Calculator.new(125)
      router=Router.new(param)
      expect(router.route(calculator)).to eq(5)
    end

    it "when input is 'neg', return value should be -10" do
      param = "neg"
      calculator = Calculator.new(10)
      router=Router.new(param)
      expect(router.route(calculator)).to eq(-10)
    end

    it "when input is 'abs', return value should be 20" do
      param = "abs"
      calculator = Calculator.new(-20)
      router=Router.new(param)
      expect(router.route(calculator)).to eq(20)
    end

    it "when input is 'cancel', return value should be 0" do
      param = "cancel"
      calculator = Calculator.new(10)
      router=Router.new(param)
      expect(router.route(calculator)).to eq(0)
    end

    it "when input is 'exit', return value should be 'Bye!'" do
      param = "exit"
      router=Router.new(param)
      expect(router.route).to eq("Bye!")
    end
    
    
  end
end

