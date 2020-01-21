class River
  def initialize(name)
    @name = name
    @fish = []
  end

  def num_of_fish()
    return @fish.flatten().count()
  end

  def add_fish(fish)
    @fish.push(fish)
  end

  def  remove_eaten_fish(fish)
    return @fish.delete(fish)
  end


end
