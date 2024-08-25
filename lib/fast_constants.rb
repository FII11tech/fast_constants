# frozen_string_literal: true

require 'ostruct'
require 'yaml'
require 'fast_constants/version'
require 'fast_constants/deep_transformation'
require 'fast_constants/configuration'
require 'fast_constants/container'

module FastConstants
  class << self

    def configuration(&)
      Configuration.configure(&)

      Container.load_and_set!
    end

  end
end
