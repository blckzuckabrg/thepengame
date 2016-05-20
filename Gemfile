source 'https://rubygems.org'
ruby '2.1.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Bootstrap-sass is a Sass-powered version of Bootstrap 3, 
# ready to drop right into your Sass powered applications
gem 'bootstrap-sass', '>= 3.3.6'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# CoffeeScript is a little language that compiles into JavaScript
gem 'coffee-script-source', '~> 1.8.0'

# Flexible authentication solution for Rails with Warden
gem 'devise', '>= 4.0.1'

# Easy upload management for ActiveRecord
gem 'paperclip', '~> 4.3'

# The official AWS SDK for Ruby. Provides both resource oriented 
# interfaces and API clients for AWS services
gem 'aws-sdk', '< 2.0'

# Masonry is a JavaScript grid layout library. It works by placing 
# elements in optimal position based on available vertical space,
# sort of like a mason fitting stones in a wall.
# You’ve probably seen it in use all over the Internet.
gem 'masonry-rails', '~> 0.2.4'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
	# Use sqlite3 as the database for Active Record
	gem 'sqlite3'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end

group :production do
  # Ruby extension library providing an API to PostgreSQL
  gem 'pg'
  # Makes running your Rails app easier
  # This gem enables serving assets in production and setting your logger to standard out
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
