require 'rspec/core'

RSpec.configure do |config|
  require 'liquid_stream/matchers'
  config.include LiquidStream::Matchers
end
