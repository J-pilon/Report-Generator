require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ReportGenerator
  class Application < Rails::Application
    config.load_defaults 7.0

    config.generators do |g|
      g.test_framework :rspec,
                      fixtures: true,
                      view_specs: false,
                      helper_specs: false,
                      routing_specs: false,
                      controller_specs: false,
                      request_specs: true
      g.fixture_replacement :factory_bot,
                            dir: 'spec/factories'
      g.stylesheets false
      g.javascripts false
      g.helper false
      g.assets false
      g.channel assets: false
    end
  end
end
