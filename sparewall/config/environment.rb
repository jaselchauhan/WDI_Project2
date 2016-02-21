require "sinatra/reloader" if development?
require 'sass/plugin/rack'

#require sinatra flash
require 'sinatra/flash'
require_relative '../lib/sinatra-flash'


Sass::Plugin.options[:style] = :compact
use Sass::Plugin::Rack

register Sinatra::AssetPack
assets do
    js :application, [
        '/bower_components/jquery/dist/jquery.min.js',
        '/bower_components/bootstrap/dist/js/bootstrap.min.js',
        '/js/app.js'
    ]
    css :application, [
        '/bower_components/bootstrap/dist/css/bootstrap.min.css',
        '/stylesheets/style.css'
    ]
    js_compression :jsmin
    css_compression :simple
end

# Some helper constants for making paths easier to r&w
APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))
APP_NAME = APP_ROOT.basename.to_s

# Set the views directory
configure do

    enable :sessions
    set :session_secret, ENV['SESSION_SECRET'] || "this is a secret"

  set :views, File.join(APP_ROOT, "app", "views")
end

# Set up the models, controllers and helpers
["models", "controllers", "helpers"].each do |folder|
  Dir[APP_ROOT.join('app', folder, '*.rb')].each { |file| require file }
end