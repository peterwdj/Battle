require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player1_hp = $player1.hitpoints
    @player2_hp = $player2.hitpoints
    erb :play
  end

  get '/attack' do
    @player1 = $player2.name
    @player2 = $player2.name
    $player1.attack $player2
    erb :attack
  end

  run! if app_file == $PROGRAM_NAME
end
