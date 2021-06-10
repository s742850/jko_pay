require 'jko_pay/request/pos/pay'
require 'jko_pay/response/pos/cancel'

module JkoPay
  module Request
    module Pos
      class Cancel < Pay

        private

        def request_action
          'Cancel'
        end

        def response_klass
          Response::Pos::Cancel
        end

      end
    end
  end
end