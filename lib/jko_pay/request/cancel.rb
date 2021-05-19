require 'tappay/request/pay'
require 'tappay/response/cancel'

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