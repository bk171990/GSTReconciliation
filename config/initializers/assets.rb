# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( home.css )
Rails.application.config.assets.precompile += %w( home.js )
Rails.application.config.assets.precompile += %w( registrations.css )
Rails.application.config.assets.precompile += %w( registrations.js )
Rails.application.config.assets.precompile += %w( general_settings.css )
Rails.application.config.assets.precompile += %w( general_settings.js )
Rails.application.config.assets.precompile += %w( charted_accountants.css )
Rails.application.config.assets.precompile += %w( charted_accountants.js )
Rails.application.config.assets.precompile += %w( parties.css )
Rails.application.config.assets.precompile += %w( parties.js )

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
