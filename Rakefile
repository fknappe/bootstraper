#!/usr/bin/env rake
require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "rdoc/task"

desc 'Default: run tests'
task :default => :spec

# Loading rspec generators
Rspec::Core::RakeTask.new(:spec)

# Defining RDoc generators
RDoc::Task.new(:rdoc) do |t|
  t.rdoc_dir = "docs"
  t.title = "Bootstraper"
  t.options << "-m" << "README.md"
end