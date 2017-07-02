require_relative 'regex'
require_relative 'regex'

module ExpressionParser
  include Regex

  def parse_expression(expression)
    if matches = expression_regex.match(expression)
      expr1, expr2 = matches.captures
      parse_expression(expr1) && parse_expression(expr2)
    else matches = number_regex.match(expression)
      parse_number(matches[0])
    end
  end

  def parse_number(number)
    return false unless matches = number_regex.match(number)
    parse_unsigned(matches[0])
  end

  def parse_unsigned(unsigned)
    return false unless matches = number_regex.match(number)
    unsigned_regex === unsigned
  end
end
