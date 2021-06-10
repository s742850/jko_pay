module JkoPay
  module Response
    class Base
      attr_reader :raw

      def initialize(params, raw = nil)
        @raw = raw
        params.each_pair do |key, value|
          instance_variable_set("@#{key}", value)
        end
      end

      def success?
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
      end

    end
  end
end