require_relative 'boot'

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module DPressed
  class Application < Rails::Application
    config.load_defaults 5.2
    config.i18n.available_locales [:se, :en]
    config.i18n.default_locale :en

    config.i18n.default_locale :en

    config.generators do |generate|
      generate.helper false
      generate.assets false
      generate.view_specs false
      generate.helper_specs false
      generate.routing_specs false
      generate.controller_specs false
      generate.system_tests false

      config.middleware.insert_before 0, Rack::Cors do
        allow do
          origins '*'
          resource '*', headers: :any, methods: [:get, :post, :put, :delete],
          expose: ['access-token', 'expiry', 'token-type', 'uid', 'client']
        end
      end
    end
  end
end
