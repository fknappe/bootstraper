begin
  require 'thor/group'
rescue LoadError
  puts "This task requires thor to be executed. Install it before continue"
end

module Bootstraper
  module Generators
  	class Api < Base
  	  
  	  namespace :api

  	  argument :name

  	end
  end
end