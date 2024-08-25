# frozen_string_literal: true

require 'dry-configurable'

module FastConstants
  class Configuration

    extend Dry::Configurable

    setting :directory
    setting :name

  end
end
