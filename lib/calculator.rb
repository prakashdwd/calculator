require_relative 'calculator/calculator_util'
require_relative 'calculator/router'
require_relative 'calculator/parser'

calculator = Calculator.new

while true
  input=gets
  parser = Parser.new(input)
  router = Router.new(parser.parse)
  router.route(calculator)
end

   
