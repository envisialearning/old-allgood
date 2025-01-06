require_relative "lib/allgood/version"

Gem::Specification.new do |spec|
  spec.name = "allgood"
  spec.version = Allgood::VERSION
  spec.authors = ["kennethbrannen"]
  spec.email = ["kenneth.brannen@envisiailearning.com"]

  spec.summary = "Add quick, simple, and beautiful health checks to your Rails application. Backport of rameerez/allgood"
  spec.description = "Define custom health checks for your app (as in: are there any new users in the past 24 hours) and see the results in a simple /healthcheck page that you can use to monitor your production app with UptimeRobot, Pingdom, or other monitoring services. It's also useful as a drop-in replacement for the default `/up` health check endpoint for Kamal deployments. Backport of https://github.com/rameerez/allgood"
  spec.homepage = "https://github.com/envisialearning/old-allgood"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7.8"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/envisialearning/old-allgood"
  spec.metadata["changelog_uri"] = "https://github.com/envisialearning/old_allgood/blob/main/CHANGELOG.md"

  # Manually specify the files to be added to the gem
  spec.files         = [
    "CHANGELOG.md",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "allgood.jpeg",
    "allgood_skipped.webp",
    "app/controllers/allgood/base_controller.rb",
    "app/controllers/allgood/healthcheck_controller.rb",
    "app/views/allgood/healthcheck/index.html.erb",
    "app/views/layouts/allgood/application.html.erb",
    "config/routes.rb",
    "examples/allgood.rb",
    "lib/allgood.rb",
    "lib/allgood/cache_store.rb",
    "lib/allgood/configuration.rb",
    "lib/allgood/engine.rb",
    "lib/allgood/version.rb",
    "sig/allgood.rbs"
  ]


  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 4.2.0"
end
