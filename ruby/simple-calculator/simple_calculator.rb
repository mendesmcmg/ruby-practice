

class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  
  class UnsupportedOperation < StandardError ; end
  
  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)
    raise ArgumentError unless (first_operand.is_a? Integer and second_operand.is_a? Integer)
    return "Division by zero is not allowed." if first_operand == 0 or second_operand == 0

    if operation == '+'
      addition(first_operand, second_operand)
    elsif operation == '/'
      division(first_operand, second_operand)
    else 
      multiplication(first_operand, second_operand)
    end
  end

  def self.addition(first_operand, second_operand)
    "#{first_operand} + #{second_operand} = #{first_operand + second_operand}"
  end
  
  def self.division(first_operand, second_operand)
    "#{first_operand} / #{second_operand} = #{first_operand / second_operand}"
  end

  def self.multiplication(first_operand, second_operand)
    "#{first_operand} * #{second_operand} = #{first_operand * second_operand}"
  end
end
