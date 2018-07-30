module Validators
  module PresenceValidator

    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def validates_presence_of(attribute)
        validations << [:presence_of, attribute]
      end
    end

    private

    def validate_presence_of(attr)
      errors << "#{attr} can't be blank" if send(attr).nil?
    end
  end
end
