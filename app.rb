require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    session[:player1_HP] = 100
    session[:player2_HP] = 100
    erb(:index)
  end

  post '/names' do
    session[:name_1] = params[:player1_name]
    session[:name_2] = params[:player2_name]
    redirect to('/play')
  end

  get '/play' do
    @player1_HP = session[:player1_HP]
    @player2_HP = session[:player2_HP]
    @player1_name = session[:name_1]
    @player2_name = session[:name_2]
    erb :play
  end

  post '/attack_player2' do
    session[:player2_HP] -= 20
    redirect to('/play')
  end

  run! if app_file == $0
end
