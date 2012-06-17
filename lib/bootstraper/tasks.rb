require 'thor/group'

module Bootstrap
  class Tasks < Thor::Group
    include Thor::Actions

    argument :name

    def self.start
      Thor::Group.invoke_from_option(options[:name])
    end
  end
end
