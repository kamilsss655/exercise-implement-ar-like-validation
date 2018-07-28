require_relative 'cat'
require 'minitest/autorun'

# Remark: do not modify this test
class CatTest < Minitest::Test
  def setup
    @cat1 = Cat.new(address: 'Napoli')
    @cat2 = Cat.new(lives: 'many')
    @cat3 = Cat.new
    @cat4 = Cat.new(owner_name: 'Thomas', lives: 12)
    @cat5 = Cat.new(owner_name: 'Thomas', lives: 12, address: 'Gdynia')
  end

  def test_that_cat_is_validated_for_presence_and_numerically
    assert !@cat1.valid?
    assert @cat1.errors == ["owner_name can't be blank", 'lives must be number']
  end

  def test_that_cat_is_validated_for_presence_and_numerically_2
    assert !@cat2.valid?
    assert @cat2.errors == [
      "owner_name can't be blank",
      "address can't be blank",
      'lives must be number'
    ]
  end

  def test_that_cat_is_validated_for_presence_and_numerically_3
    assert !@cat3.valid?
    assert @cat3.errors == [
      "owner_name can't be blank",
      "address can't be blank",
      'lives must be number'
    ]
  end

  def test_that_cat_is_validated_for_presence
    assert !@cat4.valid?
    assert @cat4.errors == ["address can't be blank"]
  end

  def test_that_cat_is_valid
    assert @cat5.valid?
  end
end
