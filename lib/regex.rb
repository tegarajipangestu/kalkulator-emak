module Regex
  def expression_regex
    /(.+)#{binary_operator_regex}(.+)/
  end

  def unsigned_regex
    /(\d)+(?:\.(\d))*/
  end

  def number_regex
    /(?:#{sign_regex}?(.+))/
  end

  def unsigned_number_regex
    /(?:(\d)+(?:\.(\d)+)?)/
  end

  def sign_regex
    /-/
  end

  def binary_operator_regex
    /\+|-|\*|\//
  end
end
