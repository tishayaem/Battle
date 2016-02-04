class Game

  attr_reader

  def initialize(p1, p2)
    @players = [p1, p2]
  end

  def player(number)
    message = 'Please specify a valid player number'
    raise message if !number.is_a?(Numeric)
    raise message if (number > players.size || number <= 0 )
    players[number - 1]
  end

  def attack(opponent)
    opponent.receive_damage
  end

  # current_player

  private
  attr_reader :players
end
