source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 8.0.1"
# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "propshaft"
# Use sqlite3 as the database for Active Record
gem "sqlite3", ">= 2.1"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"
# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Use the database-backed adapters for Rails.cache, Active Job, and Action Cable
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
gem "kamal", "~> 2.6", require: false

# Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem "thruster", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# For pagination
gem "pagy", "~> 9.3"

gem "sorbet-runtime"

# YAML로 설정파일을 관리하기 위한 gem
gem "config", "~> 5.5"

# for sass asset pipeline
gem "dartsass-rails", "~> 0.5.1"

gem "inline_svg"

# for bulk upsert
gem "activerecord-import", "~> 2.1"

# for soft delete
gem "acts_as_paranoid", "~> 0.10.3"

# for LLM integration
gem "ruby-openai", "~> 8.1"

# for template rendering
gem "liquid", "~> 5.8"

# for markdown rendering
gem "redcarpet", "~> 3.6"

# for error reporting
gem "sentry-ruby", "~> 5.23"
gem "sentry-rails", "~> 5.23"

# for OAuth integration
gem "omniauth", "~> 2.1"
gem "omniauth-rails_csrf_protection", "~> 1.0"
gem "omniauth-naver", "~> 0.2.0"

# for admin panel
gem "activeadmin", "~> 4.0.0.beta15"
# cssbundling-rails 설치 없이 ActiveAdmin을 사용하기 위해 임시 조치
## ref. https://github.com/jaynetics/activeadmin_assets
gem "activeadmin_assets"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false

  # Tools for generating RBI files
  gem "tapioca", require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Static type checking [https://sorbet.org/]
  gem "sorbet"

  # Static analysis for ERB templates [https://github.com/Shopify/erb_lint]
  gem "erb_lint"

  # DB schema visualization
  gem "rails-erd", "~> 1.7"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
end

gem "rubocop-rails", "~> 2.29"
