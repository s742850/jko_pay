require 'jko_pay/request/pay'
require 'jko_pay/response/cancel'

module JkoPay
  module Request
    class Cancel < Pay

      private

      def request_action
        'Cancel'
      end

      def response_klass
        Response::Cancel
      end

    end
  end
end