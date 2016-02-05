require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:p1_name])
    player2 = Player.new(params[:p2_name])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    # HACK
    @game = $game
    redirect '/game_over' if @game.opponent_player.hit_points <= 0
    @game.switch_turn
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opponent_player)
    erb :attack
  end

  get '/game_over' do
    @game = $game
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
