require 'jko_pay/request/pos/pay'
require 'jko_pay/request/pos/cancel'
require 'jko_pay/request/pos/refund'
require 'jko_pay/request/pos/inquiry'

module JkoPay
  module Request
    module Pos
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