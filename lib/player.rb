class Player
  STARTING_HEALTH = 100
  attr_reader :name, :health

  def initialize(name)
    @name = name
    @health = STARTING_HEALTH
  end

  def receive_damage
    @health -= 10
  end

end
