require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
  end

  get '/square/:number' do
    @x = params[:number].to_i
    "#{@x**2}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} " + "#{@word2} " + "#{@word3} " + "#{@word4} " + "#{@word5}."
  end
  
  get '/:operational/:number1/:number2' do
    @math = params[:operational]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @math == 'add'
      (@num1 + @num2).to_s
    elsif @math == 'subtract'
      (@num1 - @num2).to_s
    elsif @math == 'multiply'
      (@num1 * @num2).to_s
    else
      (@num1 / @num2).to_s
    end
  
  end

end