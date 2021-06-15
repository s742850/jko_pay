require 'jko_pay/request/pos/base'
require 'jko_pay/response/pos/inquiry'

module JkoPay
  module Request
    module Pos
      class Inquiry < Base

        def inquiry_type= inquiry_type
          @inquiry_type = inquiry_type
        end

        def query_type
          return "P" unless @inquiry_type
          @inquiry_type.to_s.upcase.start_with?("P") ? "P" : "R"
        end

        private

        def to_hash
          hash = super
          hash[:InquiryType] = query_type
          hash.delete :StoreName
          hash
        end

        def request_action
          'Inquiry'
        end

        def response_klass
          Response::Pos::Inquiry
        end

      end
    end
  end
end