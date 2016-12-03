
module MarskalRdocExample


  ##
  # SomeString.  Processes a string
  class SomeString

    # @!attribute [r] my_attr
    #   Dummy Text for this attricbute
    attr_reader :my_attr


    attr_accessor :your_attr

    # @!attribute [r] your_attr
    #   Dummy Text for this your_attr
    # @return [SomeString] an instantiated SomeString object
    def initialize(p_str)
      @my_attr = p_str
      @your_attr = p_str
    end

    # Reverses the contents of a String or IO object.
    #
    # @see http://ntp.org/documentation.html NTP Documentation
    # @see NTPHelperMethods
    #
    # @param [Hash] opts the options to create a message with.
    # @option opts [String] :subject The subject
    # @option opts [String] :from ('nobody') From address
    # @option opts [String] :to Recipient email
    # @option opts [String] :body ('') The email's body
    # @return [String] the contents reversed lexically
    def reverse(opts)
      l_what = 'hello'
      opts += l_what
      opts = opts.read if respond_to? :read
      opts.reverse
    end


  end

end