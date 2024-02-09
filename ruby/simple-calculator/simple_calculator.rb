# frozen_string_literal: true

class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError; end

  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)
    raise ArgumentError unless first_operand.is_a?(Integer) && second_operand.is_a?(Integer)
    return 'Division by zero is not allowed.' if first_operand.zero? || second_operand.zero?

    case operation
    when '+'
      addition(first_operand, second_operand)
    when '/'
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
