require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect to('/play')
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_2_health = $player_2.health
    erb :play
  end

  get '/attack' do

    $game.attack($player_2)
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_2_health = $player_2.health
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
