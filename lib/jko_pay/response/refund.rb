require 'jko_pay/response/pay'

module JkoPay
  module Response
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