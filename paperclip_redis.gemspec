
Gem::Specification.new do |gem|
  gem.name = 'paperclip_redis'
  gem.version = '0.0.6'
  gem.summary = "Store Images in Redis"
  gem.description = "This module stores the image files in Redis"
  gem.authors = ["Daniel W. Crompton", "Norman Timmler"]
	gem.email = ['paperclip+redis@specialbrands.net', '']
  gem.files = `git ls-files`.split($\)
  gem.executables = gem.files.grep('.').map { |f| File.basename(f) }
  gem.test_files = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

	gem.add_dependency "paperclip", ">= 3.1", "< 5"
	gem.add_dependency "redis"

  gem.add_development_dependency "rspec"
end

