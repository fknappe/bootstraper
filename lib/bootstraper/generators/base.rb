# -*- encoding: utf-8 -*-
module Bootstraper
  module Generators
    #
    # Base class used to define common configuration
    # for all generators classes
    # 
    class Base < Thor::Group
      include Thor::Actions

      #
      # Default thor runtime options
      #
      # Options
      #
      #   force: Overwrite existent files (alias: -f)
      #   pretend: Run but not make any changes (alias: -p)
      #   quiet: Supress status output (alias: -q)
      #   skip: Skip already existent files (alias: -s)
      #
      # Examples:
      #
      #   bootstraper app test --f
      #
      add_runtime_options!

      #
      # Define the source of this task ERb template files
      #
      def self.source_root
        File.dirname(__FILE__)
      end     
    end
  end
end
