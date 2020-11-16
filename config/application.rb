require_relative 'boot'

require 'rails/all'


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module News
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.secret_key_base = "45c4f70711eb68ef0d5c2fe13153625538d091d616233ecac18ded102c2b10a917a1c70165a4a5b3cc87a7d97452f807841ebbddcb94cdff4deaddace6d83189"
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
