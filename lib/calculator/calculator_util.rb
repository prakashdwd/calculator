
class Calculator

   	def initialize (innitial_value=0.0)
       		@number=innitial_value
   	end

	def add(value)
		@number += value
		p @number
	end
	
	def sub(value)
		@number -= value
		p @number
	end
	
	def multiply(value)
		@number *= value
		p @number
	end
	
	def divide(value)
		if value!= 0
			@number /= value
			p @number
		else
			p "Divide by Zero error!"
		end
	end

        def sqr
          @number = @number * @number
          p @number
          
        end

        def sqrt
          if @number < 0
            p "Cannot find square root of negative number!"
          else
            @number = @number ** 0.5
            p @number
          end
        end

        def cubert
           @number = Math.cbrt(@number)
           p @number
        end

        def cube
          @number = @number ** 3
          p @number
        end

        def abs
          @number = @number.abs
          p @number
        end

        def neg
          @number = @number * (-1)
          p @number
        end
	
	def cancel
		@number=0
		p @number
	end
	
	def exitt
		exit(0)
	end
end	
	

