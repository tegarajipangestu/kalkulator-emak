require_relative 'expression_parser'

class Calculator
  include ExpressionParser

  def initialize(expression)
    set_expression(expression)
  end

  def get_expression
    @expression
  end

  def set_expression(expression)
    @expression = expression
  end

  def validate_expression!
    return parse_expression(get_expression)
  end

  def calculate_expression
    validate_expression!
  end
end
