require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:name_1] = params[:player1_name]
    session[:name_2] = params[:player2_name]
    redirect to('/play')
  end

  get '/play' do
    @player1_HP = 100
    @player2_HP = 100
    @player1_name = session[:name_1]
    @player2_name = session[:name_2]
    erb :play
  end

  run! if app_file == $0
end
