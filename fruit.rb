class Fruit
  attr_reader :color,
              :large,
              :round,
              :tasty

  def initialize(color:, large:, round:, tasty:)
    @color = color
    @large = large
    @round = round
    @tasty = tasty
  end

  def round?
    round
  end

  def large?
    large
  end

  def tasty?
    tasty
  end
end
