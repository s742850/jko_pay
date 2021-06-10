require 'jko_pay/response/pos/base'

module JkoPay
  module Response
    module Pos
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
end