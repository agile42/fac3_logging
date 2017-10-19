require 'bundler/setup'
require 'fac3_logging'
require 'bundler'

Bundler.require :default, :development

# If you're using all parts of Rails:
# Combustion.initialize! :all
# Or, load just what you need:
# Combustion.initialize! :active_record, :action_controller

require 'rails/all'
require 'rspec/rails'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  # config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
