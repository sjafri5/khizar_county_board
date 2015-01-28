source 'https://rubygems.org'

ruby '2.1.5'
gem 'rails', '4.1.0'

# Database
gem 'pg'

# SASS
gem 'sass-rails', '~> 4.0.0'

# JS
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'therubyracer'

# Bootstrap
gem "twitter-bootstrap-rails"

# JQuery
gem 'jquery-rails', '3.1.0'
gem 'jquery-ui-rails', '4.2.1'

# New Relic
gem 'newrelic_rpm'

# HAML
gem 'haml'
gem 'haml-rails'

# JSON
gem 'jbuilder', '~> 1.2'

# Deployment
gem 'figaro'

# Use unicorn as the app server
gem 'unicorn'
gem 'unicorn-rails'

group :doc do
  gem 'sdoc', require: false
end

group :development, :test do
  gem 'byebug'

  gem 'rspec-rails', '~> 3.0.0'
  gem 'factory_girl_rails', '~> 4.2.1'
  gem 'faker', '~> 1.4.3'

  gem 'pry'
end

group :development do
  gem "rails-erd"
  gem "thin"
  gem 'meta_request', '~> 0.3.0'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :test do
  gem 'selenium-webdriver', '~> 2.42.0'
  gem 'database_cleaner', '~> 1.2.0'
  gem 'shoulda-matchers', '~> 2.6.1'
  gem 'twilio-test-toolkit'
  gem 'capybara', '~> 2.4.1'

  gem 'launchy', '~> 2.4.0'
end

group :production do
  gem 'rails_12factor'
end
