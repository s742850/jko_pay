require 'jko_pay/response/base'

module JkoPay
  module Response
    class Cancel < Base

      def gateway_trade_number
        @GateWayTradeNo
      end

      def action_code
        @ActionCode
      end

      def amount
        @TradeAmount
      end

    end
  end
end