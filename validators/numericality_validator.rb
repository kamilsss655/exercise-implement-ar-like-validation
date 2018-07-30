module Validators
  module NumericalityValidator

    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def validates_numericality_of(attribute)
        validations << [:numericality_of, attribute]
      end
    end

    private

    def validate_numericality_of(attr)
      errors << "#{attr} must be number" unless send(attr).is_a?(Integer)
    end
  end
end
