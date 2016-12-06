module MarskalRdoc
  module Standards

    ##
    # Rdoc.
    #
    # <b>This module will show standards for documenting using pure RDoc syntax and tags only.</b>
    #
    module Rdoc

      # View Source to see how this was documented
      SAMPLE_CONSTANT_VARIABLE = 'Example of Constant'

      ##
      # == Description
      # This is standard documentation for a class definition. There are not many rules for this except to describe what is the purpose of the class
      # and to give relevant examples and its inheritance
      #
      # == Inheritance
      #
      # == Examples
      #
      #
      class SampleClass

        # sample read only class attribute
        attr_reader :sample_read_only_variable_attribute

        # sample read only class attribute
        attr_writer :sample_write_only_variable_attribute     # sample write only class attribute

        # sample read only class attribute
        attr_accessor :sample_read_or_write_attribute         # sample read/write class attribute

        # initialize this class. See attributes for more information
        # return an instantiated class
        def initialize(p_options = {})
          # @sample_read_only_variable_attribute = p_options[:sample_read_only_variable_attribute]
          # @sample_write_only_variable_attribute = p_options[:sample_write_only_variable_attribute]
          # @sample_read_or_write_attribute = p_options[:sample_read_or_write_attribute]||'hello'

          @sample_read_only_variable_attribute = set_default(p_options, :sample_read_only_variable_attribute, 99)
          @sample_write_only_variable_attribute = p_options[:sample_write_only_variable_attribute]
          @sample_read_or_write_attribute = set_default(p_options, :sample_read_or_write_attribute, 'hello')
        end

        private

        def set_default(p_options, p_key, p_default)
          p_options.has_key?(p_key) ? p_options[p_key] : p_default
        end

      end


    end

  end
end
