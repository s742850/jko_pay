module JkoPay
  class Config

    attr_accessor :api_host
    attr_accessor :merchant_id
    attr_accessor :merchant_key
    attr_accessor :merchant_secret
    attr_accessor :mode

    def initialize
      @api_host = nil
      @merchant_id = nil
      @merchant_key = nil
      @merchant_secret = nil
      @mode = :sandbox
    end

    def production?
      @mode == :production
    end

  end
end