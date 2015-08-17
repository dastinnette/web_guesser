require 'sinatra'
require 'sinatra/reloader'

  NUM = rand(100)

  def check_guess(guess)
    if guess.to_i > NUM
      "Too high!"
    end
  end

  get '/' do
    guess   = params["guess"]
    message = check_guess(guess)
    erb :index, :locals => {:number => NUM, :message => message}
  end
