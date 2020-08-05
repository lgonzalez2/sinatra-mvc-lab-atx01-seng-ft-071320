require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
    get '/' do 
        erb :user_input
    end 

    post '/piglatinize' do 
        @word = PigLatinizer.new
        @piglatinized_phrase = @word.piglatinize(params[:user_phrase])

        erb :last_response
    end 
end