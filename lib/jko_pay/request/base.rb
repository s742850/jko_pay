module JkoPay
  module Request
    class Base

      def initialize params=nil
        return unless params.is_a? Hash
        params.each_pair do |key, value|
          send "#{key}=", value
        end
      end

      def configure config
        @config = config
      end

      def request
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
      end

    end
  end
end