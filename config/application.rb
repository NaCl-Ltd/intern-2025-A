require_relative "boot"
require "rails/all"
Bundler.require(*Rails.groups)

module SampleApp
  class Application < Rails::Application
    config.load_defaults 7.0
    config.i18n.default_locale = :ja

    config.i18n.available_locales = %i(ja en zh ko)
    config.i18n.enforce_available_locales = true

    config.active_storage.variant_processor = :mini_magick
  end
end
