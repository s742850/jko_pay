require 'jko_pay/request/online/base'
require 'jko_pay/response/online/pay'

module JkoPay
  module Request
    module Online
      class Pay < Base

        def amount= amount
          @amount = amount.to_i
        end

        def result_url= result_url
          @result_url = result_url&.to_s
        end

        def result_display_url= result_display_url
          @result_display_url = result_display_url&.to_s
        end

        private

        def to_hash
          hash = super
          hash[:currency] = "TWD"
          hash[:total_price] = @amount
          hash[:final_price] = @amount
          hash[:result_display_url] = @result_display_url if @result_display_url
          hash[:result_url] = @result_url if @result_url
          hash
        end

        def request_action
          'entry'
        end

        def response_klass
          Response::Online::Pay
        end

      end
    end
  end
end