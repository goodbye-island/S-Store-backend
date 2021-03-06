# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application
require 'rack'
require 'rack/cors'
use Rack::Cors do
  allow do
    origins '*'
    resource '/fonts/*', :headers => :any, :methods => :get
  end
end