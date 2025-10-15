require 'rake/testtask'
require 'yard'

Rake::TestTask.new

# Define a YARD task for generating documentation
YARD::Rake::YardocTask.new do |t|
  t.options = [
    '--title', 'Kotlin Koans in Ruby', # Title for the generated docs
    '--main', 'README.md', # Main documentation file
    '--markup', 'markdown' # Use Markdown for processing
  ]
end

