class Bear
  attr_reader :name, :type
  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def fish_eaten
    return @stomach.count()
  end

  def eats_a_fish(fish_to_eat)
    @stomach.push(fish_to_eat)
  end

end
