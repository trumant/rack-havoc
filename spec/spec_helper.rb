require 'rspec'
require 'rack/test'

RSpec.configure do |config|
  config.color_enabled = true
  config.formatter = 'documentation'
end