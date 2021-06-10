require 'jko_pay/response/Online/base'

module JkoPay
  module Response
    module Online
      class Refund < Base

        def refund_trade_number
          result_object.dig "refund_tradeNo"
        end

        def debit_amount
          result_object.dig "debit_amount"
        end

        def redeem_amount
          result_object.dig "redeem_amount"
        end

        def redeem_detail
          result_object.dig "redeem_detail"
        end

        def refund_time
          result_object.dig "refund_time"
        end

      end
    end
  end
end