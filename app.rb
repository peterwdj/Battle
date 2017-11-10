require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player1]), Player.new(params[:player2]))
    redirect '/play'
  end

  get '/play' do
    @player1 = $game.player1
    @player2 = $game.player2
    erb :play
  end

  get '/attack' do
    @player1 = $game.player1
    @player2 = $game.player2
    $game.attack(@player1, @player2)
    erb :attack
  end

  run! if app_file == $PROGRAM_NAME
end
