module Bootstraper

  #
  # Interact with CLI by using ARGV constant and select a thor generator task
  # to be executed with the CLI options
  #
  # ==== Parameters:
  # args<Array>
  #
  # ==== Examples:
  #
  # Bootstraper::Generators.start([ "app", "--f" ] )
  #
  module Generators
    autoload :App, "bootstraper/generators/app"
    autoload :Api, "bootstraper/generators/api"

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
