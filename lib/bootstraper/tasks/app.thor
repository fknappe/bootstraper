class App < Thor
  desc "setup APP_NAME", "setup a new rack app based"
  def setup(name)
    puts "Running rack app setup"
  end
end