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
Rails.application.config.assets.precompile += %w( users.css )
Rails.application.config.assets.precompile += %w( users.js )
Rails.application.config.assets.precompile += %w( items.css )
Rails.application.config.assets.precompile += %w( items.js )
Rails.application.config.assets.precompile += %w( customers.css )
Rails.application.config.assets.precompile += %w( customers.js )
Rails.application.config.assets.precompile += %w( customer_items.css )
Rails.application.config.assets.precompile += %w( customer_items.js )
Rails.application.config.assets.precompile += %w( invoices.css )
Rails.application.config.assets.precompile += %w( invoices.js )

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
