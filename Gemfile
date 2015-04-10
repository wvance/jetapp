source 'https://rubygems.org'
gem 'bundler'
#FOR WINDOWS
gem 'tzinfo-data'
#FOR USER ACCOUNTS 
gem 'devise'

# ADDED GRAVATAR: PROFILE PICTURE
gem 'gravtastic'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'

# Use sqlite3 as the database for Active Record
# USE SQLITE FOR DEV, AND POSTGRES FOR PROD (NEEDED FOR HEROKU)
group :development do
  gem 'sqlite3'
end
group :production do
  gem 'pg'
  # UPDATED LOGGING FOR HEROKU
  gem 'rails_12factor'
end

# PAGINATION GEM & STYLE
gem 'kaminari'

# FIXES BUGS FOR JQUERY 
gem 'jquery-turbolinks'

# STYLE FOR MATERIAL: NEEDED
# https://github.com/FezVrasta/bootstrap-material-design
# https://github.com/Aufree/bootstrap-material-design
# https://fezvrasta.github.io/bootstrap-material-design/bootstrap-elements.html
# gem 'bootstrap-material-design', '~> 0.1.7'

# USED FOR BETTER CUSTOMIZED FORMS
gem 'simple_form'


# USED FOR CUSTOM LOGIN/ API'S
# gem 'omniauth'
# gem 'omniauth-facebook'

# PICTURE UPLOADS
gem 'carrierwave'
gem 'mini_magick', "~> 4.2.1"
# FONT AWESOME
gem "font-awesome-rails"

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'coffee-script-source', '1.8.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
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
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  gem 'cucumber-rails', :require => false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
end

