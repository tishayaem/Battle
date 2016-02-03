require 'sinatra/base'
#the above loads the sinatra lib.
#the below enables class Battle to load sinatra into the class and therefore
#use 'get' and 'post' etc.
class Battle < Sinatra::Base

  enable :sessions
  #above creates hash

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:name1] = params[:name1]
    session[:name2] = params[:name2]
    redirect '/play'
  end

  get '/play' do
    @name1 = session[:name1]
    @name2 = session[:name2]
    erb(:play)
  end

  get '/attack' do
    @name1 = session[:name1]
    @name2 = session[:name2]
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
