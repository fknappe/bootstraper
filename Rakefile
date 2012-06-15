#!/usr/bin/env rake
require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "rdoc/task"

# Loading rspec tasks
Rspec::Core::RakeTask.new

# Defining RDoc tasks
RDoc::Task.new do |t|
  t.rdoc_dir = "docs"
  t.title = "Bootstraper"
  t.options << "-m" << "README.md"
end