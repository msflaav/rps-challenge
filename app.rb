require 'sinatra/base'

class Game < Sinatra::Base

get '/' do
    erb :form
  end

post '/game' do
  p params
  @name = params[:name]
  erb :index
end

get '/game' do
  erb :index
end

post '/step2' do
  p params
  @choice = params[:choice]
  @choice2 =["paper", "rock", "scissors"].sample
   erb :step
end

# get '/win' do
#   if (@choice = "rock") && (@choice2 ="scissors")
#     puts "Player 1 wins"
#   end
# end

# get '/step2' do
#   erb :step
# end

# get '/winner' do
#
#   erb :step2
#   # if @choice == "rock" and @choice2 == "scissors"
#   #      puts "Player 1 wins"
#   #    end
# end

# get '/winner' do
#
#     if @choice == "scissors" and @choice2 == "paper"
#       puts 'Player 1 wins'
#       if @choice == "paper" and @choice2 == "rock"
#       else

end
