require 'jko_pay/request/online/base'
require 'jko_pay/response/online/Refund'

module JkoPay
  module Request
    module Online
      class Refund < Base

        def amount= amount
          @amount = amount.to_i
        end

        private

        def to_hash
          hash = super
          hash[:refund_amount] = @amount
          hash
        end

        def request_action
          'refund'
        end

        def response_klass
          Response::Online::Refund
        end

      end
    end
  end
end