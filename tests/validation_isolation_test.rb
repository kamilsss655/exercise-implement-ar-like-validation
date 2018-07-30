require_relative '../example_classes/cat'
require_relative '../example_classes/item'
require 'minitest/autorun'

# Remark: do not modify this test
class ValidationIsolationTest < Minitest::Test
  def setup
    @item = Item.new(price: 55)
    @cat = Cat.new(lives: 'many')
  end

  def test_that_validation_rulesets_are_isolated_between_classes
    assert !@item.valid?
    assert @item.errors == ["name can't be blank"]
    assert !@cat.valid?
    assert @cat.errors == [
      "owner_name can't be blank",
      "address can't be blank",
      'lives must be number'
    ]
    assert @item.errors != @cat.errors
  end
end
