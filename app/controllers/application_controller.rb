require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


   get '/' do
     erb :super_hero
   end

   post '/teams' do
   @teamname = params[:team][:name]
   @teammotto= params[:team][:motto]
   @hero1name= params[:team][:member][0][:name]
   @hero1power= params[:team][:member][0][:power]
   @hero1bio = params[:team][:member][0][:bio]
   @hero2name= params[:team][:member][1][:name]
   @hero2power= params[:team][:member][1][:power]
   @hero2bio = params[:team][:member][1][:bio]
   @hero3name= params[:team][:member][2][:name]
   @hero3power= params[:team][:member][2][:power]
   @hero3bio = params[:team][:member][2][:bio]


    erb :team



   end

end
