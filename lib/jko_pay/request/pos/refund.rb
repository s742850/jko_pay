require 'jko_pay/request/pos/base'
require 'jko_pay/response/pos/refund'

module JkoPay
  module Request
    module Pos
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
          hash[:Remark] = ""
          hash[:Extra1] = ""
          hash[:Extra2] = ""
          hash[:Extra3] = ""
          hash
        end

        def request_action
          'Refund'
        end

        def response_klass
          Response::Pos::Refund
        end

      end
    end
  end
end