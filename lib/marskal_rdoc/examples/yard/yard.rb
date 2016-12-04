module MarskalRdoc
  module Examples
    module Yard
      # This is simply a constant defined using regular RDoc, I am not aware of any special <tt>yard</tt> tags for this
      EXAMPLE_CONSTANT_IN_YARD  = 5

      ##
      # SomeString.  Processes a string
      class SomeString

        # @!attribute [r] my_read_only_attr
        #   This demonstrates commenting a read only instance attribute
        attr_reader :my_read_only_attr

        # @!attribute [r] my_read_only_attr
        #   This demonstrates commenting a read only instance attribute
        attr_accessor :my_read_write_attr

        # @!attribute [r] my_read_write_attr
        #   Dummy Text for this my_read_write_attr
        # @return [SomeString] an instantiated SomeString object
        def initialize(p_str)
          @my_read_only_attr = p_str
          @my_read_write_attr = p_str
        end

        # Take a hash
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
        def self.to_hash(opts)
          l_result = nil
          begin
            l_result = eval "#{opts}"
            unless l_result.is_a? Hash
              raise "Parameter must be a Hash, received ==> #{l_result.class}"
              l_result = nil
            end
          rescue Exception => error
            raise error
          end
          l_result
        end


      end

    end
  end
end