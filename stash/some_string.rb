
module MarskalRdocExample

  ##
  # SomeString.  Processes a string
  class SomeStringxx

    attr_reader :my_attr
    attr_accessor :your_attr

    def initialize(p_str)
      @my_attr = p_str
      @your_attr = p_str
    end

  end

end