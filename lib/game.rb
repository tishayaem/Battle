class Game

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack_player_1
    @player_1.receive_damage
  end

  def attack_player_2
    @player_2.receive_damage
  end

  def name_player_1
    @player_1.name
  end

  def name_player_2
    @player_2.name
  end

  def health_player_1
    @player_1.health
  end

  def health_player_2
    @player_2.health
  end


end
