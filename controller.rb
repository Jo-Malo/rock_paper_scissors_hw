require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/game')

get '/game/:player1/:player2' do
  game = Game.new( params[:player1], params[:player2])
  @game_result = game.rock_paper_scissors()
  erb( :result)
end
