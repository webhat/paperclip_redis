# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: paperclip_redis 0.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "paperclip_redis"
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Daniel W. Crompton", "Norman Timmler"]
  s.date = "2014-06-28"
  s.description = "This module stores the image files in Redis"
  s.email = ["paperclip+redis@specialbrands.net", ""]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".travis.yml",
    "Gemfile",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/paperclip/myversion.rb",
    "lib/paperclip/storage.rb",
    "lib/paperclip/storage/redis.rb",
    "lib/paperclip_redis.rb",
    "paperclip_redis.gemspec",
    "spec/file.png",
    "spec/models/paperclip_model_spec.rb",
    "spec/models/paperclip_redis_spec.rb",
    "spec/paperclip-app/.gitignore",
    "spec/paperclip-app/Gemfile",
    "spec/paperclip-app/Gemfile.lock",
    "spec/paperclip-app/README.rdoc",
    "spec/paperclip-app/Rakefile",
    "spec/paperclip-app/app/assets/images/.keep",
    "spec/paperclip-app/app/assets/javascripts/application.js",
    "spec/paperclip-app/app/assets/stylesheets/application.css",
    "spec/paperclip-app/app/controllers/application_controller.rb",
    "spec/paperclip-app/app/controllers/concerns/.keep",
    "spec/paperclip-app/app/helpers/application_helper.rb",
    "spec/paperclip-app/app/mailers/.keep",
    "spec/paperclip-app/app/models/.keep",
    "spec/paperclip-app/app/models/concerns/.keep",
    "spec/paperclip-app/app/models/test_paperclip.rb",
    "spec/paperclip-app/app/views/layouts/application.html.erb",
    "spec/paperclip-app/bin/bundle",
    "spec/paperclip-app/bin/rails",
    "spec/paperclip-app/bin/rake",
    "spec/paperclip-app/bin/spring",
    "spec/paperclip-app/config.ru",
    "spec/paperclip-app/config/application.rb",
    "spec/paperclip-app/config/boot.rb",
    "spec/paperclip-app/config/database.yml",
    "spec/paperclip-app/config/environment.rb",
    "spec/paperclip-app/config/environments/development.rb",
    "spec/paperclip-app/config/environments/production.rb",
    "spec/paperclip-app/config/environments/test.rb",
    "spec/paperclip-app/config/initializers/assets.rb",
    "spec/paperclip-app/config/initializers/backtrace_silencers.rb",
    "spec/paperclip-app/config/initializers/cookies_serializer.rb",
    "spec/paperclip-app/config/initializers/filter_parameter_logging.rb",
    "spec/paperclip-app/config/initializers/inflections.rb",
    "spec/paperclip-app/config/initializers/mime_types.rb",
    "spec/paperclip-app/config/initializers/session_store.rb",
    "spec/paperclip-app/config/initializers/wrap_parameters.rb",
    "spec/paperclip-app/config/locales/en.yml",
    "spec/paperclip-app/config/routes.rb",
    "spec/paperclip-app/config/secrets.yml",
    "spec/paperclip-app/db/migrate/20140626105022_create_test_paperclips.rb",
    "spec/paperclip-app/db/migrate/20140626114326_add_attachment_avatar_to_test_paperclips.rb",
    "spec/paperclip-app/db/schema.rb",
    "spec/paperclip-app/db/seeds.rb",
    "spec/paperclip-app/lib/assets/.keep",
    "spec/paperclip-app/lib/tasks/.keep",
    "spec/paperclip-app/log/.keep",
    "spec/paperclip-app/public/404.html",
    "spec/paperclip-app/public/422.html",
    "spec/paperclip-app/public/500.html",
    "spec/paperclip-app/public/favicon.ico",
    "spec/paperclip-app/public/robots.txt",
    "spec/paperclip-app/vendor/assets/javascripts/.keep",
    "spec/paperclip-app/vendor/assets/stylesheets/.keep",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/webhat/paperclip_redis"
  s.licenses = ["LGPLv2"]
  s.rubygems_version = "2.2.2"
  s.summary = "Store Images in Redis"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<paperclip>, [">= 0"])
      s.add_runtime_dependency(%q<redis>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<guard-yard>, [">= 0"])
      s.add_development_dependency(%q<rails>, ["~> 4.0.5"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
    else
      s.add_dependency(%q<paperclip>, [">= 0"])
      s.add_dependency(%q<redis>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<guard-yard>, [">= 0"])
      s.add_dependency(%q<rails>, ["~> 4.0.5"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<paperclip>, [">= 0"])
    s.add_dependency(%q<redis>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<guard-yard>, [">= 0"])
    s.add_dependency(%q<rails>, ["~> 4.0.5"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
  end
end

