source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.2'

gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 4.1'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'activeresource', '5.1.0'

group :test do
  gem 'rspec-rails', '3.9.0'
  gem 'shoulda-matchers', '4.1.2'
  gem 'json_spec', '1.1.5'
  gem 'webmock', '3.8.0'
  gem 'vcr', '5.0.0'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
end
