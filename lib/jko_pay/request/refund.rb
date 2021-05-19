require 'jko_pay/request/base'
require 'jko_pay/response/refund'

module JkoPay
  module Request
    class Refund < Base

      def trade_number= trade_number
        @trade_number = trade_number
      end

      def amount= amount
        @amount = amount.to_i
      end

      private

      def to_hash
        hash = super
        hash[:TradeNo] = @trade_number
        hash[:TradeAmount] = @amount
        hash
      end

      def request_action
        'Refund'
      end

      def response_klass
        Response::Refund
      end

    end
  end
end