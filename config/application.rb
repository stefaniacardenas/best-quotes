require "runways"
# You can require files that are our of the app/controllers rails
$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")
# Require my quote controller

module BestQuotes
  class Application < Runways::Application
  end
end