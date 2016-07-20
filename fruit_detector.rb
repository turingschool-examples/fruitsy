class FruitDetector
  attr_reader :fruit

  def initialize(fruit)
    @fruit = fruit
  end

  def detect
    if fruit.round?
      if fruit.color == 'red'
        'apple'
      elsif fruit.color == 'orange'
        'orange'
      end
    else
      if fruit.large?
        if fruit.color == 'green'
          if fruit.tasty?
            'watermelon'
          else
            'honeydew'
          end
        else
          'cantelope'
        end
      else
        'grapes'
      end
    end
  end
end
