source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}.git" }

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'graphql'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'

group :development, :test do
  gem 'factory_bot'
  gem 'factory_bot_rails'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry-rails'
end

group :development do
  gem "graphiql-rails"
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'database_cleaner', '~> 1.6', '>= 1.6.2'
  gem 'faker', '~> 1.8', '>= 1.8.7'
  gem 'rspec-graphql_matchers'
  gem 'rspec-rails', '~> 3.7', '>= 3.7.2'
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.2'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
