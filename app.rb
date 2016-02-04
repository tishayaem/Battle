require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @player1 = Player.new(params[:p1_name])
    @player2 = Player.new(params[:p2_name])
    $game = Game.new(@player1, @player2)
    redirect '/play'
  end

  get '/play' do
    @p1_name = $game.player_1.name
    @p2_name = $game.player_2.name
    @p1_hp = $game.player_1.hit_points
    @p2_hp = $game.player_2.hit_points
    erb :play
  end

  get '/attack' do
    @player1 = $game.player_1
    @player2 = $game.player_2
    $game.attack(@player2)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
