require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/rock_paper_scissors')
also_reload('./models/*')

get '/' do
  erb( :home )
end


get '/:player1/:player2' do
  game = Game.new(params[:player1], params[:player2])
  @result = game.round
  erb( :result )
end
