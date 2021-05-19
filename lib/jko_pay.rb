# frozen_string_literal: true
require "jko_pay/version"
require "jko_pay/config"

require "jko_pay/request"
require "jko_pay/response"

module JkoPay
  class Error < StandardError; end

  def self.configure
    yield config
  end

  def self.config
    @config ||= Config.new
  end
end
