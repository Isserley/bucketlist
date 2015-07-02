source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'twitter', '~> 5.14.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Fer styling
gem 'bootstrap-sass', '~> 3.3.5'
# Gives a lot of helpful devise navigation and layouts for signup/sign in
gem 'rails_layout'
# replaces erb syntax to make code more readable
gem 'haml', '~> 4.0.6'
# installs pagination
gem 'will_paginate', '~> 3.0.6'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
# paperclip for adding pictures to site
gem "paperclip", "~> 4.2"
# devise for user signin and authentication
gem 'devise'
# cloudinary for using cloud image services
gem 'cloudinary'
# generates a bunch of data
# gem 'faker', '~> 1.4.3'

group :test do
	# tells test coverage percetage
	gem 'simplecov', :require => false

	# another tester..
	gem 'shoulda-matchers'

  gem 'factory_girl_rails'  # '~> 4.0' important to have gem version if possible

end

group :development do
  gem 'faker'
  gem 'populator'
end


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
	gem 'pry'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

 #rspec gem for testing
	gem 'rspec-rails', '~> 3.0'

  gem "spork-rails"
end
