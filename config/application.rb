require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'rack/cors'

Bundler.require(*Rails.groups)

module SStore
  class Application < Rails::Application


    config.middleware.insert_before "ActionDispatch::Static", "Rack::Cors" do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :post, :options]
      end
    end

#    Rails.application.config.middleware.use OmniAuth::Builder do
#      client_secrets = Google::APIClient::ClientSecrets.load
#      provider :google_oauth2, ENV["GOOGLE_CLIENT_ID"], ENV["GOOGLE_CLIENT_SECRET"], { :scope => 'email'}
#    end

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
  end
end
