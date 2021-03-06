if ENV['BUNDLE_SOURCE'].nil? || ENV['BUNDLE_SOURCE'].empty?
  source 'https://rubygems.org'
else
  source ENV['BUNDLE_SOURCE']
end

git_source :github do |repo_name|
  unless repo_name.include?('/')
    repo_name = "#{repo_name}/#{repo_name}"
  end
  "https://github.com/#{repo_name}"
end

edge = Pathname.new(__FILE__).extname == '.edge'

if edge
  gem 'rails', github: 'rails'
  gem 'arel', github: 'rails/arel'
  gem 'sprockets-rails', github: 'rails/sprockets-rails'
  gem 'sass-rails', github: 'rails/sass-rails'
  gem 'coffee-rails', github: 'rails/coffee-rails'
else
  gem 'rails', '4.2.5.1'
  gem 'arel', '>= 6.0.0'
  gem 'sprockets-rails'
  gem 'sass-rails', '~> 5.0.0'
  gem 'coffee-rails', '~> 4.1.0'
end

gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'jbuilder'
gem 'faml'
gem 'revision_plate', require: 'revision_plate/rails'

gem 'faraday'
gem 'nokogiri'

gem 'acts_as_list', '>= 0.6.0'
gem 'redis'
gem 'fluent-logger'
gem 'msgpack', '>= 0.5.8'
gem 'active_decorator'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'dotenv-rails'
gem 'dalli'
gem 'pg'
gem 'sentry-raven'
gem 'raven-transports-fluentd'

group :doc do
  gem 'sdoc', require: false
end

group :production do
  gem 'unicorn'
end

group :development do
  gem 'launchy' # For Capybara's save_and_open_page
  gem 'capistrano', '>= 3.2', require: false
  gem 'capistrano-rails', require: false
  gem 'capistrano-bundler', '>= 1.1.2', require: false
  gem 'libssh', require: false
  gem 'rubocop', require: false
end

group :test do
  if edge
    gem 'rspec-rails', github: 'rspec/rspec-rails'
    gem 'rspec', github: 'rspec/rspec'
    gem 'rspec-core', github: 'rspec/rspec-core'
    gem 'rspec-expectations', github: 'rspec/rspec-expectations'
    gem 'rspec-mocks', github: 'rspec/rspec-mocks'
    gem 'rspec-support', github: 'rspec/rspec-support'
  else
    gem 'rspec-rails', '>= 3.0.0'
    gem 'rspec', '>= 3.0.0'
  end
  gem 'fuubar', '>= 2.0.0.rc1'
  gem 'rspec-activemodel-mocks'
  gem 'factory_girl_rails'
  gem 'capybara', '>= 2.3.0', require: 'capybara/rspec'
  gem 'poltergeist', require: 'capybara/poltergeist'
  gem 'database_rewinder'
  gem 'simplecov', '>= 0.9.0'

  gem 'webmock', require: 'webmock/rspec'
  gem 'vcr'
  gem 'fakeredis', require: 'fakeredis/rspec'
  gem 'timecop'
end

group :development, :test do
  gem 'pry-byebug'
  gem 'pry-stack_explorer'
  gem 'pry-rails'
  gem 'coveralls'
end
