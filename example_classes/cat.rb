require_relative '../base_class'

# Warning: try to not modify this class at all
# To test run: ruby item_test.rb

class Cat < BaseClass
  attr_accessor :lives, :address, :owner_name

  def initialize(attributes = {})
    @lives      = attributes[:lives]
    @address    = attributes[:address]
    @owner_name = attributes[:owner_name]
  end

  validates_presence_of :owner_name
  validates_presence_of :address
  validates_numericality_of :lives
end
