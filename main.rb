require_relative 'lib/calculator'

c = Calculator.new(ARGV[0])
p c.validate_expression!
