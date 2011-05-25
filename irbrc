require 'rubygems'
require 'irb/completion'

begin
  require 'hirb'
  Hirb.enable
rescue LoadError
end

def get_route( url, options = { } )
  ActionController::Routing::Routes.recognize_path( url, options )
end
