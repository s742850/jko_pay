# frozen_string_literal: true
require 'jko_pay/response/base'

module JkoPay
  module Response
    module Online
      class Base < ::JkoPay::Response::Base

        def success?
          status == '000'
        end

        def status
          @result
        end

        def message
          @message
        end

        def result_object
          @result_object || {}
        end

      end
    end
  end
end