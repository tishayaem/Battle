class Game
  FIRST_PLAYER = 2
  attr_reader :current_player_number

  def initialize(player_1, player_2)
    @players               = [player_1, player_2]
    @current_player_number = FIRST_PLAYER
  end

  def player(number)
    message = 'Please specify a valid player number'
    raise message if !number.is_a?(Numeric)
    raise message if (number > players.size || number <= 0 )
    players[number - 1]
  end

  def current_player
    player(current_player_number)
  end

  def opponent_player
    players.reject { |player| player == player(current_player_number) }.first
  end

  def attack(opponent)
    opponent.receive_damage
  end

  def switch_turn
    @current_player_number = current_player_number % 2 + 1
  end

  private
  attr_reader :players
end
