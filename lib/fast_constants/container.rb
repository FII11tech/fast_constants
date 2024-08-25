# frozen_string_literal: true

require 'fast_constants/deep_transformation'

module FastConstants
  class Container

    class << self

      def load_and_set!
        if Kernel.const_defined?(Configuration.config.name)
          Kernel.send(:remove_const,
                      Configuration.config.name)
        end

        Kernel.const_set(Configuration.config.name, load)
      end

      def load
        data = Dir.glob(Configuration.config.directory).reduce({}) do |hash, file|
          hash.merge(YAML.unsafe_load(File.open(file)))
        end

        DeepTransformation.new(data)
      end

    end

  end
end
