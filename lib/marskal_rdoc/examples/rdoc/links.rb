module MarskalRdoc
  module Examples
    module Rdoc

      ##
      # Links. This module should have a method for most of the common links for RDoc
      #
      #:include:/../../includes/reference_links.rb
      module Links
        ##
        # This demonstrates RDoc automatically links your classes and file names when included in the documentation
        #
        #   # horizontal_rule   #Links to a method named 'horizontal_rule'
        #
        #   # SomeString        #Links to a class named 'SomeString'
        #
        #   # README.md         #Links to a File named 'README.md'
        #
        # <em>produces output as:</em>
        #
        # horizontal_rule   #Links to a method named 'horizontal_rule'
        #
        # SomeString        #Links to a class named 'SomeString'
        #
        # README.md         #Links to a File named 'README.md'
        #
        #---
        def self.links_to_classes_methods_source_files
          'Rdoc Example of documenting class names, methods, and source files'
        end

        ##
        # This demonstrates RDoc automaticall links your classes and file names when included in the documentation
        #
        #   # http://pipsum.com/435x310.jpg    #Inserts an actual image
        #
        #   # http://www.example.com/          #Inserts a hyperlink to the website specified
        #
        #   # mailto: sam@example.org          #Inserts a mailto: tag
        #
        #   # SingleWord[http://www.marskalgroup.com]             # Labeled link with only one word
        #
        #   # {Multiple words link}[http://www.marskalgroup.com]  # Labeled link with multiple word description
        #
        # <em>produces output as:</em>
        #
        # http://pipsum.com/435x310.jpg           #Inserts an actual image
        #
        # http://www.example.com                  #Inserts a hyperlink to the website specified
        #
        # mailto:sam@example.org                  #Inserts a mailto: tag
        #
        # SingleWord[http://www.marskalgroup.com]             # Labeled link with only one word
        #
        # {Multiple words link}[http://www.marskalgroup.com]  # Labeled link with multiple word description
        #
        #---
        def self.hyperlinks
          'Rdoc Example of documenting class names, methods, and source files'
        end

      end
    end
  end
end
