module Bootstraper

  #
  # Interact with CLI by using ARGV constant and select a thor generator task
  # to be executed with the CLI options
  #
  # Examples:
  #
  #   Bootstraper::Generators.start([ "api", "--f" ] )
  #
  class CLI < Thor
    autoload :Api, "bootstraper/generators/api"
    autoload :Base, "bootstraper/generatos/base"

    class << self
      def start(args = ARGV)
        begin
          klass = args.shift
          constant = Bootstraper::Generators.const_get(klass.capitalize)
          constant.start(args)
        rescue SyntaxError
          self.help
        end
      end      
    end
  end
end
