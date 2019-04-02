require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :new
    end

    post '/teams' do

      @team = Team.new(params[:team])
    
      params[:team][:members].each do |hero|
        Member.new(hero)
      end
      @members = Member.all

      erb :team
    end


end
