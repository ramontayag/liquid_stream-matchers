require "liquid_stream/matchers/version"
require "liquid_stream/matchers/stream"
require "liquid_stream/matchers/rspec"

module LiquidStream
  module Matchers
    def stream(expected)
      Stream.new(expected)
    end
  end
end
