require_relative 'validators/numericality_validator'
require_relative 'validators/presence_validator'
class BaseClass
  include Validators::PresenceValidator
  include Validators::NumericalityValidator

  def self.validations
    @validations ||= []
  end

  def validations
    self.class.validations
  end

  def errors
    @errors ||= []
  end

  def valid?
    validations.each do |type, attribute|
      validate(type, attribute)
    end
    errors.empty?
  end

  private

  def validate(type, attr)
    send("validate_#{type}", attr)
  end
end
