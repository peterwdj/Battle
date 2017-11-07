require 'sinatra/base'

enable :sessions

class Battle < Sinatra::Base
  get '/' do
    "Testing infrastructure working!"
    erb :index
  end

  post '/names' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    session['player1'] = @player1
    session['player2'] = @player2
    erb :play
  end

  run! if app_file == $0
end
