require_relative 'item'
require 'minitest/autorun'

# Remark: do not modify this test
class ItemTest < Minitest::Test
  def setup
    @item1 = Item.new(name: 'Guitar')
    @item2 = Item.new(price: 55)
    @item3 = Item.new
    @item4 = Item.new(name: 'Guitar', price: 'ABC')
    @item5 = Item.new(name: 'Guitar', price: 55)
  end

  def test_that_price_is_validated_numerically
    assert !@item1.valid?
    assert @item1.errors == ['price must be number']
  end

  def test_that_name_is_validated_for_presence
    assert !@item2.valid?
    assert @item2.errors == ["name can't be blank"]
  end

  def test_that_item_is_validated_for_presence_and_numerically
    assert !@item3.valid?
    assert @item3.errors == ["name can't be blank", 'price must be number']
  end

  def test_that_price_is_validated_numerically_2
    assert !@item4.valid?
    assert @item4.errors == ['price must be number']
  end

  def test_that_item_is_valid
    assert @item5.valid?
  end
end
