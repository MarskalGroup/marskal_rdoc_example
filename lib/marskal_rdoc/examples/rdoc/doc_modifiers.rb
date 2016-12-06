module MarskalRdoc
  module Examples
    module Rdoc

      ##
      # DocModifiers. This module should have a method for most of the common doc modifiers for RDoc
      #
      # <b>Much of the information was provided from the following links:</b>
      #:include:/../../includes/reference_links.rb
      module DocModifiers

        ##
        # This demonstrates RDoc ':yields:' doc_modifier for relabeling arguments
        #
        #   # def yields_doc_modifier(&block) # :yields: key, value     #yields these varnames instead of default
        #
        # <em>produces output as:</em>
        #
        # def yields_doc_modifier&block # :yields: key, value     #yields these varnames instead of default
        #---
        def self.yields_doc_modifier(&block) # :yields: key, value
          'Demonstrates use of the :yields: doc_modifier'
        end

        ##
        # This demonstrates RDoc ':args:' doc_modifier for relabeling arguments
        #
        #   # def args_doc_modifier(&block) # :args: a, b     #yields these varnames instead of default
        #
        # <em>produces output as:</em>
        #
        # def args_doc_modifier&block # :args: a, b     #yields these varnames instead of default
        #---
        def self.args_doc_modifier(*a) #  :arg: a, b
          'Demonstrates use of the :args: doc_modifier'
        end


      end
    end
  end
end
