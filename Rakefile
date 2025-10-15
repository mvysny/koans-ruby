require 'rake/testtask'
require 'yard'

Rake::TestTask.new do |t|
  t.pattern = 'test/test_*.rb' # Run all files in test/ starting with test_
#  t.verbose = true              # Show detailed test output
end

# Define a YARD task for generating documentation
YARD::Rake::YardocTask.new do |t|
  t.files = ['*.rb'] # Files to include (all Ruby files in lib/)
  t.options = [
    '--title', 'Kotlin Koans in Ruby', # Title for the generated docs
    '--main', 'README.md', # Main documentation file
    '--output-dir', 'doc', # Output directory
    '--markup', 'markdown' # Use Markdown for processing
  ]
end

