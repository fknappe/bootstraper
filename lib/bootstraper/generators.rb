module Bootstraper
  module Generators
    autoload :Api, "bootstraper/generators/api"
    autoload :Base, "bootstraper/generators/base"

    #
    # Used to registrer all availables tasks 
    # 
    class CLI < Thor
      
      #
      # Mapping -v option to version task
      # 
      map "--v" => "version"

      #
      # Registering generators tasks
      # 
      register(Bootstraper::Generators::Api, "api", 'api <NAME> [options]', 'Generate a new API')

      desc "--v", "Show the current installed bootstraper version"
      def version
        puts "#{Bootstraper::Version::STRING}"
      end
    end      
  end
end