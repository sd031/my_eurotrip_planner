source 'https://rubygems.org'

gem 'rails', '3.2.14'
gem 'bootstrap-sass'
gem 'will_paginate', '3.0.4'
gem 'bootstrap-will_paginate', '0.0.9'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'guard-rspec', '2.5.0'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'jquery_datepicker'
gem 'jquery-ui-rails'

group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2' #used by Heroku to serve static assets such as images and stylesheets.
end

group :test do
  gem 'selenium-webdriver', '~> 2.35.1'
  gem 'capybara', '2.1.0'
  gem 'growl', '1.0.3'
  gem 'factory_girl_rails', '4.2.1'
  gem 'shoulda'
  gem 'launchy'
end

group :development, :test do
  gem 'spork-rails', github: 'sporkrb/spork-rails'
  gem 'guard-spork', '1.5.0'
  gem 'childprocess'
end
