module JkoPay
  module Response
    class Base
      attr_reader :raw

      def initialize(params, raw = nil)
        @raw = raw
        params.each_pair do |key, value|
          instance_variable_set("@#{key}", value)
        end
      end

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