# frozen_string_literal: true

require 'm2y_tecban/configuration/configuration'
require 'm2y_tecban/constants/constants'
require 'm2y_tecban/modules/base'
require 'm2y_tecban/modules/openbanking'

require_relative "m2y_tecban/version"

module M2yTecban
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    config = configuration
    yield(config)
  end
end
