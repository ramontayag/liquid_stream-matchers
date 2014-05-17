module LiquidStream
  module Matchers
    class Stream
      def initialize(attr_name)
        @attr_name = attr_name
      end

      def matches?(klass)
        @klass = klass
        key_exists? && options_correct?
      end

      def as(as)
        @as = as
        self
      end

      def failure_message
        base_message = %Q(expected #{@klass} to stream `#{@attr_name}`)
        if defined? @as
          base_message += " as `#{@as}`"
        end
        base_message
      end

      def description
        "Ensures that #{@klass} streams #{@attr_name}."
      end

      private

      def key_exists?
        @klass.liquid_streams.has_key?(@attr_name)
      end

      def options_correct?
        if defined? @as
          as = @klass.liquid_streams.fetch(@attr_name).
            fetch(:options)[:as]
          as = as.constantize if as.respond_to?(:constantize)
          as == @as
        else
          true
        end
      end

    end
  end
end
