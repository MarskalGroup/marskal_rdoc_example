module MarskalRdoc
  module Standards

    ##
    # Yard.
    #
    # <b>This module will show standards for documenting using <tt>yard</tt> syntax and tags only.</b>
    #
    module Yard

      # Documenting a constant using <tt>yard</tt> is same as an <tt>RDoc</tt>, just use a has tag <b>#</b>
      SAMPLE_CONSTANT_VARIABLE = 'Example of Constant'

      ##
      # == Description
      # This is standard documentation for a class definition. See the example below for key elements thaty should be included for every class
      #
      # @author Jenny Wilson <jenny@example.com> _Created_: *2015-10-06*  <br>
      # @author Sam Jones <sam@example.org> _Modified_: *2016-12-06*
      #
      # @example Creating a new class instance
      #   SampleClass.new           # ==> Instantiate using defaults
      #
      #   # ==> Instantiate with options defaults
      #   SampleClass.new( {
      #                     sample_read_only_variable_attribute: 1,
      #                     sample_write_only_variable_attribute: 22,
      #                     sample_read_or_write_attribute: 'test'
      #   })
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
        # @author Jenny Wilson <jenny@example.com> _Created_: *2015-10-06* <br>
        # @param [Hash] p_options the options to create a class instance with <br>
        # @option p_options [Integer] :sample_read_only_variable_attribute A Dummy Read Only Variable. *Default:* 99 <br>
        # @option p_options [Integer] :sample_write_only_variable_attribute A Dummy Write Only Variable. *Default:* nil <br>
        # @option p_options [String]  :sample_read_or_write_attribute A Dummy Read/Write Only Variable. *Default:* 'hello' <br>
        #
        def initialize(p_options = {})
          @sample_read_only_variable_attribute = set_default(p_options, :sample_read_only_variable_attribute, 99)
          @sample_write_only_variable_attribute = p_options[:sample_write_only_variable_attribute]
          @sample_read_or_write_attribute = set_default(p_options, :sample_read_or_write_attribute, 'hello')
        end

        ##
        # @!method mirror(p_object_to_reflect)
        #   Simple and useless Method returns the object pass to it.
        #
        # @author Jenny Wilson <jenny@example.com> _Created_: *2015-10-06* <br>
        # @param p_object_to_reflect [Object] the object to be reflected <br>
        # @return [Object] p_object_to_reflect unmodified <br>
        def self.mirror(p_object_to_reflect)
          p_object_to_reflect
        end

        ##
        # @!method mirror
        #   Simple and useless Method returns self
        #
        # @return [SampleClass] self
        def mirror
          self
        end

        private

        ##
        # @private
        # @!method set_default(p_options, p_key, p_default)
        #   This method sets a default if the has key does not exist in the hash
        #
        # @author Jenny Wilson <jenny@example.com> _Created_: *2015-10-06* <br>
        # @param p_options [Hash] the has containing alloptions<br>
        # @param p_key [Symbol] the symbol Hash key to search for<br>
        # @param p_default [Object] the default value to be stored if the key is not found<br>
        # @return [Object] the proper value for the element
        def set_default(p_options, p_key, p_default)
          p_options.has_key?(p_key) ? p_options[p_key] : p_default
        end

      end


    end

  end
end
