# frozen_string_literal: true
require 'jko_pay/response/base'

module JkoPay
  module Response
    module Pos
      class Base < ::JkoPay::Response::Base

        def success?
          status == '000'
        end

        def merchant_id
          @MerchantID
        end

        def store_id
          @StoreID
        end

        def merchant_trade_number
          @MerchantTradeNo
        end

        def pos_id
          @PosID
        end

        def status
          @StatusCode
        end

        def message
          @StatusDesc
        end

        def extra_info1
          @Extra1
        end

        def extra_info2
          @Extra2
        end

        def credit_card_info
          @Extra3
        end

        def note
          @Remark
        end

      end
    end
  end
end