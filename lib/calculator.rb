require_relative 'calculator/calculator_util'
require_relative 'calculator/router'
require_relative 'calculator/parser'


calculator = Calculator.new

while true
  input_command = gets
  parser = Parser.new(input_command)
  router = Router.new(parser.parse)
  output=router.route(calculator)
  if(output.eql?"Bye!")
    break
  end
end







   
