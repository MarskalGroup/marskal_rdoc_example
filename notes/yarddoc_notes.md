Post-install message from yard:
--------------------------------------------------------------------------------
As of YARD v0.9.2:

RubyGems "--document=yri,yard" hooks are now supported. You can auto-configure
YARD to automatically build the yri index for installed gems by typing:

    $ yard config --gem-install-yri

See `yard config --help` for more information on RubyGems install hooks.

You can also add the following to your .gemspec to have YARD document your gem
on install:

    spec.metadata["yard.run"] = "yri" # use "yard" to build full HTML docs.

--------------------------------------------------------------------------------

http://www.rubydoc.info/gems/yard/file/docs/Tags.md
http://www.rubydoc.info/gems/yard/file/README.md
yard graph --protected --full --dependencies

http://yardoc.org/

yard cheat sheet
https://gist.github.com/chetan/1827484


https://github.com/glejeune/Ruby-Graphviz