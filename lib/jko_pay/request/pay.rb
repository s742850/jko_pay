require 'tappay/request/base'
require 'tappay/response/pay'

module JkoPay
  module Request
    class Pay < Base

      def card_token= token
        @card_token = token
      end

      def amount= amount
        @amount = amount.to_i
      end

      def un_redeem_amount= un_redeem_amount
        @un_redeem_amount = un_redeem_amount.to_i
      end

      private

      def to_hash
        hash = super
        hash[:CardToken] = @card_token
        hash[:TradeAmount] = @amount
        hash[:UnRedeem] = @un_redeem_amount
        hash
      end

      def request_action
        'Payment'
      end

      def response_klass
        Response::Pay
      end

    end
  end
end