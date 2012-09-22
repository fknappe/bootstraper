module Bootstraper
  module Generators
    autoload :Api, "bootstraper/generators/api"
    autoload :Base, "bootstraper/generatos/base"

    #
    # Interact with CLI by using ARGV constant and select a thor generator task
    # to be executed with the CLI options
    #
    # Examples:
    #
    #   Bootstraper::Generators.start([ "api", "--f" ] )
    #
    class CLI < Thor
      desc "build", "Generate a new API project"
      def build
        Bootstraper::Generators::Api.start
      end
    end      
  end
end