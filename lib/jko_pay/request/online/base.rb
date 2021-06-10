# frozen_string_literal: true
require 'net/https'
require 'json'
require 'digest'

require 'jko_pay/request/base'

module JkoPay
  module Request
    module Online
      class Base < ::JkoPay::Request::Base
        HOST = 'https://uat-onlinepay.jkopay.app/platform'

        def store_id= store_id
          @store_id = store_id.to_s
        end

        def platform_order_id= platform_order_id
          @platform_order_id = platform_order_id.to_s
        end

        def request
          res = send_request request_action
          response_klass.new(JSON.parse(res.body), res)
        end

        private

        def to_hash
          hash = {
            platform_order_id: @platform_order_id,
          }
          hash
        end

        def request_host
          HOST
        end

        def request_action
          raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
        end

        def response_klass
          raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
        end

        def send_request path
          uri = URI("#{request_host}/#{path}")
          req = Net::HTTP::Post.new(uri)
          req['Content-Type'] = 'application/json'
          req['X-API-KEY'] = @config.merchant_key
          params = {
            store_id: @config.merchant_id,
            **to_hash,
          }
          req['DIGEST'] = sign_params params
          req.body = JSON.dump(params)
          Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) { |http|
            http.request(req)
          }
        end

        def sign_params params
          OpenSSL::HMAC.hexdigest("SHA256", @config.merchant_secret, JSON.dump(params))
        end

      end
    end
  end
end