require 'bundler'
Bundler.require

require File.expand_path('../config/environment', __FILE__)

run LaughTracksApp


RSpec.configure do |config|
  config.include Capybara::DSL
end
