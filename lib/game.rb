class Game

  attr_reader :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = 1
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

  def opponent
    players.reject { |player| player == player(current_turn) }.first
  end

  private
  attr_reader :players
end
