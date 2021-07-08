require 'jko_pay/response/pos/base'

module JkoPay
  module Response
    module Pos
      class Pay < Base

        attr_accessor :transaction_id

        def gateway_trade_number
          @GateWayTradeNo
        end

        def trade_number
          @TradeNo
        end

        def trade_time
          @TradeTime
        end

        def is_trade_repeat?
          @IsRep == "1"
        end

        def action_code
          @ActionCode
        end

        def payment_type
          @PaymentType
        end

        def amount
          @TradeAmount
        end

        def debit_amount
          @DebitAmount
        end

        def is_redeem?
          redeem_name && redeem_name != ""
        end

        def is_credit_card_payment?
          payment_type == 4
        end

        def redeem_name
          @RedeemName
        end

        def redeem_amount
          @RedeemAmount
        end

        def store_redeem_amount
          @StoreRedeemAmount
        end

        def available_amount
          @AvailableAmount
        end

        def carrier
          @InvoiceVehicle
        end

        def member_token
          @MerMemToken
        end

      end
    end
  end
end