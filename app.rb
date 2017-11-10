require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    Game.create(Game.new(Player.new(params[:player1]), Player.new(params[:player2])))
    redirect '/play'
  end

  get '/play' do
    @player1 = Game.access.player1
    @player2 = Game.access.player2
    @turn = Game.access.attacker
    erb :play
  end

  get '/attack' do
    @defender = Game.access.defender
    Game.access.attack
    Game.access.finish? ? redirect('/gameover') : erb(:attack)
  end

  get '/gameover' do
    @winner = Game.access.attacker.name
    @loser = Game.access.defender.name
    erb :gameover
  end

  run! if app_file == $PROGRAM_NAME
end
