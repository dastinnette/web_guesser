require 'sinatra'
require 'sinatra/reloader'

  SECRET_NUM = rand(100)

  def check_guess(guess)
    if guess == SECRET_NUM
      "You got it right! The SECRET NUMBER is #{SECRET_NUM}"
    elsif (guess - 5) > SECRET_NUM
      "Way too high!"
    elsif (guess + 5) < SECRET_NUM
      "Way too low!"
    elsif guess > SECRET_NUM
      "Too high!"
    elsif guess < SECRET_NUM
      "Too low!"
    end
  end

  get '/' do
    guess   = params["guess"].to_i
    message = check_guess(guess)
    erb :index, :locals => {:number => SECRET_NUM, :message => message}
  end
