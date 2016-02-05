class Player
  DEFAULT_HIT_POINTS = 30
  attr_reader :name, :hit_points

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name       = name
    @hit_points = hit_points
  end

  def attack(player2)
    player2.receive_damage
  end

  def receive_damage
    @hit_points -= rand(10..20)
  end
end
