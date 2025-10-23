require 'rake/testtask'
require 'yard'

Rake::TestTask.new

YARD::Rake::YardocTask.new do |t|
  t.options = [
    '--title', 'Kotlin Koans in Ruby',
    '--main', 'README.md',
    '--markup', 'markdown'
  ]
end
