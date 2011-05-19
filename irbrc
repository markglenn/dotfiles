require 'rubygems'
require 'interactive_editor'

def get_route( url, options = { } )
  ActionController::Routing::Routes.recognize_path( url, options )
end
