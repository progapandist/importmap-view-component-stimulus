require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ImportmapViewComponentStimulus
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # This is a temporary workaround until we can figure out how to properly
    # autoload Stimulus controllers from non-default folder locations.
    # See https://github.com/Shopify/infra-central/pull/15#discussion_r895964260
    # and https://github.com/github/view_component/issues/1064
    config.eager_load_paths << Rails.root.join('app/frontend/components')
    config.importmap.cache_sweepers << Rails.root.join('app/frontend')
    config.assets.paths << Rails.root.join('app/frontend')
    config.view_component.view_component_path = 'app/frontend/components'
  end
end
