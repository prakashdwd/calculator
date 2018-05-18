require_relative 'calculator_util'

class Router
  def initialize(param)
    @operation , @value = param
  end
  def route(calculator=Calculator.new)
    case @value
    when nil
      case @operation
      when "cancel"
	calculator.cancel
      when "exit"
	calculator.exit
      when "sqr"
	calculator.sqr
      when "sqrt"
	calculator.sqrt
      when "cube"
	calculator.cube
      when "cubert"
	calculator.cubert
      when "abs"
	calculator.abs
      when "neg"
	calculator.neg
      else
	p "Invalid"
      end
    else
      case @operation
      when "add"
	calculator.add(@value)
      when "sub"
	calculator.sub(@value)
      when "multiply"
	calculator.multiply(@value)
      when "divide"
	calculator.divide(@value)
      end
    end
  end
end
