require "jko_pay/config"
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

      def config
        @config ||= JkoPay::Config.new
      end

      def request
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
      end

      def request_host
        return config.api_host if config.api_host.present?
        klass_name = self.class.name.split("::")[0..-2].join("::")
        Object.const_get(klass_name).config.api_host
      end

    end
  end
end