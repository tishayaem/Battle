class Game

  attr_reader :player_1, :player_2

  def initialize(p1, p2)
    @player_1 = p1
    @player_2 = p2
  end

  def attack(opponent)
    opponent.receive_damage
  end

  def player_1_name
    @player_1.name
  end

  def player_2_name
    @player_2.name
  end

  def player_1_hp
    @player_1.hit_points
  end

  def player_2_hp
    @player_2.hit_points
  end
end
