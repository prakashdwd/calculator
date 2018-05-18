class Parser
  def initialize(arg)
    @input_command = arg
  end

  def letters?(string)
    string.chars.any? { |char| ('a'..'z').include? char.downcase }
  end

  def parse
    splitted_string = @input_command.split(/\s+/)
    word_count = splitted_string.length

    if word_count > 2 or word_count == 0
      operation = nil
      value = nil
    else
      operation =splitted_string.first
      number = splitted_string.last
      value = number.to_f
      if word_count == 1 or (word_count == 2 and letters?(number))
        value = nil
      end
    end
    return operation , value
  end  
end


