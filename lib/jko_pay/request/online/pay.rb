require 'jko_pay/request/online/base'
require 'jko_pay/response/online/pay'

module JkoPay
  module Request
    module Online
      class Pay < Base

        def card_token= token
          @card_token = token
        end

        def amount= amount
          @amount = amount.to_i
        end

        def confirm_url= confirm_url
          @confirm_url = confirm_url.to_s
        end


        private

        def to_hash
          hash = super
          hash[:currency] = "TWD"
          hash[:total_price] = @amount
          hash[:final_price] = @amount
          hash[:result_display_url] = @confirm_url
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