# frozen_string_literal: true

require 'rake/testtask'
require 'yard'
require 'rubocop/rake_task'

Rake::TestTask.new

YARD::Rake::YardocTask.new do |t|
  t.options = [
    '--title', 'Kotlin Koans in Ruby',
    '--main', 'README.md',
    '--markup', 'markdown'
  ]
end

RuboCop::RakeTask.new
