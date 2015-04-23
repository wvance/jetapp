source 'https://rubygems.org'
gem 'bundler'
gem 'tzinfo-data'                   # FOR WINDOWS BUG FIX
gem 'devise'                        # FOR USER ACCOUNTS 
gem 'gravtastic'                    # ADDED GRAVATAR: PROFILE PICTURE
gem 'rails', '4.2.0'                # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'kaminari'                      # PAGINATION GEM
gem 'jquery-turbolinks'             # FIXES BUGS FOR JQUERY & RAILS
gem 'simple_form'                   # USED FOR BETTER CUSTOMIZED FORMS
gem 'carrierwave'                   # PICTURE UPLOADS
gem 'mini_magick' , "~> 4.2.1"      # USED TO RESIZE IMAGES
gem "font-awesome-rails"            # FONT AWESOME ICONS
gem 'state_machines-activerecord'   # ADDS STATES TO APPLCIATION (FRIEND REQUESTS) 
gem 'modernizr-rails'               # USED FOR FRONTEND DEV
gem "figaro"                        # USED TO MANAGE SECRET INFO (USERNAME AND PASSWORD OF GMAILS SETTINGS, ETC)
gem 'draper', '~> 1.3'              # USED TO ADD 'DECORATORS' TO RAILS

# USED FOR CUSTOM LOGIN/ API'S
# gem 'omniauth'
# gem 'omniauth-facebook'


gem 'sass-rails'  , '~> 5.0'        # Use SCSS for stylesheets
gem 'uglifier'    , '>= 1.3.0'      # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.1.0'      # Use CoffeeScript for .coffee assets and views

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'coffee-script-source', '1.8.0'
gem 'jquery-rails'                  # Use jquery as the JavaScript library
gem 'turbolinks'                    # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'jbuilder', '~> 2.0'            # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'sdoc', '~> 0.4.0', group: :doc # bundle exec rake doc:rails generates the API under doc/api.


# gem 'bcrypt', '~> 3.1.7'          # Use ActiveModel has_secure_password
# gem 'unicorn'                     # Use Unicorn as the app server
# gem 'capistrano-rails',           # Use Capistrano for deployment
#   group: :development

group :development, :test do
  gem 'byebug'                      # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'web-console', '~> 2.0'       # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'spring'                      # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'rspec-rails'
  gem 'shoulda', '~> 3.5.0'         # ALLOWS FOR SHOULD TEST FUNCTIONS TO BE RAN WITH RSPEC
  gem 'factory_girl_rails'
end

group :test do
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'selenium-webdriver'
end

group :development do               # USE SQLITE FOR DEV, AND POSTGRES FOR PROD (NEEDED FOR HEROKU)
  gem 'sqlite3'
end
group :production do
  gem 'pg'
  gem 'rails_12factor'              # UPDATED LOGGING FOR HEROKU
end
gem 'gherkin', platforms: :ruby     #TESTS