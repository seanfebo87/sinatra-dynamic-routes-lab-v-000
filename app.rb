require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do 
    @reverse = params[:name].reverse 
    "#{@reverse}"
  end
  
  get "/square/:number" do 
    @answer = params[:number].to_i * params[:number].to_i
    "#{@answer}"
  end
  
  get "/say/:number/:phrase" do 
    @phrase = ""
    @number = params[:number].to_i.times do 
      @phrase += params[:phrase]
    end
    "#{@phrase}"
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}"
  end
  
end