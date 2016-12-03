require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList['test/**/*_test.rb']
end

task :default => :test

gem 'yard'
require 'yard'
YARD::Rake::YardocTask.new do |yard|
  yard.options = ['-odoc/yard'] # optional

  # yard.files   = ['lib/**/*.rb', OTHER_PATHS]   # optional
  # yard.options = ['--any', '--extra', '--opts'] # optional
  # yard.stats_options = ['--list-undoc']         # optional
end

require 'rdoc/task'
RDoc::Task.new do |rdoc|
  rdoc.rdoc_dir = 'doc/rdoc'
end


require 'rdoc/task'
RDoc::Task.new do |rdoc|
  rdoc.name = 'RDocInHannaFormat'
  rdoc.title = 'Generate Doc in Hanna Format'
  rdoc.rdoc_dir = 'doc/hanna'
  rdoc.generator = 'hanna'
end


# MarskalRdocExample::GenerateAllHelpFormats
#
# Rake::Task.new:ask => :greet do
#   puts "How are you?"
# end

namespace 'MarskalRdocExample' do
  desc 'Generate docs in all the available formats'
  task :generate_all_docs do
    l_formats = [{ task: 'rdoc', format: 'default RDoc'},
                 { task: 'RDocInHannaFormat', format: 'Hanna Nouveau'},
                 { task: 'yard', format: 'Yard'}
    ]
    l_formats.each_with_index do |l_format, l_index|
      Rake::Task[l_format[:task]].invoke
      puts "\nCompleted #{l_index + 1} of #{l_formats.length}: Docs Generated in #{l_format[:format]}"
    end
  end
end

