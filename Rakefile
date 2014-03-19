# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
require './lib/paperclip/version.rb'
Jeweler::Tasks.new do |gem|
  gem.name = "paperclip_redis"
  gem.homepage = "http://github.com/webhat/paperclip_redis"
  gem.license = "LGPLv2"
  gem.summary = "Store Images in Redis"
  gem.description = "This module stores the image files in Redis"
  gem.authors = ["Daniel W. Crompton", "Norman Timmler"]
	gem.email = ['paperclip+redis@specialbrands.net', '']
  gem.version = Paperclip::Version::STRING
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

desc "Code coverage detail"
task :simplecov do
  ENV['COVERAGE'] = "true"
  Rake::Task['spec'].execute
end

task :default => :spec

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "paperclip_redis #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
