source 'https://rubygems.org'
#ruby '2.0.0'

if RUBY_VERSION =~ /1.9/
	  Encoding.default_external = Encoding::UTF_8
		Encoding.default_internal = Encoding::UTF_8
end

rails_version = ENV["RAILS_VERSION"] || "default"

rails = case rails_version
when "master"
	{github: "rails/rails"}
when "default"
	">= 3.1.0"
else
	"~> #{rails_version}"
end

gem 'paperclip'
gem 'redis'

group :development do
  gem 'shoulda', '>= 0'
  gem 'rdoc', '~> 3.12'
  gem 'bundler', '~> 1.0'
  gem 'jeweler', '~> 2.0.1'
  gem 'simplecov', '>= 0'
end

group :development, :test do
  gem 'guard-rspec', '>= 0'
  gem 'guard-yard', '>= 0'
	gem 'rails', rails
	gem 'sqlite3'
	gem 'rspec'
	gem 'rspec-rails'
	gem 'coveralls', require: false
end
