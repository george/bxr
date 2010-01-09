require 'rubygems'
require 'spork'

ENV["RAILS_ENV"] ||= 'test'

Spork.prefork do
  require File.expand_path(File.join(File.dirname(__FILE__),'..','config','environment'))
  require 'spec/autorun'
  require 'spec/rails'

  require 'webrat/integrations/rspec-rails'
  
  Spec::Runner.configure do |config|
    config.use_transactional_fixtures = true
    config.use_instantiated_fixtures  = false
    config.fixture_path = RAILS_ROOT + '/spec/fixtures/'
  end
end

Spork.each_run do
  factories = Dir["#{File.dirname(__FILE__)}/factories/*_factory.rb"]
  factories.each {|f| load f}

  # Requires supporting files with custom matchers and macros, etc,
  # in ./support/ and its subdirectories.
  Dir[File.expand_path(File.join(File.dirname(__FILE__),'support','**','*.rb'))].each {|f| require f}
end

