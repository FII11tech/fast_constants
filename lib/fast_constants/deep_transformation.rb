# frozen_string_literal: true

module FastConstants
  class DeepTransformation < OpenStruct # rubocop:disable Style/OpenStructUse

    def initialize(hash)
      super
      @table = {}
      @stable = {}

      hash.each do |key, value|
        @table[key.to_sym] = value.is_a?(Hash) ? self.class.new(value) : value
        @stable[key.to_sym] = value

        new_ostruct_member!(key)
      end
    end

    def to_hash
      @stable
    end

  end
end
