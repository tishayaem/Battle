require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:p1_name])
    $player2 = Player.new(params[:p2_name])
    redirect '/play'
  end

  get '/play' do
    @p1_name = $player1.name
    @p2_name = $player2.name
    @p1_hp = $player1.hit_points
    @p2_hp = $player2.hit_points
    erb :play
  end

  get '/attack' do
    @player1 = $player1
    @player2 = $player2
    Game.new.attack(@player2)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
