require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]

    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number]
    @sqnum = @num.to_i ** 2
    "#{@sqnum.to_s}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @num = params[:number]

    "#{@phrase * @num.to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1, @word2, @word3, @word4, @word5 = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5] 

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation].downcase
    @num1 = params[:number1]
    @num2 = params[:number2]

    if @op == "add"
      "#{@num1.to_i + @num2.to_i}"
    elsif @op == "subtract"
      "#{@num1.to_i - @num2.to_i}"
    elsif @op == "multiply"
      "#{@num1.to_i * @num2.to_i}"
    elsif @op == "divide"
      "#{@num1.to_i / @num2.to_i}"
    end
  end

end