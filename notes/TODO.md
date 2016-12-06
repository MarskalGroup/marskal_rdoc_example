#Todo

###Priorities
* Continue to create samples of all important existing markup tags and syntax
* Switch to Yard, strengthen this app
    * Consider making this a new gem called something like marskal_app_standards or marskal_ruby_app_standards
    * Make classes for yard and rdoc separately
    * Add Rails standards as well
    * API standards
    * Look at other yard gems    
    * In yard samples make functions have params and attributes and such    
* Write Tests
* Get on Wiki
* Publish Gem
* Add bin files and make work on windows
* Test on Windows and Linux
* Get working on Travis
* Add basic font changes as well

------

###Future Features
* Create a Standard module to be used as a guide or template for documenting our code
    * Use simple dice game of standard blog app
* Create a method that can be called to create default/standardized documentation given some basic parameteres
* Add a method that will allow this gem to read through ruby files and replace shortcuts with standard docs
    * Format:   marskal_rdoc( type, description, author, created_date, other_options)
    * Example:  marskal_rdoc( :class, 'this is a class i wrote', 'Sam Jones sam@example.org', Date.today)
    * Note:     there may be a templating method for yard or doc that will assist with this




