module JkoPay
  class Config

    attr_accessor :merchant_id
    attr_accessor :merchant_key
    attr_accessor :merchant_secret
    attr_accessor :mode

    def initialize
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