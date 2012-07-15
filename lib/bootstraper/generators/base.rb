begin
  require 'thor/group'
rescue LoadError
  puts "This task requires thor to be executed. Install it before continue"
end

module Bootstraper
  module Generators
  	class Base < Thor::Group
  	  include Thor::Actions

  	  #
      # Class specific options
      #
      class_option :skip_gemfile, :default => :false
      class_option :skip_bundle, :default => :false
      class_option :skip_git, :default => :false
      class_option :test_framework, :default => :rspec

      #
      # Default thor runtime options
      #
      # ==== Options
      #
      # force: Overwrite existent files (alias: -f)
      # pretend: Run but not make any changes (alias: -p)
      # quiet: Supress status output (alias: -q)
      # skip: Skip already existent files (alias: -s)
      #
      # ==== Examples:
      #
      # bootstraper app test --f
      #
      add_runtime_options!
