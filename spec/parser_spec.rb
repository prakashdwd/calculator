RSpec.describe Parser do
  context "when testing Parser class" do
    it "The parse method should return 'nil+nil' when input is add 5 gg" do
      parser=Parser.new("add 5 gg")
      operator , value = parser.parse 
      expect(operator).to eq(nil)
      expect(value).to eq(nil)
    end

    it "The parse method should return 'add + nil' when input is 'add'" do
      parser=Parser.new("add")
      operator , value = parser.parse 
      expect(operator).to eq("add")
      expect(value).to eq(nil)
    end

    it "The parse method should return 'nil + nil' when input is '123'" do
      parser=Parser.new("123")
      operator , value = parser.parse 
      expect(operator).to eq("123")
      expect(value).to eq(nil)
    end

     it "The parse method should return 'nil + nil' when input is ''" do
      parser=Parser.new("")
      operator , value = parser.parse 
      expect(operator).to eq( nil)
      expect(value).to eq(nil)
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
