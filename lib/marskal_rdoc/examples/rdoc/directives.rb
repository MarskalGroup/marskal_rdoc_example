module MarskalRdoc
  module Examples
    module Rdoc

      ##
      # Directives. This module should have a method for most of the common doc modifiers for RDoc
      #
      # *NOTE:* RDoc Directives may not be available in the +Yard+
      #
      # :include:/../../includes/reference_links.rb
      module Directives

        ##
        # This demonstrates RDoc <tt>':yields:'</tt> directive for relabeling arguments
        #
        #   # def yields_directive(&block) # :yields: key, value     #yields these varnames instead of default
        #
        # <em>produces output as:</em>
        #
        # def yields_directive&block # :yields: key, value     #yields these varnames instead of default
        #---
        def self.yields_directive(&block) # :yields: key, value
          'Demonstrates use of the :yields: directive'
        end

        ##
        # This demonstrates RDoc <tt>':args:'</tt> directive for relabeling arguments
        #
        #   # def args_directive(&block) # :args: a, b     #yields these varnames instead of default
        #
        # <em>produces output as:</em>
        #
        # def args_directive&block # :args: a, b     #yields these var-names instead of default
        #---
        def self.args_directive(*a) #  :arg: a, b
          'Demonstrates use of the :args: directive'
        end

        ##
        # This demonstrates RDoc <tt>':includes:'</tt> directive for including documentation from other files
        #
        #   # :include:/../../includes/sample_for_includes_directive.rb
        #
        # <em>produces output as:</em>
        #
        # :include:/../../includes/sample_for_includes_directive.rb
        #---
        def self.includes_directive
          'Demonstrates use of the :includes: directive'
        end

        ##
        # This demonstrates how to skip documentation
        module DontDocumentMe # :nodoc: all

          #does some simple thing
          def self.method1
            false
          end

          #does some simple thing
          def self.method2
            true
          end
        end




      end
    end
  end
end
