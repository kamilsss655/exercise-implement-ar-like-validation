# TASK: Implement this class to make tests pass
class BaseClass
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

  def self.validates_presence_of(attribute)
    validations << [:presence_of, attribute]
  end

  def self.validates_numericality_of(attribute)
    validations << [:numericality_of, attribute]
  end

  private

  def validate(type, attr)
    case type
    when :numericality_of
      validate_numericality_of(attr)
    when :presence_of
      validate_presence_of(attr)
    end
  end

  def validate_presence_of(attr)
    errors << "#{attr} can't be blank" if send(attr).nil?
  end

  def validate_numericality_of(attr)
    errors << "#{attr} must be number" unless send(attr).is_a?(Integer)
  end
end
