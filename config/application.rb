require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Nomady
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.i18n.default_locale = :ja
    config.time_zone = 'Tokyo'
    
      # Rspec設定追加
config.generators do |g|
  g.test_framework :rspec, 
        view_specs: false, 
        helper_specs: false, 
        controller_specs: false, 
        routing_specs: false
end
  end
end

module ValidationMessageSample
  class Application < Rails::Application
    config.load_defaults 5.2

    # 下の２行を追加する
    config.i18n.default_locale = :ja
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.yml').to_s]
  end
end


