require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MagratheaTesteruby
  class Application < Rails::Application

    # Locale config
    config.i18n.default_locale = :'pt-BR'
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Config for Fonts
    config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/

    # Load de lib paths
    config.autoload_paths += %W(#{config.root}/lib)

  end
end
