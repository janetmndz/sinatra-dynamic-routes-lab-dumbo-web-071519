require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
  @name = params[:name]
  @reverse = @name.split("").reverse.join("")
  "#{@reverse}"
  end
  
  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number**2}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    string = []
    @num.times do
      string << "#{@num} #{@phrase}"
    end
    "#{string.join("")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    case @operation
      when "add"
        "#{@number1 + @number2}"
      when "subtract"
        "#{@number2 - @number1}"
      when "multiply"
        "#{@number1 * @number2}"
      when "divide"
        "#{@number1 / @number2}"
    end
    
  end


end