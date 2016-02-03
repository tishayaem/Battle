class Game

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @route = true
  end

  def switch
    @route ^= true
  end
 def chosen_name
  return @player_1.name if @route == true
  return @player_2.name if @route == false
 end

 def chosen_damage
  return @player_1.receive_damage if @route == false
  return @player_2.receive_damage if @route == true
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
