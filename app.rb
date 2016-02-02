require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:Player1])
    $player2 = Player.new(params[:Player2])
    redirect '/play'
  end

  get '/play' do

    @player1 = $player1.name
    @player2 = $player2.name
    erb :play
  end

  post '/attack' do
erb :attack
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
