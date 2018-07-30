# TASK: Implement this class to make tests pass
module Presence

  def self.validates_presence_of(attribute)
    validations << [:presence_of, attribute]
  end

  private

  def validate_presence_of(attr)
    errors << "#{attr} can't be blank" if send(attr).nil?
  end
end
