source 'https://rubygems.org'

if RUBY_VERSION =~ /1.9/
	  Encoding.default_external = Encoding::UTF_8
		Encoding.default_internal = Encoding::UTF_8
end

gem 'paperclip'
gem 'redis'

group :development do
  gem "shoulda", ">= 0"
  gem "rdoc", "~> 3.12"
  gem "bundler", "~> 1.0"
  gem "jeweler", "~> 2.0.1"
  gem "simplecov", ">= 0"
end

group :development, :test do
	gem 'rspec'
end
