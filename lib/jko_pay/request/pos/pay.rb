require 'jko_pay/request/pos/base'
require 'jko_pay/response/pos/pay'

module JkoPay
  module Request
    module Pos
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
          hash[:Remark] = ""
          hash[:Extra1] = ""
          hash[:Extra2] = ""
          hash[:Extra3] = ""
          hash
        end

        def request_action
          'Payment'
        end

        def response_klass
          Response::Pos::Pay
        end

      end
    end
  end
end