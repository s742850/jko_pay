require 'jko_pay/request/online/pay'
require 'jko_pay/request/online/refund'

module JkoPay
  module Request
    module Online
      def self.define_host= api_host
        configure {|c| c.api_host = api_host}
      end

      def self.config
        @config ||= JkoPay::Config.new
      end

      def self.configure
        yield config
      end
    end
  end
end