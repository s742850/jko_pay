require 'jko_pay/response/pos/pay'

module JkoPay
  module Response
    module Pos
      class Refund < Pay

        def refund_trade_number
          @RefundTradeNo
        end

        def refund_trade_time
          @RefundTradeTime
        end

      end
    end
  end
end