# -*- encoding: utf-8 -*-
module Bootstraper
  module Generators
    class Api < Base    	  
  	  #
  	  # Task namespace
    	#
    	namespace :api

    	#
    	# Task arguments
    	#
    	argument :name

      #
      # Class specific options
      #
      class_option :skip_gemfile, :type => :string :default => :false
        :desc => ""
      class_option :skip_bundle, :type => :string, :default => :false
        :desc => ""
      class_option :skip_git, :type => :string, :default => :false,
        :desc => ""
      class_option :test_framework, :alias => "-T", :default => :rspec,
        :desc => ""
      class_option :database, :alias => "-d", :default => :mysql
        :desc => ""
        
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
          when :minitest then puts "Create #{name}/"
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
end