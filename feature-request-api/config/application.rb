require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FeatureRequestApi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration settings can be added here
    # For example, you can set the time zone or locale
    # config.time_zone = 'Central Time (US & Canada)'
    # config.i18n.default_locale = :de
  end
end