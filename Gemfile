source 'https://rubygems.org'
gem 'rails', '3.2.8'

gem 'jquery-rails'
gem 'inherited_resources'
gem 'gravatar_image_tag'
gem "haml", ">= 3.1.7"
gem "bootstrap-sass", ">= 2.1.1.0"
gem "devise", ">= 2.1.2"
gem "cancan", ">= 1.6.8"
gem "rolify", ">= 3.2.0"
gem "simple_form", ">= 2.0.4"


group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem "therubyracer", ">= 0.10.2", :platform => :ruby
  gem 'jquery-ui-redmond'
end

group :production do
  gem "thin", ">= 1.5.0"
  gem 'pg', '~>0.12.2'
end

group :development do
  gem "hub", ">= 1.10.2", :require => nil
  gem "quiet_assets", ">= 1.0.1"
  gem "haml-rails", ">= 0.3.5"
  gem "hpricot", ">= 0.8.6"
  gem "ruby_parser", ">= 3.0.1"
  gem 'sqlite3'
end

group :test do
  gem "database_cleaner", ">= 0.9.1"
  gem "email_spec", ">= 1.4.0"
  gem "cucumber-rails", ">= 1.3.0", :require => false
  gem "launchy", ">= 2.1.2"
  gem "capybara", ">= 1.1.3"
end

group :development, :test do
  gem "rspec-rails", ">= 2.11.4"
  gem "factory_girl_rails", ">= 4.1.0"
  gem "pry"
end