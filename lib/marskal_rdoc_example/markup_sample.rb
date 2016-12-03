module MarskalRdocExample

  ##
  # MarkupSample. This module should have a method for most of the common markup syntax for RDoc
  #
  # <b>Much of the information was provided from the following links:</b>
  #
  # - http://www.mikeperham.com/wp-content/uploads/2010/12/rdoc.html
  # - http://jan.varwig.org/wp-content/uploads/2006/09/Rdoc%20Cheat%20Sheet.pdf
  # - http://docs.seattlerb.org/rdoc/RDoc/Markup.html

  module MarkupSample

=begin rdoc
  # Paragraph.
  # Line 2 but still the same Paragraph.
  # Line 3 but still the same Paragraph
  #
  # Now, a New Paragraph is created

<em>produces output as:</em>

Paragraph.
Line 2 but still the same Paragraph.
Line 3 but still the same Paragraph

Now, a New Paragraph is createdsssssssss
---
=end
    def self.comments_and_paragraphs_using_begin_end
      'RDoc sample of a group of comments and paragraphs using begin and end tags'
    end

    ##
    #   # Paragraph.
    #   # Line 2 but still the same Paragraph.
    #   # Line 3 but still the same Paragraph
    #   #
    #   # Now, a New Paragraph is created
    #
    # <em>produces output as:</em>
    #
    # Paragraph.
    # Line 2 but still the same Paragraph.
    # Line 3 but still the same Paragraph
    #
    # Now, a New Paragraph is created
    # ---
    def self.comments_and_paragraphs_using_hashtag
      'RDoc sample of a group of comments and paragraphs using hash-tags #'
    end


    ##
    # This documentations shows how to document bullets using the +asterisk+ <b>*</b>
    #   # * One
    #   # * Two
    #   # * Three
    #
    # <em>produces output as:</em>
    # * One
    # * Two
    # * Three
    # ---
    def bullets_using_asterisk
      'RDoc example for sample bullets using the asterisk'
    end

    ##
    # This documentations shows how to document bullets using the +dash+ or minus sign <b>-</b>
    #   # - One
    #   # - Two
    #   # - Three
    #
    # <em>produces output as:</em>
    # - One
    # - Two
    # - Three
    # ---
    def bullets_using_dash
      'RDoc example for sample bullets using the the dash or minus sign'
    end

    ##
    # This documentations shows how to document bullets using a numbered_list
    #   # 1. One
    #   # 1. Two
    #   # 1. Three
    #
    # <em>produces output as:</em>
    # 1. One
    # 1. Two
    # 1. Three
    # ---
    def numbered_list
      'RDoc example for a numbered_list'
    end

    ##
    # This documentations shows how to document bullets as an alphabetic list using lowercase letters
    #   # a. One
    #   # a. Two
    #   # a. Three
    #
    # <em>produces output as:</em>
    # a. One
    # a. Two
    # a. Three
    #
    # @param [String, #read] p_string the contents to reverse
    # @return [String] the contents reversed lexically
    def self.alpha_list_lowercase(p_string)
      'RDoc example for an alphabetic list using lowercase letters' + p_string
    end

    ##
    # This documentations shows how to document bullets as an alphabetic list using uppercase letters
    #   # A. One
    #   # A. Two
    #   # A. Three
    #
    # <em>produces output as:</em>
    # A. One
    # A. Two
    # A. Three
    # ---
    def alpha_list_uppercase
      'RDoc example for an alphabetic list using uppercase letters'
    end

    ##
    # This documentations shows how to document labeled a list
    #
    #   # [cat] small domestic animal
    #   #       that seems to sleep a lot
    #   # [dog] loyal animal
    #   #       with sharp teeth
    #
    # <em>produces output as:</em>
    # [cat] small domestic animal
    #       that seems to sleep a lot
    # [dog] loyal animal
    #       with sharp teeth
    # ---
    def labeled_list
      'RDoc example for a labeled list'
    end

    ##
    # This documentations shows how to document with a tabular alignment?
    # Note: This doesn't work like I would think. Please refer to latest RDoc api for more details
    #
    #   # cat:: small domestic animal
    #   #       that seems to sleep a lot
    #   # dog:: loyal animal
    #   #       with sharp teeth
    #
    # <em>produces output as:</em>
    # cat:: small domestic animal
    #       that seems to sleep a lot
    # dog:: loyal animal
    #       with sharp teeth
    # ---
    def labeled_list_tabular_format
      'RDoc example for displaying documentation in a tabular alignment?'
    end

    ##
    # This documentation shows how to document formatted text using characters to mark the text
    #
    #   # *word*  ==> displays text in a '*bold*' font
    #
    #   # _word_  ==> displays text in a '_emphasized_' font
    #
    #   # +word+  ==> displays text in a '+code+' font
    #
    # <em>produces output as:</em>
    #
    # *word*  ==> displays text in a '*bold*' font
    #
    # _word_  ==> displays text in a '_emphasized_' font
    #
    # +word+  ==> displays text in a '+code+' font
    # ---
    def formatting_text_using_character
      'RDoc example for formatting text using characters to mark the text'
    end

    ##
    # This documentation shows how to document formatted text using characters to mark the text
    #
    #   # <b>word</b>   ==> displays text in a '<b>bold</b>' font
    #
    #   # <em>word</em> ==> displays text in a '<em>emphasized</em>' font
    #
    #   # <tt>word</tt> ==> displays text in a '<tt>code</tt>' font
    #
    # <em>produces output as:</em>
    #
    # <b>word</b>  ==> displays text in a '<b>bold</b>' font
    #
    # <em>word</em>  ==> displays text in a '<em>emphasized</em>' font
    #
    # <tt>word</tt>  ==> displays text in a '<tt>code</tt>' font
    # ---
    def formatting_text_tags
      'RDoc example for formatting text using characters to mark the text'
    end

    ##
    # This documentation shows how to include headings of various sizes
    #   # = Heading 1
    #
    #   # == Heading 2
    #
    #   # === Heading 3
    #
    #   # ==== Heading 4
    #
    #   # ===== Heading 5
    #
    #   # ====== Heading 6
    # ==
    # <em>produces output as:</em>
    # = Heading 1
    # == Heading 2
    # === Heading 3
    # ==== Heading 4
    # ===== Heading 5
    # ====== Heading 6
    # ---
    def headings
      'RDoc example for including headings of various sizes'
    end

    ##
    # This documentation shows how to include a horizontal rule
    #   # Start of Output
    #   # ---
    #   # Line 2
    #   # ---
    #   # End of Output
    #
    # <em>produces output as:</em>
    #
    # Start of Output
    # ---
    # Line 2
    # ---
    # End of Output
    #
    # ==
    def horizontal_rule
      'RDoc example for including a horizontal rule'
    end

    ##
    # This demonstrates how to stop comments from appearing in output
    #   # Visible RDoc Comment Line
    #   #
    #   #--
    #   # Anything between these lines is not an RDoc comment and will not be part of RDoc generated documentation
    #   #++
    #   #
    #   # Resume Visible RDoc Comment Line
    #
    # <em>produces output as:</em>
    #
    # Visible RDoc Comment Line
    #
    #--
    # Anything between these lines is not an RDoc comment and will not be part of RDoc generated documentation
    #++
    #
    # Resume Visible RDoc Comment Line
    # ---
    def stop_comments
      'RDoc Example of skipping/ignoring comments'
    end

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
    def links_to_classes_methods_source_files
      'Rdoc Example of documenting class names, methods, and source files'
    end

    ##
    # This demonstrates RDoc automaticall links your classes and file names when included in the documentation
    #
    #   # http://pipsum.com/435x310.jpg    #Inserts an actual image
    #
    #   # http://www.example.com/          #Inserts a hyperlink to the website specified
    #
    #   # mailto: sam@example.org
    #
    # <em>produces output as:</em>
    #
    # http://pipsum.com/435x310.jpg    #Inserts an actual image
    #
    # http://www.example.com/          #Inserts a hyperlink to the website specified
    #
    # mailto:sam@example.org
    #
    #---
    def hyperlinks
      'Rdoc Example of documenting class names, methods, and source files'
    end





  end

end
