require 'jko_pay/response/online/base'

module JkoPay
  module Response
    module Online
      class Pay < Base

        def payment_url
          result_object.dig "payment_url"
        end

        def qr_img
          result_object.dig "qr_img"
        end

        def qr_timeout
          result_object.dig "qr_timeout"
        end

      end
    end
  end
end