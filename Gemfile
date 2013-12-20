source 'https://rubygems.org'
ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'
gem 'bootstrap-sass', '2.3.2'
gem 'bcrypt-ruby', '3.1.2'
gem 'bootstrap-datepicker-rails'

# Use sqlite3 as the database for Active Record
group :development, :test do
	gem 'sqlite3', '1.3.7'
	gem 'rspec-rails', '2.13.0'
	gem 'guard-rspec', '2.5.0'
	gem 'guard-spork', '1.5.0'
end
group :test do
  gem 'capybara', github: 'jnicklas/capybara'
end

# Use SCSS for stylesheets
# Use Uglifier as compressor for JavaScript assets
# Use CoffeeScript for .js.coffee assets and views
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
group :assets do
  gem 'sass-rails',   '4.0.0.beta1'
  gem 'coffee-rails', '4.0.1'
  gem 'uglifier', '1.0.3'
end

# Use jquery as the JavaScript library
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jquery-rails', '2.2.1'
gem 'turbolinks', '1.0.0'
gem 'jbuilder', '1.0.1'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :production do
    gem 'pg', '0.15.1'
    gem 'rails_12factor', '0.0.2'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
