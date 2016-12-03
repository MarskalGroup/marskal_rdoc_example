require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList['test/**/*_test.rb']
end

task :default => :test



gem 'rdoc'
require 'rdoc/task'
RDoc::Task.new do |rdoc|
  # this only works with RDoc 3.1 or greater
  rdoc.generator = 'hanna'
  # this is what you use pre RDoc 3.1:
  rdoc.options.push '-f', 'hanna'
end
