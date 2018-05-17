class Parser
   def initialize(arg)
      @input=arg
   end

   def letters?(string)
      string.chars.any? { |char| ('a'..'z').include? char.downcase }
   end

   def parse
      operation = @input.split().first
      number = @input.split().last
      value = number.to_f
      word_count = @input.split(/\s+/).length

      if word_count > 2 or (word_count == 2 and letters?(number))
	return nil
      else
         return operation , value
      end
      
   end
   
end

