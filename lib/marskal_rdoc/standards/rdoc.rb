module MarskalRdoc
  module Standards

    ##
    # Yard.
    #
    # <b>This module will show standards for documenting using <tt>yard</tt> syntax and tags only.</b>
    #
    module Rdoc

      # Documenting a constant using <tt>yard</tt> is same as an <tt>RDoc</tt>, just use a has tag <b>#</b>
      SAMPLE_CONSTANT_VARIABLE = 'Example of Constant'

      ##
      # This is standard documentation for a class definition. See the example below for key elements that should be included for every class
      #
      # ===== History
      # * <tt>Created: [2015-10-06]</tt> <b>Jenny Wilson</b> <jenny@example.com>
      # * <tt>Modified:[2015-11-17]</tt> <b>Sam Bernard</b> <sam@example.com>
      #
      # ==== Examples
      #   #Instantiate a new class instance using defaults
      #   SampleClass.new           # ==> returns Instantiated SampleClass Object using defaults
      #
      #   #Instantiate with options defaults
      #   SampleClass.new( {
      #                     sample_read_only_variable_attribute: 1,
      #                     sample_write_only_variable_attribute: 22,
      #                     sample_read_or_write_attribute: 'test'
      #   }) # ==> returns Instantiated SampleClass Object using the attributes passed to the initializer
      #
      #
      class SampleClass

        # sample read only class attribute
        attr_reader :sample_read_only_variable_attribute

        # sample read only class attribute
        attr_writer :sample_write_only_variable_attribute     # sample write only class attribute

        # sample read only class attribute
        attr_accessor :sample_read_or_write_attribute         # sample read/write class attribute

        ##
        # This is the new constructor for SampleClass.
        #
        # ==== History
        # * <tt>Created: [2015-10-06]</tt> <b>Jenny Wilson</b> <jenny@example.com>
        #
        # ==== Params
        # * <tt>p_message(String):</tt> Displays the message via the +puts+ command
        # * <tt>p_options(Hash)(_defaults_ to: {} ):</tt> The options to create a class instance with See Attributes documentation for more info
        #   * <tt>:sample_read_only_variable_attribute (Integer)(_defaults_ to: 99 ):</tt>
        #   * <tt>:sample_write_only_variable_attribute (Integer):</tt>
        #   * <tt>:sample_read_or_write_attribute (String) (_defaults_ to: 99 ):</tt>
        #
        # ==== Returns
        # * <tt>(SampleClass)</tt> — self
        #
        # ==== Examples
        #   #Instantiate a new class instance using defaults
        #   SampleClass.new           # ==> returns Instantiated SampleClass Object using defaults
        #
        #   #Instantiate with options defaults
        #   SampleClass.new( {
        #                     sample_read_only_variable_attribute: 1,
        #                     sample_write_only_variable_attribute: 22,
        #                     sample_read_or_write_attribute: 'test'
        #   }) # ==> returns Instantiated SampleClass Object using the attributes passed to the +.new+ method
        #
        def initialize(p_message, p_options = {})
          puts "Useless Message #{p_message}"
          @sample_read_only_variable_attribute = set_default(p_options, :sample_read_only_variable_attribute, 99)
          @sample_write_only_variable_attribute = p_options[:sample_write_only_variable_attribute]
          @sample_read_or_write_attribute = set_default(p_options, :sample_read_or_write_attribute, 'hello')
        end

        ##
        # Simple and useless Method returns the object pass to it.
        #
        # ==== History
        # * <tt>Created: [2015-10-06]</tt> <b>Jenny Wilson</b> <jenny@example.com>
        #
        # ==== Params
        # * <tt>p_object_to_reflect(Object):</tt> The object to be reflected <br>
        #
        # ==== Returns
        # * <tt>(Object)</tt> p_object_to_reflect unmodified
        #
        # ==== Examples:
        #   SampleClass.mirror('hello')   # ==> returns 'hello'
        #   SampleClass.mirror(99)        # ==> returns 99
        #   SampleClass.mirror([1,2,3])   # ==> returns [1,2,3]
        #
        def self.mirror(p_object_to_reflect)
          p_object_to_reflect
        end

        ##
        # Simple and useless Method returns self
        #
        # ==== History
        # * <tt>Created: [2015-10-06]</tt> <b>Jenny Wilson</b> <jenny@example.com>
        #
        # ==== Returns
        # * <tt>(SampleClass)</tt> self
        #
        # ==== Examples:
        #   @samp = SampleClass.new
        #   @samp.mirror             # ==> returns @samp
        #
        def mirror
          self
        end

        protected #:doc:

        ##
        # @!visibility public
        #
        # This method returns a default value if the has key does not exist in the hash
        #
        # ==== History
        # * <tt>Created: [2015-10-06]</tt> <b>Jenny Wilson</b> <jenny@example.com>
        #
        # ==== Params
        # * <tt>p_options (Hash):</tt> The has containing desired options
        # * <tt>p_key (Symbol):</tt>  The symbol Hash key to search for
        # * <tt>p_default (Object):</tt> The default value to be stored if the key is not found
        #
        # ==== Returns
        # * <tt>(Object)</tt> the proper value for the element
        #
        # ==== Examples:
        #   options = {greeting: 'hello'}
        #   set_default(options, :greeting, 'Hi')  # ==> returns 'hello'
        #   set_default(options, :farewell, 'Bye') # ==> returns 'Bye'
        #
        def set_default(p_options, p_key, p_default) #:doc:
          p_options.has_key?(p_key) ? p_options[p_key] : p_default
        end

      end


    end

  end
end
