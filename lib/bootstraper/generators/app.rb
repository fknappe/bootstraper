module Bootstraper
  module Generators

  #
  # Generate a new rack based app
  #
  class App < Base
    
    #
    # Wrap classname within a convenient namespace
    #
    namespace :app

    #
    # Name argument must be provided to specify app_name
    #
    argument :name

    #
    # Define the source of this task ERb template files
    #
    def self.source_root
      File.dirname(__FILE__)
    end

    #
    # Create a new app root directory
    #
    def create_app_root
      puts "Create app root named #{name}"
    end

    #
    # Create app folder structure
    #
    def create_app_folder_structure
      puts "Create #{name} folder structure"
    end

    #
    # Create app Gemfile manifest
    #
    def create_gemfile
      unless options[:skip_gemfile]
        puts "Create #{name} gemfile manifest"
      end
    end

    #
    # Define test framework structure
    #
    def create_test_framework_structure
      case options[:test_framework]
        when :rspec then puts "Create #{name}/spec folder"
        when :test_unit then puts "Create #{name}/test folder"
      end
    end

    #
    # Execute bundler to install gem dependencies
    #
    def bundler_exec
      unless options[:skip_bundle]
        puts "Execute bundle install --path vendor"
      end
    end

    #
    # Define git configuration and execution
    #
    def git_config
      unless options[:skip_git]
        puts "Initializing git to project"
      end
    end
  end
end