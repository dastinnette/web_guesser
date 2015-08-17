require 'sinatra'
require 'sinatra/reloader'

  NUM = rand(100)

  def check_guess(guess)
    if guess == NUM
      "You got it right! The SECRET NUMBER is #{NUM}"
    elsif guess > NUM
      "Too high!"
    elsif guess < NUM
      "Too low!"
    end
  end

  get '/' do
    guess   = params["guess"].to_i
    message = check_guess(guess)
    erb :index, :locals => {:number => NUM, :message => message}
  end
