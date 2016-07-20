require 'minitest/autorun'
require 'minitest/pride'

require './fruit'
require './fruit_detector'

class FruitDetectorTest < Minitest::Test
  def test_it_detects_an_apple
    fruit  = Fruit.new(color: 'red', large: false, round: true, tasty: true)
    result = FruitDetector.new(fruit).detect

    assert_equal 'apple', result
  end

  def test_it_detects_an_orange
    fruit  = Fruit.new(color: 'orange', large: false, round: true, tasty: true)
    result = FruitDetector.new(fruit).detect

    assert_equal 'orange', result
  end

  def test_it_detects_a_watermelon
    fruit  = Fruit.new(color: 'green', large: true, round: false, tasty: true)
    result = FruitDetector.new(fruit).detect

    assert_equal 'watermelon', result
  end

  def test_it_detects_a_honeydew
    fruit  = Fruit.new(color: 'green', large: true, round: false, tasty: false)
    result = FruitDetector.new(fruit).detect

    assert_equal 'honeydew', result
  end

  def test_it_detects_a_cantelope
    fruit  = Fruit.new(color: 'orange', large: true, round: false, tasty: true)
    result = FruitDetector.new(fruit).detect

    assert_equal 'cantelope', result
  end

  def test_it_detects_grapes
    fruit  = Fruit.new(color: 'purple', large: false, round: false, tasty: true)
    result = FruitDetector.new(fruit).detect

    assert_equal 'grapes', result
  end
end
